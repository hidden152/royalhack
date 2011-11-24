local BONES = {
    { "ValveBiped.Bip01_Head1", "ValveBiped.Bip01_Neck1" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_Pelvis" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_L_UpperArm" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_R_UpperArm" },
    { "ValveBiped.Bip01_L_UpperArm", "ValveBiped.Bip01_L_Forearm" },
    { "ValveBiped.Bip01_R_UpperArm", "ValveBiped.Bip01_R_Forearm" },
    { "ValveBiped.Bip01_R_Forearm", "ValveBiped.Bip01_R_Hand" },
    { "ValveBiped.Bip01_L_Forearm", "ValveBiped.Bip01_L_Hand" },
    { "ValveBiped.Bip01_Pelvis", "ValveBiped.Bip01_L_Thigh" },
    { "ValveBiped.Bip01_Pelvis", "ValveBiped.Bip01_R_Thigh" },
    { "ValveBiped.Bip01_L_Thigh", "ValveBiped.Bip01_L_Calf" },
    { "ValveBiped.Bip01_R_Thigh", "ValveBiped.Bip01_R_Calf" },
    { "ValveBiped.Bip01_R_Calf", "ValveBiped.Bip01_R_Foot" },
    { "ValveBiped.Bip01_L_Calf", "ValveBiped.Bip01_L_Foot" },
}
 
local function GetBoneScreenPos( ply, bone )
    return ply:GetBonePosition( ply:LookupBone( bone ) ):ToScreen()
end
 

local function DrawSkeleton( )

	
if(GetConVarNumber("royalhack_esp_bone") == 0 || Enemys == NULL || Friends == NULL) then

elseif(GetConVarNumber("royalhack_esp_bone") == 1) then

	for _, b in pairs(Enemys) do
		if b == LocalPlayer() then
			Msg("")
else
if(!b:IsValid()) then
else
			if( b:Alive() ) then
			if(!RoyalHack.IsVisible(b) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) ) then
			
    for k,v in ipairs( BONES ) do
        pos1 = GetBoneScreenPos( b, v[1] )
        pos2 = GetBoneScreenPos( b, v[2] )
		surface.SetDrawColor(Cheat_EnemyV)
        surface.DrawLine( pos1.x, pos1.y, pos2.x, pos2.y )
    end
end
			if(RoyalHack.IsVisible(b) and (GetConVarNumber("royalhack_esp_enemysonly") == 0)) then
			
    for k,v in ipairs( BONES ) do
        pos1 = GetBoneScreenPos( b, v[1] )
        pos2 = GetBoneScreenPos( b, v[2] )
		surface.SetDrawColor(Cheat_EnemyIV)
        surface.DrawLine( pos1.x, pos1.y, pos2.x, pos2.y )
						end
					end
				end
			end
		end
	end
end
	
	for _, c in pairs(Friends) do
		if c == LocalPlayer() then
			Msg("")
else
			if(!c:IsValid()) then 
			else
			if(!RoyalHack.IsVisible(c) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and c:IsValid()) then
		
    for k,v in ipairs( BONES ) do
        pos1 = GetBoneScreenPos( c, v[1] )
        pos2 = GetBoneScreenPos( c, v[2] )
		surface.SetDrawColor(Cheat_TeamV)
        surface.DrawLine( pos1.x, pos1.y, pos2.x, pos2.y )
		end
	end
			if(RoyalHack.IsVisible(v) and (GetConVarNumber("royalhack_esp_enemysonly") == 0) and v:IsValid()) then
	for k,v in ipairs( BONES ) do
        pos1 = GetBoneScreenPos( c, v[1] )
        pos2 = GetBoneScreenPos( c, v[2] )
		surface.SetDrawColor(Cheat_TeamIV)
        surface.DrawLine( pos1.x, pos1.y, pos2.x, pos2.y )
						end
					end	
				end
			end
		end
	end

hook.Add("HUDPaint","BE",DrawSkeleton)