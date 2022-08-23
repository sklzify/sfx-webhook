game.StarterGui:SetCore("SendNotification",{
	Title = "Webhook Loaded!",
	Text = "re execute if you take an item out\nof the ascender please!",
	Icon = "",
	Duration = 5
})

game.StarterGui:SetCore("SendNotification",{
	Title = "Credits",
	Text = "Made by kly and wrld!",
	Icon = "",
	Duration = 5
})
local SubArrays = {
["ClassArray"] = {"Regular","Nice","Cool","Decent","Strong","Tough","Solid","Powerful","Crazy","Unstoppable","Ethereal","Unimaginable","Outrageous","Limitless","Invincible","Chaotic","Unbeatable","Colossal","Unbreakable","Indomitable","Omnipotent","Vigorous","Ruthless","Mighty","Ferocious","Resilient","Immortal","Undying","Prime","Elite"},
["RarityArray"] = {"Basic","Basic+","Basic++","Common-","Common","Common+","Common++","Uncommon-","Uncommon","Uncommon+","Uncommon++","Rare-","Rare","Rare+","Rare++","Epic-","Epic","Epic+","Epic++","Legendary-","Legendary","Legendary+","Legendary++","Mythical-","Mythical","Mythical+","Mythical++","Divine-","Divine","Divine+","Divine++","Super-","Super","Super+","Super++","Mega-","Mega","Mega+","Mega++","Ultra-","Ultra","Ultra+","Ultra++","Omega-","Omega","Omega+","Omega++","Extreme-","Extreme","Extreme+","Extreme++","Ultimate-","Ultimate","Ultimate+","Ultimate++","Insane-","Insane","Insane+","Insane++","Hyper-","Hyper","Hyper+","Hyper++","Godly-","Godly","Godly+","Godly++","Unique-","Unique","Unique+","Unique++","Exotic-","Exotic","Exotic+","Exotic++","Supreme-","Supreme","Supreme+","Supreme++","Celestial-","Celestial","Celestial+","Celestial++","Eternal-","Eternal","Eternal+","Eternal++","Cosmic-","Cosmic","Cosmic+","Cosmic++","Heavenly-","Heavenly","Heavenly+","Heavenly++","Stellar-","Stellar","Stellar+","Stellar++","Stellar+3","Empyrean-","Empyrean","Empyrean+","Empyrean++","Empyrean+3","Galactic-","Galactic","Galactic+","Galactic++","Galactic+3"},
["QualityArray"] ={"Rough","Bad","Okay","Fine","Good","Great","Awesome","Excellent","Perfect","Best","Incredible","Tremendous","Fantastic","Absurd","Exquisite","Remarkable","Extravagant","Phenomenal","Brilliant","Astounding","Marvelous","Spectacular","Extraordinary","Fabulous","Speldid","Glorious","Magnificent","Terrific","Wondrous","Astonishing","Miraculous","Staggering","Supernatural","Unlimited","Boundless","Prodigious","Abnormal","Magical"},
["MoldArray"] ={"Stone","Copper","Bronze","Silver","Gold","Platinum","leSteel","Sapphire","Emerald","Ruby","Amethyst","Diamond","Opal","Uranium","Sulfur","Crystal","Bloodstone","Moonstone","Topaz","Fossil","Painite","Azure","Volcanic","Quartz","Ammolite","AquaMarine","Mythril","Soulstone"}
}
-- variable garbage
item = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"]["Ascender1"].Item.Value
item2 = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"]["Ascender2"].Item.Value
item3 = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"]["Ascender3"].Item.Value
Qualityfolder = game:GetService("ReplicatedStorage").Qualities
Moldfolder = game:GetService("ReplicatedStorage").AllMolds
Rarityfolder = game:GetService("ReplicatedStorage").Rarities
Classfolder = game:GetService("ReplicatedStorage").Classes
if item then
	item = item.Config
	raritybefore1 = Rarityfolder[item.Rarity.Value].RarityName.Value
	qualitybefore1 = Qualityfolder[item.Quality.Value].QualityName.Value
	moldbefore1 = Moldfolder[item.Mold.Value].MoldName.Value
	classbefore1 = Classfolder[item.Class.Value].ClassNames.Value
