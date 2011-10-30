// Spinbot 

Spins = {{ pitch = 360 , yaw = -180 , roll = 180 },
		 { pitch = -360 , yaw = 180 , roll = -180 }}

XAXE = 0
YAXE = 0
Blickrichtung = Angle( 0 , 0 , 0 )

function Spinbot( cmd )

if(GetConVarNumber("royalhack_spinbot") == 0 ) then return end
local PlayerView = cmd:GetViewAngles()
local pitch = PlayerView.p
local yaw = PlayerView.y
local roll = PlayerView.r


cmd:SetViewAngles(Angle(0,math.random(180,360),0))
Blickrichtung = cmd:GetViewAngles()

if(Blickrichtung.y < 270 ) then
	
elseif(Blickrichtung.y > 270 ) then
	
	end

end

hook.Add("CreateMove","spinbot",Spinbot)

function Mouse( cmd )



XAXE = cmd:GetMouseX()
YAXE = cmd:GetMouseY()*-1
if YAXE or XAXE > 0 then

end

--Msg(cmd:GetForwardMove())
--cmd:SetForwardMove(10000)
end

hook.Add("CreateMove","cord",Mouse)
value = 180
value2 = 180
function NormaliziseView(ply, pos, angles, fov)
if(GetConVarNumber("royalhack_spinbot") == 0 ) then return end
local x = gui.MouseX() * - 1
local y = gui.MouseY()

value = value - YAXE
value2 = value2 - XAXE
   local view = {}
    view.origin = pos
    view.angles = angles
	view.angles.r = 0
	view.angles.p = value
	view.angles.y = value2
    view.fov = fov
 
    return view

	end
hook.Add("CalcView","normalview",NormaliziseView)