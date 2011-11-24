// Radar


function RoyalHack.Radar()
if (GetConVarNumber("royalhack_misc_radar_on") == 0) then return end
if (GetConVarNumber("royalhack_misc_radar_on") == 1) then 
FuckRadar = {}
FuckRadarT = Color(255,0,0,255)
FuckRadar.W = GetConVarNumber("royalhack_misc_radar_width")
FuckRadar.H = GetConVarNumber("royalhack_misc_radar_hight")
FuckRadar.X = GetConVarNumber("royalhack_misc_radar_x") --- FuckRadar.W fuck_esp_removels_skybox 
FuckRadar.Y = GetConVarNumber("royalhack_misc_radar_y") --- FuckRadar.HDSdsadsa
FuckRadar.Rad = GetConVarNumber("royalhack_misc_radar_radius")

if !LocalPlayer():Alive() then return end
-- Draw Radarwindow like the rest
--top
surface.SetDrawColor(Color(Background.r,Background.g,Background.b,255))
surface.DrawRect(FuckRadar.X,FuckRadar.Y-25,FuckRadar.W,25)
surface.SetDrawColor(Color(0,0,0,255))
surface.DrawOutlinedRect(FuckRadar.X,FuckRadar.Y-25,FuckRadar.W,25)
surface.SetDrawColor(FuckRadarT)
surface.SetTextPos( FuckRadar.X + 5, FuckRadar.Y-20 ) 
draw.DrawText("RoyalHack Radar", "ScoreboardText", FuckRadar.X + 5, FuckRadar.Y-20,FuckRadarT,TEXT_ALIGN_LEFT)
--draw custom window
surface.SetDrawColor(Color(Background.r,Background.g,Background.b,255))
surface.DrawRect(FuckRadar.X,FuckRadar.Y,FuckRadar.W,FuckRadar.H)
surface.SetDrawColor(Color(0,0,0,255))
surface.DrawOutlinedRect(FuckRadar.X,FuckRadar.Y,FuckRadar.W,FuckRadar.H)
-- draw cross rect
surface.SetDrawColor(Color(0,0,0,255))
surface.DrawRect(FuckRadar.X+(FuckRadar.W/2),FuckRadar.Y,1,FuckRadar.H)
surface.DrawRect(FuckRadar.X,FuckRadar.Y+(FuckRadar.H/2),FuckRadar.W,1)

	
		for i, pl in ipairs(Friends) do
		 if(!pl:IsValid()) then
	
	else
			local cx = FuckRadar.X+FuckRadar.W/2
			local cy = FuckRadar.Y+FuckRadar.H/2
			local vdiff = pl:GetPos()-LocalPlayer():GetPos()
			if ( vdiff:Length()<=FuckRadar.Rad ) then
				local px = (vdiff.x/FuckRadar.Rad)
				local py = (vdiff.y/FuckRadar.Rad)
				local z = math.sqrt( px*px + py*py )
				local phi = math.Deg2Rad( math.Rad2Deg( math.atan2( px, py ) ) - math.Rad2Deg( math.atan2( LocalPlayer():GetAimVector().x, LocalPlayer():GetAimVector().y ) ) - 90 )
				px = math.cos(phi)*z
				py = math.sin(phi)*z
				if( GetConVarNumber("royalhack_misc_radar") == 0 ) then
					
					elseif(GetConVarNumber("royalhack_misc_radar") == 1 and GetConVarNumber("royalhack_misc_radar_on") == 1  and pl:IsValid() ) then
						if(pl == LocalPlayer() ) then
				
						elseif(!pl:Alive()) then
					
					
						elseif( RoyalHack.IsVisible(pl) ) then
						draw.RoundedBox( 0, cx+px*FuckRadar.W/2-4, cy+py*FuckRadar.H/2-4, 2, 2, Cheat_TeamV )
						if(GetConVarNumber("royalhack_misc_radar") == 1) then
						else
						end
						
						elseif( !RoyalHack.IsVisible(pl) ) then
						draw.RoundedBox( 0, cx+px*FuckRadar.W/2-4, cy+py*FuckRadar.H/2-4, 2, 2, Cheat_TeamIV )
						if(GetConVarNumber("royalhack_misc_radar") == 1) then
						else
						end
					end
				end
			end
		end
	end
		for i, pl in ipairs(Enemys) do
		 if(!pl:IsValid()) then
	
	else
			local cx = FuckRadar.X+FuckRadar.W/2
			local cy = FuckRadar.Y+FuckRadar.H/2
			local vdiff = pl:GetPos()-LocalPlayer():GetPos()
			if ( vdiff:Length()<=FuckRadar.Rad ) then
				local px = (vdiff.x/FuckRadar.Rad)
				local py = (vdiff.y/FuckRadar.Rad)
				local z = math.sqrt( px*px + py*py )
				local phi = math.Deg2Rad( math.Rad2Deg( math.atan2( px, py ) ) - math.Rad2Deg( math.atan2( LocalPlayer():GetAimVector().x, LocalPlayer():GetAimVector().y ) ) - 90 )
				px = math.cos(phi)*z
				py = math.sin(phi)*z
				if( GetConVarNumber("royalhack_misc_radar") == 0 ) then
					
					elseif(GetConVarNumber("royalhack_misc_radar") == 1 and GetConVarNumber("royalhack_misc_radar_on") == 1  and pl:IsValid() ) then
						if(pl == LocalPlayer() ) then
				
						elseif(!pl:Alive()) then
					
						elseif( RoyalHack.IsVisible(pl) ) then
						draw.RoundedBox( 0, cx+px*FuckRadar.W/2-4, cy+py*FuckRadar.H/2-4, 2, 2, Cheat_EnemyV )
						
						elseif( !RoyalHack.IsVisible(pl) ) then
						draw.RoundedBox( 0, cx+px*FuckRadar.W/2-4, cy+py*FuckRadar.H/2-4, 2, 2, Cheat_EnemyIV )
					end
				end
			end
		end
	end
end
end
hook.Add("HUDPaint","Rad",RoyalHack.Radar)