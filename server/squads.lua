-- server/squads.lua
-- Minimal squad manager: create/track simple squads

local Squads = {}
Squads._nextId = 1
Squads._list = {}

function Squads.createSquad(owner, size)
  local id = 'squad_' .. tostring(Squads._nextId)
  Squads._nextId = Squads._nextId + 1
  local s = {
    id = id,
    owner = owner,
    size = size or 4,
    members = {},
    pos = { x = 0.0, y = 0.0, z = 0.0 },
    order = { type = 'idle' }
  }
  Squads._list[id] = s
  return s
end

function Squads.getAll()
  return Squads._list
end

function Squads.get(id)
  return Squads._list[id]
end

function Squads.issueOrder(id, order)
  local s = Squads._list[id]
  if not s then return false end
  s.order = order
  return true
end

return Squads
