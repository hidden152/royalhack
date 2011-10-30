function PerfectTarget(e)
local bone = "ValveBiped.Bip01_Head1"
	if(GetConVarNumber("royalhack_aim_bonepos") == 1) then
		bone = "ValveBiped.Bip01_Head1"
	elseif(GetConVarNumber("royalhack_aim_bonepos") == 2) then
		bone = "ValveBiped.Anim_Attachment_RH"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 3) then
		bone = "ValveBiped.Bip01_Spine"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 4) then
		bone = "ValveBiped.Bip01_R_Hand"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 5) then
		bone = "ValveBiped.Bip01_R_Forearm"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 6) then
		bone = "ValveBiped.Bip01_R_Foot"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 7) then
		bone = "ValveBiped.Bip01_R_Thigh"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 8) then
		bone = "ValveBiped.Bip01_R_Calf"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 9) then
		bone = "ValveBiped.Bip01_R_Shoulder"
			elseif(GetConVarNumber("royalhack_aim_bonepos") == 10) then
		bone = "ValveBiped.Bip01_R_Elbow"
	end

local TargetPos = e:LookupBone(bone)
			local targetheadpos = e:GetBonePosition(TargetPos) 
		return targetheadpos

end

