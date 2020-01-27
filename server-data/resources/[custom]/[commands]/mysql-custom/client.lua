RegisterNetEvent("output")
AddEventHandler("output", function (args)

    local playerServerId = GetPlayerServerId(PlayerId())
    --local plyerIdentifier = GetPlayerIdentifier(PlayerId(), playerServerId)  -> szerver oldalra kell
    print("^3[DEBUG]^0PlayerServerId:" .. playerServerId .. " | PlayerId:" .. PlayerId())

    TriggerEvent('chatMessage', "[Success]", {0,255,0}, "Added " .. args .. " into my database")
    --print(playerServerId .. "[debug]  ")


    --Help a parancshoz
    Citizen.CreateThread(function() 
        TriggerEvent('chat:addSuggestion', '/saveTest', 'saveTest [text]', {
            { name="paramName1", help="param description 1" }
        })
    end)
end)

RegisterNetEvent("getOwnedProperty")
AddEventHandler("getOwnedProperty", function (args)
    print("^4[INFO]^0: Beléptem")
    TriggerEvent('chatMessage', "[Success]", {0,255,0}, "Rows: " .. args)
end)


RegisterNetEvent("output2")
AddEventHandler("output2", function (args)
    TriggerEvent('chatMessage', "[Success]", {0,255,0}, args)
end)
