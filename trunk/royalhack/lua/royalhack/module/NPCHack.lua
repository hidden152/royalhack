//NPC Hack


function RoyalHack.NpcIsVisible()


end

function RoyalHack.NpcAutoshoot()

end


function RoyalHack.DrawBasicEsp()

for k,v in ipairs(ents.GetAll()) do
	if(v:IsNPC()) then
	local obbmin = ( v:GetPos() + ( v:GetRight() * 40 ) ):ToScreen()
local obbmax = ( v:GetPos() + ( v:GetRight() ) + ( v:GetUp()  )):ToScreen()
Msg(""..v:Health().."\n")
		--if( v:Alive() ) then


			surface.SetDrawColor(Color(255,0,0,255))
			--surface.DrawLine( obbmax.x, obbmax.y, obbmin.x, obbmax.y )--oben
			surface.DrawLine( obbmin.x, obbmin.y, obbmin.x, obbmax.y )
			--surface.DrawLine( obbmax.x, obbmax.y, obbmax.x, obbmin.y )
			--surface.DrawLine( obbmin.x, obbmin.y, obbmax.x, obbmin.y )


end
end

end

hook.Add("HUDPaint","poa",RoyalHack.DrawBasicEsp)

function RoyalHack.NpcBestPos()

end

function RoyalHack.NpcIsDead( target )

if(target:IsNPC() ) then
	if(target:GetMoveType() == MOVETYPE_NONE) then

		return true
		
	else
		return false
		
	end
end

end

function RoyalHack.NpcAimbot(umc)


	if( GetConVarNumber("royalhack_aim_npc_targetmode") == 0) then return end
	

NPCTarget = {}

Scan = true
	for max , bAY in ipairs(ents.GetAll()) do
				if(bAY:IsNPC()) then

		



	

--Msg(target)


table.insert(NPCTarget, {npc = bAY , dist = LocalPlayer():GetPos():Distance(bAY:GetPos())})
table.SortByMember(NPCTarget , "dist" , function(a , b) return a > b end )
						target = NPCTarget[1].npc
if ( RoyalHack.NpcIsDead( target )) then
Scan = false
else
if(GetConVarNumber("royalhack_npc_aimbot") == 1 and Scan == true ) then
view = ((target:EyePos() - LocalPlayer():GetShootPos()):Angle())
umc:SetViewAngles(view)--target:GetShootPos()

end end
end
end
end



hook.Add("CreateMove", "NH", RoyalHack.NpcAimbot)