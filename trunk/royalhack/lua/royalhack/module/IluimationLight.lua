// IluimationLight
function RoyalHack.IluimationLight()
if(GetConVarNumber("royalhack_esp_iluminationlight") == 0 ) then

elseif(GetConVarNumber("royalhack_esp_iluminationlight") == 1) then
for _, v in pairs(Friends) do
 if(!v:IsValid()) then
	
	else
	if v == LocalPlayer() then
		Msg("")
else
			if( v:Alive() ) then
			if( !RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
			
			local dylight = DynamicLight(v:EntIndex())
			if ( dylight ) then
			dylight.Pos = v:GetPos()
			dylight.r = Cheat_TeamIV.r
			dylight.g = Cheat_TeamIV.g
			dylight.b = Cheat_TeamIV.b
			dylight.Brightness = tostring(GetConVarNumber("royalhack_esp_iluminationlight_bright"))
			dylight.Decay = 10
			dylight.Size = tostring(GetConVarNumber("royalhack_esp_iluminationlight_size"))
			dylight.DieTime = CurTime() + 0.5
				end
			end
			if( RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid() ) then
		
			local dylight = DynamicLight(v:EntIndex())
			if ( dylight ) then
			dylight.Pos = v:GetPos()
			dylight.r = Cheat_TeamV.r
			dylight.g = Cheat_TeamV.g
			dylight.b = Cheat_TeamV.b
			dylight.Brightness = tostring(GetConVarNumber("royalhack_esp_iluminationlight_bright"))
			dylight.Decay = 10
			dylight.Size = tostring(GetConVarNumber("royalhack_esp_iluminationlight_size"))
			dylight.DieTime = CurTime() + 0.5
					end
				end
			end
		end
	end
end
for _, v in pairs(Enemys) do
 if(!v:IsValid()) then
	
	else
	if v == LocalPlayer() then
		Msg("")
else
			if( v:Alive() ) then
			if( !RoyalHack.IsVisible(v) and v:IsValid() ) then

			local dylight = DynamicLight(v:EntIndex())
			if ( dylight ) then
			
			dylight.Pos = v:GetPos()

			dylight.r = Cheat_EnemyIV.r
			dylight.g = Cheat_EnemyIV.g
			dylight.b = Cheat_EnemyIV.b 
			dylight.Brightness = tostring(GetConVarNumber("royalhack_esp_iluminationlight_bright"))
			dylight.Decay = 10
			dylight.Size = tostring(GetConVarNumber("royalhack_esp_iluminationlight_size"))
			dylight.DieTime = CurTime() + 0.5
			end
			end
			if( RoyalHack.IsVisible(v) and v:IsValid() ) then
			
			local dylight = DynamicLight(v:EntIndex())
			if ( dylight ) then
			dylight.Pos = v:GetPos()

			dylight.r = Cheat_EnemyV.r
			dylight.g = Cheat_EnemyV.g
			dylight.b = Cheat_EnemyV.b 
			dylight.Brightness = tostring(GetConVarNumber("royalhack_esp_iluminationlight_bright"))
			dylight.Decay = 10
			dylight.Size = tostring(GetConVarNumber("royalhack_esp_iluminationlight_size"))
			dylight.DieTime = CurTime() + 0.5
			end
			end
else
			-- local dylight = DynamicLight(v:EntIndex())
			-- if ( dylight ) then
			-- dylight.Pos = v:GetPos()

			-- dylight.r = 0
			-- dylight.g = 0
			-- dylight.b = 0 
			-- dylight.Brightness = 15
			-- dylight.Decay = 10
			-- dylight.Size = 3
			-- dylight.DieTime = CurTime() + 0.5
					end
				end
			end
		end
	end
end


hook.Add("Think","ilum",RoyalHack.IluimationLight)