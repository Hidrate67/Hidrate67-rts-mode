-- client/client.lua
-- Client-side NUI + basic input hooks

local display = false

RegisterCommand('rts_toggle_ui', function()
  display = not display
  SetNuiFocus(display, display)
  SendNUIMessage({ action = 'toggle', visible = display })
end, false)

-- Example NUI callback
RegisterNUICallback('issueOrder', function(data, cb)
  -- data: { squadId, orderType, x, y }
  TriggerServerEvent('rts:issueOrder', data)
  cb({ ok = true })
end)

-- Basic camera toggle stub (to be expanded)
RegisterCommand('rts_topdown', function()
  -- TODO: implement top-down camera
  print('Top-down camera toggle (not implemented in scaffold)')
end, false)

-- Listen for simple server messages
RegisterNetEvent('rts:message')
AddEventHandler('rts:message', function(msg)
  print('[RTS] '..tostring(msg))
end)
