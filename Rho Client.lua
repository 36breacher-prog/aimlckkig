--[[
	WARNING: RHO-36 has hacked this script.
]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RHO-36 CLIENT",
   Icon = 17360965159,
   LoadingTitle = "RHO 36 CLIENT",
   LoadingSubtitle = "Makes you Maikweo v2",
   Theme = "DarkBlue",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "UnnamedShooterConfig",
      FileName = "Settings"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false
})

-- Main Tab
local MainTab = Window:CreateTab(" Home", nil)
local Section = MainTab:CreateSection("Main Features")

Rayfield:Notify({
   Title = "Script Executed!",
   Content = "RHO-36 CLIENT",
   Duration = 6.5,
   Image = nil,
})

-- Infinite Jump
MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            _G.infinJumpStarted = true
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "RHO-36 CLIENT", 
                Text = "Infinite Jump: ENABLED", 
                Duration = 5
            })

            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if _G.infinjump and k:byte() == 32 then
                    local humanoid = plr.Character:FindFirstChildOfClass('Humanoid')
                    if humanoid then
                        humanoid:ChangeState('Jumping')
                        wait()
                        humanoid:ChangeState('Seated')
                    end
                end
            end)
        end
   end,
})

-- ESP (Updated with toggle functionality)
local ESPEnabled = false
local ESPToggle = MainTab:CreateToggle({
   Name = "ESP",
   CurrentValue = false,
   Flag = "esp on",
   Callback = function(Value)
       ESPEnabled = Value
       if Value then
           loadstring(game:HttpGet("https://raw.githubusercontent.com/36breacher-prog/aimlckkig/refs/heads/main/espsir.lua",true))()
           Rayfield:Notify({
               Title = "ESP on",
               Content = "Player highlights activated",
               Duration = 3,
               Image = nil
           })
       else
           -- Remove all ESP highlights
           for _, player in pairs(game:GetService("Players"):GetPlayers()) do
               if player ~= game:GetService("Players").LocalPlayer and player.Character then
                   local highlight = player.Character:FindFirstChildOfClass("Highlight")
                   if highlight then
                       highlight:Destroy()
                   end
               end
           end
           Rayfield:Notify({
               Title = "ESP Disabled",
               Content = "Player highlights removed",
               Duration = 3,
               Image = nil
           })
       end
   end,
})

-- Aimbot
MainTab:CreateToggle({
   Name = "Aimlock [R.Click]",
   CurrentValue = false,
   Flag = "AimbotToggle",
   Callback = function(Value)
        if Value then
            local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/36breacher-prog/aimlckkig/refs/heads/main/Aimbot1.lua"))()
            Aimbot.Load()
        end
   end,
})

-- AutoReload
MainTab:CreateToggle({
   Name = "AutoReload",
   CurrentValue = false,
   Flag = "AutoReload",
   Callback = function(Value)
        if Value then
            local AutoReload = loadstring(game:HttpGet("https://raw.githubusercontent.com/36breacher-prog/aimlckkig/refs/heads/main/autoreload.lua"))()
            AutoReload.Load()
        end
   end,
})

-- Hitbox Expander
MainTab:CreateToggle({
   Name = "Hitbox Expander ",
   CurrentValue = false,
   Flag = "Hitbox",
   Callback = function(Value)
        if Value then
            local Hitbox = loadstring(game:HttpGet("https://raw.githubusercontent.com/36breacher-prog/aimlckkig/refs/heads/main/Hitbox.lua"))()
            Hitbox.Load()
        end
   end,
})

-- Misc Tab
local MiscTab = Window:CreateTab("Misc", nil)
local Section = MiscTab:CreateSection("Utilities")

-- FPS Booster
MiscTab:CreateButton({
    Name = "FPS Booster",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") or v:IsA("Decal") or v:IsA("Smoke") or v:IsA("Fire") then
                v:Destroy()
            end
        end
        
        settings().Rendering.QualityLevel = 3
        game:GetService("Lighting").GlobalShadows = false
        
        Rayfield:Notify({
            Title = "FPS Boost Applied",
            Content = "Graphics optimized for performance",
            Duration = 3,
            Image = nil
        })
    end
})

-- Infinite Yield
MiscTab:CreateButton({
    Name = "Infinite Yield [ADMIN MENU]",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        Rayfield:Notify({
            Title = "Admin Loaded",
            Content = "Press ; to open console",
            Duration = 5,
            Image = nil
        })
    end
})

-- Duality Movement Menu
MiscTab:CreateButton({
    Name = "[CLOSES RHO CLIENT] Duality Movement Menu [KEY: nissan23] ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SecuredProfitss/Duality/refs/heads/main/dokidoki"))()
        Rayfield:Notify({
            Title = "Duality Loaded",
            Content = "KEY: nissan23",
            Duration = 5,
            Image = nil
        })
    end
})

-- FOV Changer
MiscTab:CreateSlider({
    Name = "FOV Changer",
    Range = {70, 120},
    Increment = 1,
    Suffix = "°",
    CurrentValue = 70,
    Flag = "FOVSlider",
    Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = Value
    end
})

-- NoClip System
local NoclipActive = false
local NoclipConnection = nil

local function UpdateNoclip()
    if NoclipActive and game.Players.LocalPlayer.Character then
        for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end

MiscTab:CreateToggle({
    Name = "Wall NoClip",
    CurrentValue = false,
    Flag = "NoClipToggle",
    Callback = function(Value)
        NoclipActive = Value
        
        if NoclipConnection then
            NoclipConnection:Disconnect()
            NoclipConnection = nil
        end
        
        if Value then
            NoclipConnection = game:GetService("RunService").Stepped:Connect(UpdateNoclip)
            Rayfield:Notify({
                Title = "Noclip On",
                Content = "You can now walk through walls",
                Duration = 3,
                Image = nil
            })
        else
            Rayfield:Notify({
                Title = "NoClip Off",
                Content = "Collisions Restored",
                Duration = 3,
                Image = nil
            })
        end
    end
})

-- Handle character respawns
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
    if NoclipActive then
        task.wait(0.5)
        UpdateNoclip()
    end
end)

-- Fullbright
MiscTab:CreateToggle({
    Name = "FullBright",
    CurrentValue = false,
    Flag = "FullbrightToggle",
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
            game.Lighting.FogEnd = 100000
            game.StarterGui:SetCore("SendNotification", {
                Title = "RHO-36 CLIENT",
                Text = "FullBright On",
                Duration = 3
            })
        else
            game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
            game.Lighting.FogEnd = 10000
        end
    end
})

-- Quick Aimbot
MiscTab:CreateButton({
    Name = "Spanish Aimbot [Configurable]",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ALLVESZZ-UNIVERSAL-AIMBOT-V9-89509"))()
        Rayfield:Notify({
            Title = "Aimbot V9 Opened",
            Content = "Button on the right",
            Duration = 5,
            Image = nil
        })
    end
})

-- Test Notification
MiscTab:CreateButton({
    Name = "Test Notif",
    Callback = function()
        Rayfield:Notify({
            Title = "RHO-36 CLIENT",
            Content = "Deathnet injection working!",
            Duration = 6.5,
            Image = nil,
            Actions = {
                Ignore = {
                    Name = "OK",
                    Callback = function()
                        print("Notification acknowledged")
                    end
                },
            }
        })
    end
})