end
if item2 then
	item2 = item2.Config
	raritybefore2 = Rarityfolder[item2.Rarity.Value].RarityName.Value
	qualitybefore2 = Qualityfolder[item2.Quality.Value].QualityName.Value
	moldbefore2 = Moldfolder[item2.Mold.Value].MoldName.Value
	classbefore2 = Classfolder[item2.Class.Value].ClassNames.Value
end
if item3 then
	item3 = item3.Config
	raritybefore3 = Rarityfolder[item3.Rarity.Value].RarityName.Value
	qualitybefore3 = Qualityfolder[item3.Quality.Value].QualityName.Value
	moldbefore3 = Moldfolder[item3.Mold.Value].MoldName.Value
	classbefore3 = Classfolder[item3.Class.Value].ClassNames.Value
end

-- function to update!
function update1(arrayused,upgrade,ascender)
	functionitem = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"][tostring(ascender)].Item.Value.Config
	level = functionitem.Level.Value
	rarity = Rarityfolder[functionitem.Rarity.Value].RarityName.Value
	quality = Qualityfolder[functionitem.Quality.Value].QualityName.Value
	mold = Moldfolder[functionitem.Mold.Value].MoldName.Value
	class = Classfolder[functionitem.Class.Value].ClassNames.Value
	if ascender == "Ascender1" then
		raritybefore = raritybefore1
		qualitybefore = qualitybefore1
		moldbefore = moldbefore1
		classbefore = classbefore1
		ascender = "Ascender 1"
	end
	if ascender == "Ascender2" then
		raritybefore = raritybefore2
		qualitybefore = qualitybefore2
		moldbefore = moldbefore2
		classbefore = classbefore2
		ascender = "Ascender 2"
	end
	if ascender == "Ascender3" then
		raritybefore = raritybefore3
		qualitybefore = qualitybefore3
		moldbefore = moldbefore3
		classbefore = classbefore3
		ascender = "Ascender 3"
	end
	local data =
        {
            ["content"] = "<@"..id..">",
            ["embeds"] = {{
                ["title"] = "Username: ||"..tostring(game.Players.LocalPlayer.Name).."||".."\nYour sword has upgraded!",
                ["description"] = "",
                ["type"] = "rich",
                ["color"] = tonumber(0xffffff),
                ["fields"] = {
                    {
                        ["name"] = "Your sword on "..ascender.." has upgraded!",
						["value"] = "Your swords "..arrayused.." upgraded to "..upgrade,
                        ["inline"] = true
                    },
					{
                        ["name"] = "‎ ",
                        ["value"] = " ‎",
                        ["inline"] = false

                    },
					{
						["name"] = "Ascender Item Before",
						["value"] = "Level: "..level.."\nRarity: "..raritybefore.."\nQuality: "..qualitybefore.."\nClass: "..classbefore.."\nMold: "..moldbefore,
						["inline"] = true
					},
					{
						["name"] = "Ascender Item Now",
						["value"] = "Level: "..tostring(level).."\nRarity: "..tostring(rarity).."\nQuality: "..tostring(quality).."\nClass: "..tostring(class).."\nMold: "..tostring(mold),
						["inline"] = true
					},
                }
            }}
        }
	local url = "https://discord.com/api/webhooks/1011443856568492162/_mPtCz3D-oIGKyuGVa4-eUdltXYM3cRZLX7xgQZ9dvRHxPmd7JFm1zzBZSPF6sEwLRXG"	
	local body = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request or http.request
    local msg = {Url = url, Body = body, Method = "POST", Headers = headers}
    request(msg)
	raritybefore1 = Rarityfolder[item.Rarity.Value].RarityName.Value
	raritybefore2 = Rarityfolder[item2.Rarity.Value].RarityName.Value
	raritybefore3 = Rarityfolder[item3.Rarity.Value].RarityName.Value
	qualitybefore1 = Qualityfolder[item.Quality.Value].QualityName.Value
	qualitybefore2 = Qualityfolder[item2.Quality.Value].QualityName.Value
	qualitybefore3 = Qualityfolder[item3.Quality.Value].QualityName.Value
	moldbefore1 = Moldfolder[item.Mold.Value].MoldName.Value
	moldbefore2 = Moldfolder[item2.Mold.Value].MoldName.Value
	moldbefore3 = Moldfolder[item3.Mold.Value].MoldName.Value
	classbefore1 = Classfolder[item.Class.Value].ClassNames.Value
	classbefore2 = Classfolder[item2.Class.Value].ClassNames.Value
	classbefore3 = Classfolder[item3.Class.Value].ClassNames.Value
