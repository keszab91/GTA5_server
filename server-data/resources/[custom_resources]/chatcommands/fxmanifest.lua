fx_version 'adamant'

game 'gta5'

description 'Chat command'

version '1.0.0'

client_scripts {

    'client.lua',
	'chatCommands.lua'
}

server_script{
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
} 