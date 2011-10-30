// BarrelEsp
function RoyalHack.BarrelEsp()
if (GetConVarNumber("royalhack_esp_barrel") == 0) then return end
if (GetConVarNumber("royalhack_esp_barrel") == 1) then
  for _, v in pairs(Friends) do
   if(!v:IsValid()) then
	
	else
local shotpos = v:GetAimVector()
local pos = (v:GetPos()+ Vector( 0, 0, 60 )) --+ shotpos
local endpos = (pos+(shotpos*160))
pos = pos:ToScreen()
endpos = endpos:ToScreen()


		if v == LocalPlayer() then
		Msg("")
		else

		if( v:Alive() ) then
			if( !RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
				surface.SetDrawColor(Cheat_TeamIV)
				surface.DrawLine( pos.x, pos.y, endpos.x, endpos.y )
			elseif( RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
				surface.SetDrawColor(Cheat_TeamV)
				surface.DrawLine( pos.x, pos.y, endpos.x, endpos.y )
				end
			end
		end
	end
end
  for _, v in pairs(Enemys) do
   if(!v:IsValid()) then
	
	else
local shotpos = v:GetAimVector()
local pos = (v:GetPos()+ Vector( 0, 0, 60 )) --+ shotpos
local endpos = (pos+(shotpos*160))
pos = pos:ToScreen()
endpos = endpos:ToScreen()


	if v == LocalPlayer() then
	Msg("")
	else

	if( v:Alive() ) then
	if(!RoyalHack.IsVisible(v) and v:IsValid() ) then
	surface.SetDrawColor(Cheat_EnemyIV)
	surface.DrawLine( pos.x, pos.y, endpos.x, endpos.y )
	elseif( RoyalHack.IsVisible(v)  and v:IsValid()  ) then
	surface.SetDrawColor(Cheat_EnemyV)
	surface.DrawLine( pos.x, pos.y, endpos.x, endpos.y )
						end
					end
				end
			end
		end
	end
end
hook.Add("HUDPaint","BarrelEsp",RoyalHack.BarrelEsp)