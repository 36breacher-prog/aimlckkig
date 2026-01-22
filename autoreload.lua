--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer

local AutoReloadSystem = {
    ReloadCooldown = 0.08,
    LastReloadTimestamp = 0,
    LastManualReload = 0,
    ManualReloadWindow = 0.5,
    CurrentWeapon = nil,
    ActiveConnections = {},
    MonitoredValues = {},
    IsRunning = true,
    PreviousAmmoStates = {},
    IgnoreNextReload = false
}

local function ExecuteReload()
    local currentTime = tick()
    
    if currentTime - AutoReloadSystem.LastManualReload < AutoReloadSystem.ManualReloadWindow then
        return false
    end
    
    if AutoReloadSystem.IgnoreNextReload then
        AutoReloadSystem.IgnoreNextReload = false
        return false
    end
    
    if currentTime - AutoReloadSystem.LastReloadTimestamp < AutoReloadSystem.ReloadCooldown then
        return false
    end
    
    AutoReloadSystem.LastReloadTimestamp = currentTime
    
    task.spawn(function()
        local success = pcall(function()
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.R, false, game)
            task.wait(0.01)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.R, false, game)
        end)
        
        if not success then
            warn("[AutoReload] Reload execution failed")
        end
    end)
    
    return true
end

local function SetupManualReloadDetection()
    local inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.R then
            AutoReloadSystem.LastManualReload = tick()
            AutoReloadSystem.IgnoreNextReload = true
            
            task.spawn(function()
                task.wait(0.3)
                AutoReloadSystem.IgnoreNextReload = false
            end)
        end
    end)
    
    table.insert(AutoReloadSystem.ActiveConnections, inputConnection)
end

local function DisconnectAll()
    for _, connection in ipairs(AutoReloadSystem.ActiveConnections) do
        if connection and typeof(connection) == "RBXScriptConnection" and connection.Connected then
            pcall(function()
                connection:Disconnect()
            end)
        end
    end
    AutoReloadSystem.ActiveConnections = {}
    AutoReloadSystem.MonitoredValues = {}
    AutoReloadSystem.PreviousAmmoStates = {}
end

local function MonitorAmmoValue(ammoObject, weaponName)
    if not ammoObject then return end
    if AutoReloadSystem.MonitoredValues[ammoObject] then return end
    
    AutoReloadSystem.MonitoredValues[ammoObject] = true
    AutoReloadSystem.PreviousAmmoStates[ammoObject] = ammoObject.Value
    
    local valueConnection = ammoObject:GetPropertyChangedSignal("Value"):Connect(function()
        task.spawn(function()
            local currentValue = ammoObject.Value
            local previousValue = AutoReloadSystem.PreviousAmmoStates[ammoObject]
            
            if currentValue == 0 and previousValue ~= nil and previousValue > 0 then
                task.wait(0.05)
                ExecuteReload()
            end
            
            AutoReloadSystem.PreviousAmmoStates[ammoObject] = currentValue
        end)
    end)
    
    table.insert(AutoReloadSystem.ActiveConnections, valueConnection)
    
    if ammoObject.Value == 0 then
        task.spawn(function()
            task.wait(0.02)
            ExecuteReload()
        end)
    end
end

local function InitializeWeaponMonitoring(weapon)
    if not weapon or not weapon:IsA("Tool") then return false end
    
    DisconnectAll()
    AutoReloadSystem.CurrentWeapon = weapon
    
    SetupManualReloadDetection()
    
    local ammoObjects = {}
    for _, descendant in ipairs(weapon:GetDescendants()) do
        if descendant:IsA("IntValue") or descendant:IsA("NumberValue") then
            table.insert(ammoObjects, descendant)
        end
    end
    
    for _, ammoObject in ipairs(ammoObjects) do
        MonitorAmmoValue(ammoObject, weapon.Name)
    end
    
    local unequipConnection = weapon.Unequipped:Connect(function()
        task.spawn(function()
            DisconnectAll()
            AutoReloadSystem.CurrentWeapon = nil
        end)
    end)
    
    table.insert(AutoReloadSystem.ActiveConnections, unequipConnection)
    
    return true
end

