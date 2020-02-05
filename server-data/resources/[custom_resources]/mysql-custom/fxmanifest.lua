fx_version 'adamant'

game 'gta5'

description 'Chat command'

version '1.0.0'

client_scripts {

    'client.lua'
}

server_script{
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
} 