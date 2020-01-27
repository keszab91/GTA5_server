fx_version 'adamant'

game 'gta5'

description 'Custom Menu'

version '1.0.0'


server_scripts {
    '@NativeUI/NativeUI.lua',
    '@es_extended/locale.lua',
    'ext.lua',
    'menu.lua'
}

client_scripts {
	'@mysql-async/lib/MySQL.lua'
}

