    local username = game:GetService("Players").LocalPlayer.Name
    local userid = game:GetService("Players").LocalPlayer.UserId
    local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png"
    
    function abb(Value)
        local Number
        local Formatted = Value
        while true do
            Formatted, Number = string.gsub(Formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
            if (Number == 0) then
                break
            end
        end
        return Formatted
    end
        
    local Headers = {["content-type"] = "application/json"}
    local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller
    
    Chat.ChildAdded:Connect(function(instance)
            if string.find(instance.TextLabel.Text,_G.Username) then
                if string.find(instance.TextLabel.Text,"just") then
                    if string.find(instance.TextLabel.Text,"hatched") then
                        if string.find(instance.TextLabel.Text,"a") then

                local plr = game.Players.LocalPlayer
                local OnlyCount = {plr.Name}
                local count = 0
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    for n,b in pairs(OnlyCount) do
                        if string.find(v.Name, b) then
                            count = v.Stats["Eggs"].Value    
                        end
                    end
                end
                local OSTime = os.time()
                local Webhook = _G.Webhook
                local Time = os.date('!*t', OSTime)
                local TextColor3 = instance.TextLabel.TextColor3
                local RGB = {TextColor3.R*255,TextColor3.G*255,TextColor3.B*255}
                local Hex = tonumber(rgbToHex({RGB[1],RGB[2],RGB[3]}))
                local Hatchping
                local WebhookImage
               
               
                if string.find(instance.TextLabel.Text,"Mystic Autumn Dragon") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015906084201955348/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Mystic Autumn Guardian") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015906512704655360/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Autumn Champion") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015906737896837121/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Mystic Autumn Champion") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907181033435176/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Maple Master") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907053274935358/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Mystic Maple Master") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907220736708628/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Regal Pumpkin") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907448885891102/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Mystic Regal Pumpkin") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907530637054032/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Autumnal Sycamore") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907577575518208/unknown.png"
                
                elseif string.find(instance.TextLabel.Text,"Mystic Autumnal Sycamore") then
                    WebhookImage = "https://cdn.discordapp.com/attachments/960502448705925150/1015907577575518208/unknown.png"
                -- Other pet images you want to add will go here, make sure its indented like the two above (Its case sensitive)
                end     
               
                if string.find(instance.TextLabel.Text,"Mystic Autumn Champion") or string.find(instance.TextLabel.Text,"Mystic Maple Master") or string.find(instance.TextLabel.Text,"Regal Pumpkin") or string.find(instance.TextLabel.Text,"Mystic Regal Pumpkin") or string.find(instance.TextLabel.Text,"Autumnal Sycamore") or string.find(instance.TextLabel.Text,"Mystic Autumnal Sycamore")  then
                    Hatchping = _G.hatchping
                else
                    Hatchping = ""
                end
                local Info = {
                    ["content"] = Hatchping,
                    ["embeds"] = {
                    {
                            ["title"] = instance.TextLabel.Text,
                    ["author"] = {
                            ["name"] = username,
                            ["url"] = "https://www.roblox.com/users/".. userid .."/profile",
                            ["icon_url"] = icon,
                    },
                    ["thumbnail"] = {
                        ["url"] = WebhookImage
                    },
                    ["footer"] = {
                        ["text"] = username .. "'s Egg Count: " .. abb(count),
                    },
                    ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                    ["color"] = Hex,
                    ["fields"] = {}},}}
                    local Info = game:GetService("HttpService"):JSONEncode(Info)
                                local HttpRequest = http_request;
                                if syn then HttpRequest = syn.request else HttpRequest = http_request end
                                    HttpRequest({Url=Webhook, Body=Info, Method="POST", Headers=Headers})
                end
            end
        end)
