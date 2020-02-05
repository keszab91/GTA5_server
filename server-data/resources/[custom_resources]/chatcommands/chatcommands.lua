--FAX boi

RegisterCommand("meTest",function(source,args,rawCommand)
    local messege = table.concat(args, " ", 1)

    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Me", "Please be careful to not step on too many snails!"}
      })
      --TriggerEvent("chatMessage", "^6[ME] ^7" .. GetPlayerName(source) .. ": " ..messege)
      
end)


RegisterCommand("doTest",function(source,args,rawCommand)
    local messege = table.concat(args, " ", 1)
    TriggerEvent("chatMessage", "^6[ME] ^7" .. GetPlayerName(source) .. ": " ..messege)
end)

