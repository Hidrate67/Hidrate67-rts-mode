# Design Notes (MVP)

- Server-authoritative AI manager handles squads and zone capture.
- Clients provide NUI tactical map for issuing orders; server validates and applies orders.
- Start with Lua for fast iteration. Keep AI rule-based (FSM/utility) for MVP.
