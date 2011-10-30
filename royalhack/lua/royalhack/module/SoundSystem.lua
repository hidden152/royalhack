//SoundSystem

DomPlayed = false
HHPlayed = false
MulPlayed = false
MONPlayed = false
RAPlayed = false
HUPlayed = false
KilPlayed = false
LUDPlayed = false
UNSPlayed = false
ULTPlayed = false
HOLPlayed = false
WICPlayed = false
GODPlayed = false
PlaySound = true

Showtime = 0
alpha = 0
titel = "nope"




Dom = GetConVarNumber("royalhack_dom")
HH = GetConVarNumber("royalhack_headh")
Mul = GetConVarNumber("royalhack_mulk")
MON = GetConVarNumber("royalhack_mon")
RA = GetConVarNumber("royalhack_rap")
HU = GetConVarNumber("royalhack_hu")
Kil = GetConVarNumber("royalhack_kil")
LUD = GetConVarNumber("royalhack_lud")
UNS = GetConVarNumber("royalhack_uns")
ULT = GetConVarNumber("royalhack_ult")
HOL = GetConVarNumber("royalhack_hol")
WIC = GetConVarNumber("royalhack_wic")
GOD = GetConVarNumber("royalhack_god")

function DrawText(x,y,font,str,color)

	

surface.SetTextColor( color)
surface.SetTextPos( x, y ) 
surface.SetFont(font)
surface.DrawText( str )


end

function PrintMessageToScreen( str )
	Showtime = CurTime()
	titel = str
	alpha = 255
end

function HookMessage()

	if( Showtime + 4 < CurTime() and alpha > 0) then
		alpha = alpha - (FrameTime()*200)
	end
	
	if( alpha > 0 ) then
		---DrawText(ScrW()/2, ScrH()/3,,"ScoreboardText",titel, Color( 255, 255, 255, math.Clamp( alpha, 0, 255 )))
		draw.DrawText( titel, "ScoreboardText", ScrW()/2, ScrH()/3, Color( 255, 255, 255, math.Clamp( alpha, 0, 255 ) ), TEXT_ALIGN_CENTER )
	end

end

hook.Add("HUDPaint","HM",HookMessage)



function RoyalHack.SoundSystem()
local path = "royalhack/soundsystem/"
local getpath = GetConVarString("royalhack_sound_quake_path")
if(LocalPlayer():Alive()) then
	if( GetConVarNumber("royalhack_sound_quake") == 1 ) then
		if(LocalPlayer():Frags() == Dom and DomPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Dominating")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Dominating")
			end
			surface.PlaySound(""..path..getpath.."/dominating.mp3")
			DomPlayed = true
		end
		if(LocalPlayer():Frags() == HH and HHPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Headhunter")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Headhunter")
			end
			surface.PlaySound(""..path..getpath.."/headhunter.wav")
			HHPlayed = true
		end
		if(LocalPlayer():Frags() == Mul and MulPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Multikill")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Multikill")
			end
			surface.PlaySound(""..path..getpath.."/multikill.mp3")
			MulPlayed = true
		end
		if(LocalPlayer():Frags() == MON and MONPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Monsterkill")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Monsterkill")
			end
			surface.PlaySound(""..path..getpath.."/monsterkill.mp3")
			MONPlayed = true
		end
		if(LocalPlayer():Frags() == RA and RAPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Rampage")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Rampage")
			end
			surface.PlaySound(""..path..getpath.."/rampage.mp3")
			RAPlayed = true
		end
		if(LocalPlayer():Frags() == HU and HUPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Humiliation")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Humiliation")
			end
			surface.PlaySound(""..path..getpath.."/humiliation.mp3")
			HUPlayed = true
		end
		if(LocalPlayer():Frags() == Kil and KilPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Killingspree")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Killingspree")
			end
			surface.PlaySound(""..path..getpath.."/killingspree.mp3")
			KilPlayed = true
		end
		if(LocalPlayer():Frags() == LUD and LUDPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Ludicrouskill")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Ludicrouskill")
			end
			surface.PlaySound(""..path..getpath.."/ludicrouskill.mp3")
			LUDPlayed = true
		end
		if(LocalPlayer():Frags() == UNS and UNSPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Unstoppable")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Unstoppable")
			end
			surface.PlaySound(""..path..getpath.."/unstoppable.mp3")
			UNSPlayed = true
		end
		if(LocalPlayer():Frags() == ULT and ULTPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Ultrakill")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Ultrakill")
			end
			surface.PlaySound(""..path..getpath.."/ultrakill.mp3")
			ULTPlayed = true
		end
		if(LocalPlayer():Frags() == HOL and HOLPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Holyshit")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Holyshit")
			end
			surface.PlaySound(""..path..getpath.."/holyshit.mp3")
			HOLPlayed = true
		end
		if(LocalPlayer():Frags() == WIC and WICPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Wickedsick")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Wickedsick")
			end
			surface.PlaySound(""..path..getpath.."/wickedsick.mp3")
			WICPlayed = true
		end
		if(LocalPlayer():Frags() == GOD and GODPlayed == false) then
			if( GetConVarNumber("royalhack_sound_quake_chatprint") == 1 ) then
			LocalPlayer():ChatPrint("Godlike")
			end
			if( GetConVarNumber("royalhack_sound_quake_hudtext") == 1 ) then
			PrintMessageToScreen("Godlike")
			end
			surface.PlaySound(""..path..getpath.."/godlike.mp3")
			GODPlayed = true
		end
			end
		end
	end

hook.Add("Think","sound",RoyalHack.SoundSystem)

function ResetAllSounds()

	if( DomPlayed == true && HHPlayed == true && MulPlayed == true && MONPlayed == true && RAPlayed == true && HUPlayed == true && KilPlayed == true && LUDPlayed == true && UNSPlayed == true && ULTPlayed == true && HOLPlayed == true && WICPlayed == true && GODPlayed == true ) then

		DomPlayed = false
		HHPlayed = false
		MulPlayed = false
		MONPlayed = false
		RAPlayed = false
		HUPlayed = false
		KilPlayed = false
		LUDPlayed = false
		UNSPlayed = false
		ULTPlayed = false
		HOLPlayed = false
		WICPlayed = false
		GODPlayed = false
	end
end

concommand.Add("royalhack_misc_resetsounds",ResetAllSounds)

function ResetSound( sound )

if( sound == false ) then
	Msg("sound is currently activated\n")
end
if( sound != false ) then
	sound = false
end

end
