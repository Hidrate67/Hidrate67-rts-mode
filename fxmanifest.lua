fx_version 'cerulean'
game 'gta5'

author 'Hidrate67'
description 'Top-down RTS-style mode: server-authoritative AI squads capture zones (MVP scaffold)'
version '0.1.0'

shared_script 'config.lua'

server_scripts {
  'server/server.lua',
  'server/zones.lua',
  'server/squads.lua'
}

client_scripts {
  'client/client.lua'
}

ui_page 'html/index.html'

files {
  'html/index.html',
  'html/app.js',
  'html/styles.css'
}
