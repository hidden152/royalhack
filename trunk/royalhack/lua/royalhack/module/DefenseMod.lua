// Defense Mod
function RoyalHack.Question()

local Window = vgui.Create( "DFrame" )
Window:SetPos( ScrW()/2,200 )
Window:SetSize( 300, 100 )
Window:SetTitle( "Defense MOD" )
Window:SetVisible( true )
Window:SetDraggable( false )
Window:ShowCloseButton( true )
Window:MakePopup()
 
local text = vgui.Create("DLabel", Window)
text:SetText("Du wirst angegriffen ? Moechtest du Gegenmassnahmen einleiten ?")
text:SetPos(50,25)
text:SizeToContents()
 
local Ja = vgui.Create("DButton",Window)
Ja:SetText( "Ja" )
Ja:SetPos(75, 30)
Ja:SetSize( 25, 10 )
Ja.DoClick = function(button )
RunConsoleCommand("royalhack_aimbot",1)
question = false
Window:Remove()
end

local Nein = vgui.Create("DButton",Window)
Nein:SetText( "Nein" )
Nein:SetPos(125, 30)
Nein:SetSize( 25, 10 )
Nein.DoClick = function(button )
RunConsoleCommand("royalhack_aimbot",0)
question = false
Window:Remove()
end

end

function RoyalHack.Defense()
	local FullHealth = 100
	
if(GetConVarNumber("royalhack_aim_defense") == 0) then 
	elseif(GetConVarNumber("royalhack_aim_defense") == 1 and GetConVarNumber("royalhack_aimbot") == 0) then
		if( LocalPlayer():Health() <= (math.floor(FullHealth / 3)) and question == true) then
			RoyalHack.Question()
			question = false
		end
		if( LocalPlayer():Health() >= FullHealth) then
			question = true
		end
	end


end

hook.Add("Think","defense",RoyalHack.Defense)