end



-- triggers the update (checks for what changed)
local CheckParts = {"Rarity","Quality","Class","Mold"}
if item then
    for i,v in pairs(item:GetChildren())do --Gets all the parts inside the item's Config
        for l,x in pairs(CheckParts) do --Checks if any of them are Mold, Quality, Rarity Or class
            if v.Name == x then --If they are any of the above then continue
                v.Changed:connect(function(WhatChanged) --Creates a function that watches the Mold, Quality, Rarity and class If the value changes, it runs.
                    for FindNumber,FindItem in pairs(SubArrays[v.Name.."Array"]) do -- Finds the Mold, Quality, Rarity or Class's Number in the Corresponding Array (To find it's name.) IE. 5 = Common
                        if FindNumber == WhatChanged then -- If it is Equal to something in the array then
							upgraded = SubArrays[v.Name.."Array"][FindNumber]
							whatascender = "Ascender1"
							update1(v.Name,upgraded,whatascender)
                        end
                    end
                end)
            end
        end
    end
end
if item2 then
    for i,v in pairs(item2:GetChildren())do --Gets all the parts inside the item's Config
        for l,x in pairs(CheckParts) do --Checks if any of them are Mold, Quality, Rarity Or class
            if v.Name == x then --If they are any of the above then continue
                v.Changed:connect(function(WhatChanged2) --Creates a function that watches the Mold, Quality, Rarity and class If the value changes, it runs.
                    for FindNumber,FindItem in pairs(SubArrays[v.Name.."Array"]) do -- Finds the Mold, Quality, Rarity or Class's Number in the Corresponding Array (To find it's name.) IE. 5 = Common
                        if FindNumber == WhatChanged2 then -- If it is Equal to something in the array then
							upgraded = SubArrays[v.Name.."Array"][FindNumber]
							whatascender = "Ascender2"
							update1(v.Name,upgraded,whatascender)
                        end
                    end
                end)
            end
        end
    end
end
if item3 then
    for i,v in pairs(item3:GetChildren())do --Gets all the parts inside the item's Config
        for l,x in pairs(CheckParts) do --Checks if any of them are Mold, Quality, Rarity Or class
            if v.Name == x then --If they are any of the above then continue
                v.Changed:connect(function(WhatChanged3) --Creates a function that watches the Mold, Quality, Rarity and class If the value changes, it runs.
                    for FindNumber,FindItem in pairs(SubArrays[v.Name.."Array"]) do -- Finds the Mold, Quality, Rarity or Class's Number in the Corresponding Array (To find it's name.) IE. 5 = Common
                        if FindNumber == WhatChanged3 then -- If it is Equal to something in the array then
							upgraded = SubArrays[v.Name.."Array"][FindNumber]
							whatascender = "Ascender3"
							update1(v.Name,upgraded,whatascender)
                        end
                    end
                end)
            end
        end
    end
end	