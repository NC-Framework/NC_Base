fx_version 'cerulean'
game 'gta5'

name 'NC_Base'
description 'Nexus Core Framework Base Resource'
author 'Your Name'
version '1.0.0'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/functions.lua',
    'server/commands.lua',
    'server/exports.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua'
}

shared_scripts {
    'config.lua',
    'shared/functions.lua'
}

dependencies {
    'oxmysql'
}
