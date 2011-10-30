// SkyRemove
function RoyalHack.RemoveSky()
if(GetConVarNumber("royalhack_misc_sky") == 0) then
return false

elseif(GetConVarNumber("royalhack_misc_sky") == 1 ) then
RunConsoleCommand("gl_clear",1)
	return true
	end
end



hook.Add("PreDrawSkyBox","sky",RoyalHack.RemoveSky)	