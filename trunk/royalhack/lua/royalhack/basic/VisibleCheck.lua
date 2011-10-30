// Visiblecheck
function RoyalHack.IsVisible(e)

	if ( !ValidEntity(e) ) then return false end
	
	local ply, spt = LocalPlayer(), e:GetShootPos()
	
    local visible = {

			start = ply:GetShootPos(),
			endpos = spt,
			filter = { ply, e }

		}

	local trace = util.TraceLine( visible )
	
	if trace.Fraction == 1 then
		return true
    end
    return false 
end