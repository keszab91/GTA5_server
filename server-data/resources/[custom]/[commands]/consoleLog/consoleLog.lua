--[[
local log = {}

local c27 = string.char(27)
local reset = c27 .. '[' .. tostring(0) .. 'm'
local red = c27 .. '[' .. tostring(31) .. 'm'
local green = c27 .. '[' .. tostring(32) .. 'm'
local yellow = c27 .. '[' .. tostring(33) .. 'm'

function log.info(msg)
    print(green .. "[info ]  " .. msg .. reset)
end

function log.error(msg)
    print(red .. "[error]  " .. msg .. reset)
end

function log.debug(msg)
    print(yellow .. "[debug]  " .. msg .. reset)
end

return log



RegisterCommand("getPlayer",function(source,args,rawCommand)
    local messege = table.concat(args, " ", 1)

    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Me", "Please be careful to not step on too many snails!"}
      })
      --TriggerEvent("chatMessage", "^6[ME] ^7" .. GetPlayerName(source) .. ": " ..messege)
      
end)


RegisterCommand('getPlayer', function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local message = table.concat(args, ' ')
    local nameId = PlayerId()
    
    TriggerClientEvent('chatMessage',-1, 'something to be displayed |'..nameId..name..'| ',{255,255,0}, message )    --Yellow text

end)
]]--