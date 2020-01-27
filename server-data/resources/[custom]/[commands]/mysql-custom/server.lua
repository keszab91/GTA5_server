ESX=nil
RegisterCommand("saveTest", function(source, args)
    
    local argString= table.concat(args, " ")

    local playerGuid = GetPlayerGuid(source)
    
    MySQL.Async.fetchAll("INSERT INTO db_test (id, name, args) VALUES (@source, @name, @args)",
    {
        ["@source"] = source,
        ["@name"] = GetPlayerName(source),
        ["@args"] = argString
    },
    function(result)
        TriggerClientEvent("output", source,"^2" .. argString .. "^0 GUID:" .. playerGuid .. " | ServerID: "  .. " | ident: ")
    end)
 
end)


RegisterCommand("get", function(source, args)
    local argString= table.concat(args, " ")
    MySQL.ready(function ()    
        MySQL.Async.fetchAll("SELECT * FROM db_test WHERE id=@id", {
            ["@id"] = 2
        },
        function(result)
            local string="^3(" .. result[1].name .. ") - ^8" .. result[1].id .. "^0: " .. result[1].args
            TriggerClientEvent("output",source,string)
            TriggerClientEvent('esx:showNotification', source, "~y~".. result[1].name .. "~r~ " .. result[1].args)
        end)
    end)
end)


RegisterCommand("getOwnedProperty", function(source,args)

    local argString= table.concat(args, " ")
    --TriggerClientEvent("getOwnedProperty",source,"~r~Teszt")
    MySQL.ready(function ()


         MySQL.Async.fetchAll("SELECT * FROM owned_properties WHERE name=@name", {
            ["@name"] = "Apartman2"
        },
        function(result)
            local string = "^3Name: " .. result[1].name .. " | ^0Price: [^8" .. result[1].price .. "^0] "
            TriggerClientEvent("getOwnedProperty",source,string)
            TriggerClientEvent('esx:showNotification', source, "~y~".. result[1].name .. "~r~ ")
        end)



        --[[
        MySQL.Async.fetchAll("SELECT * FROM owned_properties WHERE id=@id", {
            ["@id"] = 2
        },
        function(result)
            local string = "Price: " .. result[1].price .. "$ " .. result[1].args
            TriggerClientEvent('esx:showNotification', source, string)
            TriggerClientEvent("getOwnedProperty",source,string)
        end)
        ]]--
    end)
end)


RegisterCommand("get2", function(source, args)
    --local argString= table.concat(args, " ")
    
   

    
    MySQL.ready(function ()    
        MySQL.Async.fetchAll("SELECT * FROM owned_properties WHERE name=@name", {
            ["@name"] = "testtt"
        },
        function(result)

            if result[1] == nil then
                TriggerClientEvent('esx:showNotification', source, "Nincs ilyen")
            else
                local string = "^3Name: " .. result[1].name .. " | ^0Price: [^8" .. result[1].price .. "^0] "
                TriggerClientEvent("output2",source,string)
                TriggerClientEvent('esx:showNotification', source, "~y~".. result[1].name .. "~r~ ")
            end
        end)
    end)
end)

