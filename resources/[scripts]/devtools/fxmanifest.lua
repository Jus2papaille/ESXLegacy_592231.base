fx_version 'cerulean'
game 'gta5'

name "devtools"
description "for the developpement of your server"
author "Jus2papaille"
version "1.0.0"

shared_scripts {
	'@es_extended/imports.lua',
	'shared/*.lua'
}

client_scripts {
	'client/main.lua',
	'client/cmd_position.lua'
}

server_scripts {
	'server/main.lua',
	'server/permission.lua'
}
