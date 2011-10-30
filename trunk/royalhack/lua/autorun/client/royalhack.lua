// RoyalHack Main

//Basic Includes
Msg("Royal Hack v 1.0\n")
include("royalhack/basic/Config.lua")
include("royalhack/basic/Fonts.lua")
include("royalhack/basic/Color.lua")
include("royalhack/basic/VisibleCheck.lua")
include("royalhack/menu/menu.lua")

for k,v in ipairs(filename) do
	include("royalhack/module/"..v)
		Msg("\n"..v.." was loaded")
end

Msg("\n-----------------------------------")