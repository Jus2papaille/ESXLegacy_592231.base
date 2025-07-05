fx_version 'cerulean'
game 'gta5'

description 'Zone de soin pour ESX'
author 'Jus2papaille'
version '1.0.0'

client_scripts {
    'client.lua'
}

server_scripts {
    '@es_extended/imports.lua',
    'server.lua'
}

shared_script {
    'config.lua'
}