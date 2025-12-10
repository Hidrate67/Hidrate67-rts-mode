-- server/server.lua
-- Author: GitHub Copilot Chat Assistant (scaffold)
-- Server-authoritative AI & zone manager (MVP skeleton)

local Zones = require and require('server/zones') or nil
local Squads = require and require('server/squads') or nil

-- Simple exports for testing and console commands
RegisterCommand('rts_spawn_squad', function(source, args, raw)
  local player = source
  local size = tonumber(args[1]) or GetConvarInt('rts_defaultSquadSize', 4)
  local squad = exports['rts-mode']:createSquad(player, size)
  if player == 0 then
    print(('Spawned squad %s for player %s'):format(squad.id or 'N/A', 'server'))
  else
    TriggerClientEvent('chat:addMessage', player, { args = { '^2RTS', 'Spawned squad.' } })
  end
end, false)

-- Basic resource start log
AddEventHandler('onResourceStart', function(resourceName)
  if resourceName ~= GetCurrentResourceName() then return end
  print('rts-mode: resource started')
end)

-- Provide minimal exports for squads & zones (implemented in server/squads.lua)
exports('createSquad', function(owner, size)
  return Squads and Squads.createSquad(owner, size) or { id = 'stub' }
end)
