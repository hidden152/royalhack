// NameEsp
function RoyalHack.NameEsp()
if(GetConVarNumber("royalhack_esp_name") == 0) then return end
if(GetConVarNumber("royalhack_esp_name") == 1) then
 for _, v in pairs(Friends) do
 if(!v:IsValid()) then
	
	else
local pos =( v:GetPos() + Vector( 0, 0, 40 ) )
pos = pos:ToScreen()

			if v == LocalPlayer() then
			Msg("")
			else

			if( v:Alive() ) then
				if( !RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
					draw.DrawText(""..v:GetName().."", GetConVarString("royalhack_esp_font"), pos.x - 30,pos.y -5, Cheat_TeamIV,1)
				elseif( RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
					draw.DrawText(""..v:GetName().."",GetConVarString("royalhack_esp_font"), pos.x - 30,pos.y -5, Cheat_TeamV,1)
				end
			end
		end
	end
end
 for _, v in pairs(Enemys) do
  if(!v:IsValid()) then
	
	else
local pos =( v:GetPos() + Vector( 0, 0, 40 ) )
pos = pos:ToScreen()

	if v == LocalPlayer() then
	Msg("")
	else

	if( v:Alive() ) then
	if( !RoyalHack.IsVisible(v) and v:IsValid() ) then
	draw.DrawText(""..v:GetName().."", GetConVarString("royalhack_esp_font"), pos.x - 30,pos.y -5, Cheat_EnemyIV,1)
	elseif( RoyalHack.IsVisible(v) and v:IsValid() ) then
	draw.DrawText(""..v:GetName().."", GetConVarString("royalhack_esp_font"), pos.x - 30,pos.y -5, Cheat_EnemyV,1)
						end
					end	
				end
			end
		end
	end
end

hook.Add("HUDPaint","ne",RoyalHack.NameEsp)