local function ContinuousAmmoCheck()
    task.spawn(function()
        while AutoReloadSystem.IsRunning do
            task.wait(0.05)
            
            task.spawn(function()
                local character = Player.Character
                if not character then return end
                
                local equippedWeapon = character:FindFirstChildOfClass("Tool")
                
                if equippedWeapon then
                    if equippedWeapon ~= AutoReloadSystem.CurrentWeapon then
                        InitializeWeaponMonitoring(equippedWeapon)
                    end
                    
                    for _, descendant in ipairs(equippedWeapon:GetDescendants()) do
                        if descendant:IsA("IntValue") or descendant:IsA("NumberValue") then
                            local previousValue = AutoReloadSystem.PreviousAmmoStates[descendant]
                            local currentValue = descendant.Value
                            
                            if currentValue == 0 and (previousValue == nil or previousValue > 0) then
                                ExecuteReload()
                                AutoReloadSystem.PreviousAmmoStates[descendant] = 0
                                break
                            elseif currentValue ~= previousValue then
                                AutoReloadSystem.PreviousAmmoStates[descendant] = currentValue
                            end
                        end
                    end
                end
            end)
        end
    end)
end

local function EstablishCharacterMonitoring(character)
    if not character then return end
    
    task.spawn(function()
        character:WaitForChild("Humanoid", 10)
        
        DisconnectAll()
        AutoReloadSystem.CurrentWeapon = nil
        
        SetupManualReloadDetection()
        
        local childAddedConnection = character.ChildAdded:Connect(function(child)
            if child:IsA("Tool") then
                task.spawn(function()
                    task.wait(0.08)
                    InitializeWeaponMonitoring(child)
                end)
            end
        end)
        
        table.insert(AutoReloadSystem.ActiveConnections, childAddedConnection)
        
        local existingWeapon = character:FindFirstChildOfClass("Tool")
        if existingWeapon then
            task.spawn(function()
                task.wait(0.1)
                InitializeWeaponMonitoring(existingWeapon)
            end)
        end
    end)
end

local function StartContinuousMonitoring()
    local lastCheckTime = 0
    local checkInterval = 0.08
    
    local heartbeatConnection = RunService.Heartbeat:Connect(function()
        local currentTime = tick()
        if currentTime - lastCheckTime < checkInterval then return end
        lastCheckTime = currentTime
        
        task.spawn(function()
            local character = Player.Character
            if not character then return end
            
            local equippedWeapon = character:FindFirstChildOfClass("Tool")
            if equippedWeapon and equippedWeapon ~= AutoReloadSystem.CurrentWeapon then
                InitializeWeaponMonitoring(equippedWeapon)
            end
        end)
    end)
    
    table.insert(AutoReloadSystem.ActiveConnections, heartbeatConnection)
end

local function RestartSystem()
    task.spawn(function()
        pcall(function()
            DisconnectAll()
        end)
        
        AutoReloadSystem.IsRunning = true
        
        if Player.Character then
            EstablishCharacterMonitoring(Player.Character)
        end
        
        StartContinuousMonitoring()
        ContinuousAmmoCheck()
    end)
end

local function Initialize()
    task.spawn(function()
        while true do
            task.wait(1)
            
            pcall(function()
                if not AutoReloadSystem.IsRunning then
                    RestartSystem()
                end
                
                local character = Player.Character
                if character then
                    local hasActiveConnections = false
                    for _, connection in ipairs(AutoReloadSystem.ActiveConnections) do
                        if connection and typeof(connection) == "RBXScriptConnection" and connection.Connected then
                            hasActiveConnections = true
                            break
                        end
                    end
                    
                    if not hasActiveConnections then
                        RestartSystem()
                    end
                end
            end)
        end
    end)
    
    local characterAddedConnection = Player.CharacterAdded:Connect(function(character)
        task.wait(0.5)
        EstablishCharacterMonitoring(character)
    end)
    
    table.insert(AutoReloadSystem.ActiveConnections, characterAddedConnection)
    
    SetupManualReloadDetection()
    
    if Player.Character then
        EstablishCharacterMonitoring(Player.Character)
    end
    
    StartContinuousMonitoring()
    ContinuousAmmoCheck()
end

Initialize()

return AutoReloadSystem
