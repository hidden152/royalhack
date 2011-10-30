//CrossHairManager
function RoyalHack.Crosshair()

if (GetConVarNumber("royalhack_esp_crosshair") == 0) then return end
if (GetConVarNumber("royalhack_esp_crosshair") == 1) then
		surface.SetDrawColor( 43, 43, 255, 255)
		surface.DrawRect((ScrW() / 2) - 25,(ScrH() /2 ),50,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )- 25,1,50)
		surface.DrawRect((ScrW() / 2) - 10,(ScrH() /2 ),20,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-10,1,20)
		surface.SetDrawColor( 0, 255, 0, 255)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-5,1,11)
		surface.DrawRect((ScrW() / 2) - 5,(ScrH() /2 ),11,1)
elseif (GetConVarNumber("royalhack_esp_crosshair") == 2) then
		surface.SetDrawColor( 255, 0, 0, 255)
		surface.DrawRect((ScrW() / 2) - 9,(ScrH() /2 ),9,2)
		surface.DrawRect((ScrW() / 2) +2,(ScrH() /2 ),9,2)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-9,2,9)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )+2,2,9)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 ),2,2)
elseif (GetConVarNumber("royalhack_esp_crosshair") == 3) then
		surface.SetDrawColor( 0, 0, 0, 255)
		surface.DrawRect((ScrW() / 2) - 14,(ScrH() /2 ),11,2)
		surface.DrawRect((ScrW() / 2) + 5,(ScrH() /2 ),11,2)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-14,2,11)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )+5,2,11)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 ),2,2)
elseif (GetConVarNumber("royalhack_esp_crosshair") == 4) then
		surface.SetDrawColor( 0, 255, 0, 255)
		surface.DrawRect((ScrW() / 2) - 25,(ScrH() /2 ),50,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-25,1,50)
		surface.DrawRect((ScrW() / 2) - 10,(ScrH() /2 ),20,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-10,1,20)
elseif (GetConVarNumber("royalhack_esp_crosshair") == 4) then
		surface.SetDrawColor( 0, 255, 0, 255)
		surface.DrawRect((ScrW() / 2) - 25,(ScrH() /2 ),50,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-25,1,50)
		surface.DrawRect((ScrW() / 2) - 10,(ScrH() /2 ),20,1)
		surface.DrawRect((ScrW() / 2),(ScrH() /2 )-10,1,20)		
elseif (GetConVarNumber("royalhack_esp_crosshair") == 5) then
		surface.SetDrawColor( 0, 255, 0, 255)
		surface.DrawLine((ScrW() / 2),(ScrH() / 2)-43,(ScrW() / 2)-30,(ScrH() / 2)+43)
		surface.DrawLine((ScrW() / 2),(ScrH() / 2)-43,(ScrW() / 2)+30,(ScrH() / 2)+43)--
		surface.DrawLine((ScrW() / 2)-43,(ScrH() / 2),(ScrW() / 2)+43,(ScrH() / 2))
		surface.DrawLine((ScrW() / 2)-43,(ScrH() / 2),(ScrW() / 2)+30,(ScrH() / 2)+43)
		surface.DrawLine((ScrW() / 2)+43,(ScrH() / 2),(ScrW() / 2)-30,(ScrH() / 2)+43)
	end
end

hook.Add("HUDPaintBackground", "rcros", RoyalHack.Crosshair)

/*
speichere Layer als position
Mit glon system erstellte crosshairs ...

*/
function RoyalHack.DynamicCrosshair()

DCrosshair = {}
--DCrosshair.Layertyp 




end