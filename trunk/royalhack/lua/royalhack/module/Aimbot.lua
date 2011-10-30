//Aimbot Beta
Opfer = nil
function PlayerholdWeapon( ply )

return ( ply:GetActiveWeapon():IsValid() && ply:GetActiveWeapon():IsWeapon() )

end

function GetWeaponMode( ply )

	if(ValidEntity(ply)) then
		if(PlayerholdWeapon(ply)) then
			if(ply:GetActiveWeapon():GetClass() == "weapon_pistol" or "weapon_deagle" or "weapon_fiveseven" or "weapon_glock" or "weapon_rpg") then
			return "pistol"
			else
			return "smg"
			end
		end
	end	
end




function IsReload( ply )

	if(ValidEntity(ply)) then
		if(PlayerholdWeapon(ply)) then
		if(	ply:GetActiveWeapon():Clip1() <= 0 ) then
			return true
		else
			return false
		end
	end
end
end
function Key(mode)

if(mode == 1 ) then
	return MOUSE_LEFT 
elseif( mode == 2 ) then
	return MOUSE_RIGHT
elseif( mode == 3 ) then
	return MOUSE_MIDDLE 
elseif( mode == 4 ) then
	return MOUSE_4
elseif( mode == 5 ) then
	return MOUSE_5
end

end


-- function AimOnFire( ply ) 

	-- if( GetConVarNumber("royalhack_aim_targetmode") == 1 ) then
		-- if( PlayerholdWeapon( ply ) ) then
			-- if( !IsReload(ply) ) then
				-- if( ply:KeyDown(Key(GetConVarNumber("royalhack_aim_key")) )) then
				-- return true
				-- else
				-- return false
				-- end
			-- end
		-- end
	-- end
-- end

function FOV(ply,target)

 -- fov = GetConVarNumber("royalhack_aim_fov")
-- local function CalcAngle( p , t ) 
	-- math.deg(math.acos(Vector():Dot(p, t)))
-- end
			-- local angle = CalcAngle(Angle():Forward(Angle(1, 0, 0)), Vector():GetNormal(PerfectTarget(target) - ply:GetShootPos()))
			-- Msg(""..angle.."")
			-- if (angle <= fov) then return
	-- end
end

function AimPrediction( weapon )


end

function HoldTarget( target )

end

function AutoShoot(  )
if( GetConVarNumber("royalhack_aim_autoshoot") != 1 ) then return end
local firemode = GetWeaponMode(LocalPlayer())
local target = GetTarget()
	if( firemode == "smg" ) then
		if( target == true ) then
		Msg("attack")
		end
	elseif( firemode == "pistol" ) then
		if( target == true ) then
			RunConsoleCommand("+attack")
			
		else
			RunConsoleCommand("-attack")
		end
	end
	

end
hook.Add("Think","Autso",AutoShoot)
function AutoReload( ply )

end

function AntiAim( ply )

end



function RoyalHack.Aimbot(umc)
		TargetPlayer = {}
		local losttarget = false
		local target

		for max,play in ipairs(Enemys) do
 if(!play:IsValid()) then
	
	else
	if( GetConVarNumber("royalhack_aim_targetmode") == 0 ) then
	
		elseif( GetConVarNumber("royalhack_aim_targetmode") == 1 ) then
			if( !play:IsValid() || play == LocalPlayer() || !play:Alive() || !RoyalHack.IsVisible(play) || LocalPlayer():GetPos():Distance(play:GetPos()) > GetConVarNumber("royalhack_aim_maxdistance")) then
				else
					table.insert(TargetPlayer, {player = play , dist = LocalPlayer():GetPos():Distance(play:GetPos())})
						table.SortByMember(TargetPlayer , "dist" , function(a , b) return a > b end )
						target = TargetPlayer[1].player
			end
				elseif( GetConVarNumber("royalhack_aim_targetmode") == 2 ) then
					if( !play:IsValid() || play == LocalPlayer() || !play:Alive() || !RoyalHack.IsVisible(play) || LocalPlayer():GetPos():Distance(play:GetPos()) > GetConVarNumber("royalhack_aim_maxdistance") ) then
						else
							table.insert(TargetPlayer, {player = play , health = play:Health()})
								table.SortByMember(TargetPlayer , "health" , function(a , b) return a > b end )
								target = TargetPlayer[1].player
						end
							elseif( GetConVarNumber("royalhack_aim_targetmode") == 3 ) then
								if( !play:IsValid() || play == LocalPlayer() || !play:Alive() || !RoyalHack.IsVisible(play) || LocalPlayer():GetPos():Distance(play:GetPos()) > GetConVarNumber("royalhack_aim_maxdistance") ) then
									else
										table.insert(TargetPlayer, {player = play , low = play:Health()})
											table.SortByMember(TargetPlayer , "low" , function(a , b) return a < b end )
											target = TargetPlayer[1].player
								end
			end
	end
end
		if(target == nil ) then//scheiße aber muss sein
			losttarget = true
		end


if(GetConVarNumber("royalhack_aimbot") == 1 and IsReload(LocalPlayer()) == false and losttarget == false ) then
Opfer = true
local maxangle = (PerfectTarget(target) - LocalPlayer():GetShootPos()):Angle()
	if(GetConVarNumber("royalhack_aim_aimkey") == 1  and LocalPlayer():KeyDown(IN_ATTACK)) then
		view1 = ((PerfectTarget(target) - LocalPlayer():GetShootPos()):Angle())
		umc:SetViewAngles(Angle(math.NormalizeAngle(view1.p),math.NormalizeAngle(view1.y),math.NormalizeAngle(view1.r)))
	elseif(GetConVarNumber("royalhack_aim_aimkey") == 0 and GetConVarNumber("royalhack_aimbot") == 1) then
		view = ((PerfectTarget(target) - LocalPlayer():GetShootPos()):Angle())
		umc:SetViewAngles(Angle(math.NormalizeAngle(view.p),math.NormalizeAngle(view.y),math.NormalizeAngle(view.r)))
	elseif(GetConVarNumber("royalhack_aim_aimkey") == 0 and GetConVarNumber("royalhack_aimbot") == 0 ) then 
			end
	else
		Opfer = nil
		end
	end


hook.Add("CreateMove", "te", RoyalHack.Aimbot)


function GetTarget( )

if( Opfer == nil ) then
	return false
else
	return true
	end
	
end

hook.Add("Think","tast",GetTarget)