function SpyCrossbow()

//models/crossbow_bolt.mdl

local targetmodel = "models/crossbow_bolt.mdl"
local target = ents.FindByModel(targetmodel)

if(ValidEntity(target)) then
local pos =	target:GetPos()
local apos = LocalPlayer():GetAimVector()
	surface.SetDrawColor(0,0,0,255)
	surface.DrawLine(apos.x,apos.y,pos.x,pos.y)
end
Msg(""..pos.x.." "..pos.y.."\n")
end

hook.Add("HUDPaint","spyc",SpyCrossbow)