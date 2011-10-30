//BoxEsp
function RoyalHack.BoxEsp()

if(GetConVarNumber("royalhack_esp_box") == 0 ) then

elseif(GetConVarNumber("royalhack_esp_box") == 1) then

for _, v in pairs(Friends) do
 if(!v:IsValid()) then
	
	else
obbmin = ( v:GetPos() + ( v:GetRight() * -25 ) ):ToScreen()
obbmax = ( v:GetPos() + ( v:GetRight() * 21 ) + ( v:GetUp() * 72) ):ToScreen()

if v == LocalPlayer() then
	Msg("")
else
			if( v:Alive() ) then
			if(!RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
			
			surface.SetDrawColor( Cheat_TeamIV )
			surface.DrawLine( obbmin.x, obbmax.y, obbmax.x, obbmax.y )--oben
			surface.DrawLine( obbmin.x, obbmin.y, obbmin.x, obbmax.y )
			surface.DrawLine( obbmax.x, obbmax.y, obbmax.x, obbmin.y )
			surface.DrawLine( obbmin.x, obbmin.y, obbmax.x, obbmin.y )
			elseif(RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
		
			surface.SetDrawColor( Cheat_TeamV )
			surface.DrawLine( obbmin.x, obbmax.y, obbmax.x, obbmax.y )--oben
			surface.DrawLine( obbmin.x, obbmin.y, obbmin.x, obbmax.y )
			surface.DrawLine( obbmax.x, obbmax.y, obbmax.x, obbmin.y )
			surface.DrawLine( obbmin.x, obbmin.y, obbmax.x, obbmin.y )
				end
			end
		end
	end
end
for _, v in pairs(Enemys) do
 if(!v:IsValid()) then
	
	else
obbmin = ( v:GetPos() + ( v:GetRight() * -25 ) ):ToScreen()
obbmax = ( v:GetPos() + ( v:GetRight() * 21 ) + ( v:GetUp() * 72) ):ToScreen()

if v == LocalPlayer() then
	Msg("")
else		if( v:Alive() ) then
			if( !RoyalHack.IsVisible(v) and v:IsValid() ) then

			surface.SetDrawColor(Cheat_EnemyIV)
			surface.DrawLine( obbmin.x, obbmax.y, obbmax.x, obbmax.y )--oben
			surface.DrawLine( obbmin.x, obbmin.y, obbmin.x, obbmax.y )
			surface.DrawLine( obbmax.x, obbmax.y, obbmax.x, obbmin.y )
			surface.DrawLine( obbmin.x, obbmin.y, obbmax.x, obbmin.y )
			elseif(RoyalHack.IsVisible(v) and v:IsValid() ) then
			
			surface.SetDrawColor( Cheat_EnemyV)
			surface.DrawLine( obbmin.x, obbmax.y, obbmax.x, obbmax.y )--oben
			surface.DrawLine( obbmin.x, obbmin.y, obbmin.x, obbmax.y )
			surface.DrawLine( obbmax.x, obbmax.y, obbmax.x, obbmin.y )
			surface.DrawLine( obbmin.x, obbmin.y, obbmax.x, obbmin.y )
			else
						end	
					end
				end
			end
		end
	end
end
hook.Add("HUDPaint","RBox",RoyalHack.BoxEsp)
