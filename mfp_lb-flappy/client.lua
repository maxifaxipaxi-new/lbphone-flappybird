local identifier = "mfp-lb-flappy"

CreateThread(function ()
    while GetResourceState("lb-phone") ~= "started" do
        Wait(500)
    end

    local function AddApp()
        local added, errorMessage = exports["lb-phone"]:AddCustomApp({
            identifier = identifier,
            name = Config.name,
            description = Config.description,
            developer = "MFPSCRIPTS.com", -- please leave this, it would be fair for a free app (-;
            defaultApp = Config.defaultApp, 
            size = Config.size, 
            price = Config.price, 
            images = {"https://media.discordapp.net/attachments/1209101893289246730/1211713250337759322/Bildschirmfoto_2024-02-26_um_17.34.42.png?ex=65ef32e7&is=65dcbde7&hm=d8438863cdce94366dd252d10c8505dfd3519a110a72cb813f8687db8b4cddcd&=&format=webp&quality=lossless&width=614&height=1060", "https://media.discordapp.net/attachments/1209101893289246730/1211713251277152326/Bildschirmfoto_2024-02-26_um_17.35.18.png?ex=65ef32e7&is=65dcbde7&hm=6f91e620cf36b578715d1dc671114f9d989c7fabcaaa0e1709d498d328cce984&=&format=webp&quality=lossless&width=620&height=1060"}, -- OPTIONAL array of images for the app on the app store
            ui = GetCurrentResourceName() .. "/ui/index.html", 
            icon = "https://cfx-nui-" .. GetCurrentResourceName() .. "/ui/assets/icon.png"
        })

        if not added then
            print("Could not add app:", errorMessage)
        end
    end

    AddApp()

    AddEventHandler("onResourceStart", function(resource)
        if resource == "lb-phone" then
            AddApp()
        end
    end)
end)








---   ADS - ADS - ADS - ADS  ---
--- can be removed, just ads: ---

AddEventHandler('onResourceStart', function(resourceName)
   if (GetCurrentResourceName() ~= resourceName) then
     return
   end
   print(" _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ ")
   print("|     |   __|  _  |   __|     | __  |     |  _  |_   _|   __|")
   print("| | | |   __|   __|__   |   --|    -|-   -|   __| | | |__   |")
   print("|_|_|_|__|  |__|  |_____|_____|__|__|_____|__|    |_| |_____|")
   print("The resource " .. resourceName .. " has been started")
 end)
 
 AddEventHandler('onResourceStop', function(resourceName)
   if (GetCurrentResourceName() ~= resourceName) then
     return
   end
   print('The resource ' .. resourceName .. ' was stopped. Created by MFPSCRIPTS.com!')
 end)