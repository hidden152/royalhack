function RoyalHack.KillPlayer()

local frags = LocalPlayer():Frags()
	if( Kills < frags ) then
		return true
	else
		return false
	end

end

hook.Add("Think","KillPlayer",RoyalHack.KillPlayer)