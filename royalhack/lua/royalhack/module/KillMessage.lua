//KillMessage

function RoyalHack.KillMessage()

local frags = LocalPlayer():Frags()

if( Kills < frags ) then
	if( GetConVarNumber("royalhack_misc_killmessage") == 1 ) then
		if( GetConVarNumber("royalhack_misc_killmessage_client") == 1 ) then
	LocalPlayer():ChatPrint(GetConVarString("royalhack_misc_killmessage_text"))
		end
		if( GetConVarNumber("royalhack_misc_killmessage_server") == 1 ) then
		RunConsoleCommand("say",GetConVarString("royalhack_misc_killmessage_text"))
		end
	Kills = frags
		end
	end
end

hook.Add("Think","fragmassage",RoyalHack.KillMessage)