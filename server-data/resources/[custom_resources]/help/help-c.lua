RegisterCommand("getUserPosition", function()

    local pos = GetEntityCoords(GetPlayerPed(-1))
    local entering = '{\"x\":'..pos.x..',\"y\":'..pos.y..',\"z\":'..pos.z..'}'
    msg(entering)
    print(entering)


end, false)

--[[
RegisterCommand("getUserPosition", function()

    local pos = GetEntityCoords(GetPlayerPed(-1))
    local entering = '{\"x\":'..pos.x..',\"y\":'..pos.y..',\"z\":'..pos.z..'}'
    msg(entering)
    print(entering)

end, false




RegisterCommand("addPropExitPoint", function(source, args)

    local pos = GetEntityCoords(GetPlayerPed(-1))
    local entering = '{\"x\":'..pos.x..',\"y\":'..pos.y..',\"z\":'..pos.z..'}'
    local player = tonumber(args[1])

    if args[1] then
        if (player and GetPlayerName(player)) then
			if args[2] then
				TriggerEvent("es:getPlayerFromId", player, function(user)
					user.giveRole(role)
					TriggerClientEvent('chat:addMessage', user.get('source'), {
						args = {"^1SYSTEM", "You've been given a role: ^2" .. role}
					})
				end)
			else
				RconPrint("Usage: giverole [user-id] [role]\n")
			end
		else
    else
		RconPrint("Usage: addPropExitPoin\n")
	end


    table.insert(asyncTasks, function(cb)
        MySQL.Async.execute('UPDATE users SET job = @job, job_grade = @job_grade, loadout = @loadout, position = @position WHERE identifier = @identifier', {
            ['@job']        = xPlayer.job.name,
            ['@job_grade']  = xPlayer.job.grade,
            ['@loadout']    = json.encode(xPlayer.getLoadout()),
            ['@position']   = json.encode(xPlayer.getCoords()),
            ['@identifier'] = xPlayer.identifier
        }, function(rowsChanged)
            cb()
        end)
    end)
end, true)
--]=====]

function msg(text)
    TriggerEvent("chatMessage","[SERVER]",{255,0,0}, text)
end




