-- server/zones.lua
-- Simple zone definitions and helpers

local Zones = {}

Zones.data = {
  -- Example circular zones: {id, x, y, radius}
  { id = 'zone_alpha', x = 215.0, y = -810.0, radius = 50.0 },
  { id = 'zone_bravo', x = -500.0, y = -2000.0, radius = 60.0 },
}

function Zones.getAll()
  return Zones.data
end

function Zones.findById(id)
  for _, z in ipairs(Zones.data) do
    if z.id == id then return z end
  end
  return nil
end

return Zones
