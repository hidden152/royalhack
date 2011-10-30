
function ColorControl()

	local panel = vgui.Create( "RoyalFrame" )
	panel:SetPos( 500,400)
	panel:SetSize( 500, 300 )
	panel:SetTitle( "ColorControl" )
	panel:SetVisible( true )
	panel:SetDraggable( true )
	panel:ShowCloseButton( true )
	panel:MakePopup()
	
	local Boarder = vgui.Create( "DPanelList", panel )
		  Boarder:SetPos( 25,25 )
		  Boarder:SetSize( 200, 150 )
		  Boarder:SetSpacing( 5 )
		  Boarder:EnableHorizontal( false )
		  Boarder:EnableVerticalScrollbar( true )
		  Boarder.Paint = function()
		  surface.SetDrawColor(0,0,0,255)
		  surface.DrawOutlinedRect(0,0,Boarder:GetWide(),Boarder:GetTall())
		  end
	
			  
		local rot
		local gruen
		local blau
			for rot=20,240 do
		--		Msg("Rot Color("..rot..",0,0,255)\n")
				local i = vgui.Create( "DColorButton",Boarder )
					  i:SetSize(198,20)
					  i:SetColor(Color(rot,0,0,255))
					  i:SizeToContents()
					  i.DoClick = function()
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(i:GetColor().r,i:GetColor().g,i:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(i:GetColor().r,i:GetColor().g,i:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(i:GetColor().r,i:GetColor().g,i:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(i:GetColor().r,i:GetColor().g,i:GetColor().b,255)
					  end
				end
					  Boarder:AddItem( i )
			end
			rot= 240
			if(rot >= 240) then
				for gruen=20,240 do
		--		Msg("GRUEN Color(0,"..gruen..",0,255)\n")	
				local g = vgui.Create( "DColorButton",Boarder )
					  g:SetSize(198,20)
					  g:SetColor(Color(0,gruen,0,255))
					  g:SizeToContents()
					  g.DoClick = function()
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(g:GetColor().r,g:GetColor().g,g:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(g:GetColor().r,g:GetColor().g,g:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(g:GetColor().r,g:GetColor().g,g:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(g:GetColor().r,g:GetColor().g,g:GetColor().b,255)
					  end
				end
					  Boarder:AddItem( g )
			end
				end
				gruen= 240
				if(gruen >= 240) then
					for blau=20,240 do
			--	Msg(" Blau Color(0,0,"..blau..",255)\n")
				local b = vgui.Create( "DColorButton",Boarder )
					  b:SetSize(198,20)
					  b:SetColor(Color(0,0,blau,255))
					  b:SizeToContents()
					  b.DoClick = function()
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(b:GetColor().r,b:GetColor().g,b:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(b:GetColor().r,b:GetColor().g,b:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(b:GetColor().r,b:GetColor().g,b:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(b:GetColor().r,b:GetColor().g,b:GetColor().b,255)
					  end
				end
					  Boarder:AddItem( b )
					end
				end	
					for gelb=20,240 do
				local ge = vgui.Create( "DColorButton",Boarder )
					  ge:SetSize(198,20)
					  ge:SetColor(Color(gelb,gelb,0,255))
					  ge:SizeToContents()
					  ge.DoClick = function()
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(ge:GetColor().r,ge:GetColor().g,ge:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(ge:GetColor().r,ge:GetColor().g,ge:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(ge:GetColor().r,ge:GetColor().g,ge:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(ge:GetColor().r,ge:GetColor().g,ge:GetColor().b,255)
					  end
				end
					  Boarder:AddItem( ge )	
					end
					for lila=20,240 do
				local li = vgui.Create( "DColorButton",Boarder )
					  li:SetSize(198,20)
					  li:SetColor(Color(lila,0,lila,255))
					  li:SizeToContents()
					  li.DoClick = function()
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(li:GetColor().r,li:GetColor().g,li:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(li:GetColor().r,li:GetColor().g,li:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(li:GetColor().r,li:GetColor().g,li:GetColor().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(li:GetColor().r,li:GetColor().g,li:GetColor().b,255)
					  end
				end
					  Boarder:AddItem( li )	
					end
	
		local Team= vgui.Create( "DMultiChoice", panel)
	Team:SetPos(260,270)
	Team:SetSize( 100, 20 )
	Team:SetConVar("royalhack_esp_colormod")
	Team:AddChoice("Friends Visible")
	Team:AddChoice("Friends Invisible")
	Team:AddChoice("Enemys Visible")
	Team:AddChoice("Enemys Invisible")
	
	local Fonts= vgui.Create( "DMultiChoice", panel)
	Fonts:SetPos(380,270)
	Fonts:SetSize( 100, 20 )
	Fonts:SetConVar( "royalhack_esp_font" )
	for k,fonts in ipairs(Font) do
	Fonts:AddChoice(fonts)
	end
	
	local colorCircle = vgui.Create( "DColorCircle", panel )
	colorCircle:SetPos( 240, 25 )
	colorCircle:SetSize( 250, 250 )
	colorCircle.PaintOver = function()
	if( colorCircle:GetRGB() == nil ) then return false
	
	else
		if(GetConVarString("royalhack_esp_colormod") == "Friends Visible") then
		Cheat_TeamV = Color(colorCircle:GetRGB().r,colorCircle:GetRGB().g,colorCircle:GetRGB().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Friends Invisible") then
		Cheat_TeamIV = Color(colorCircle:GetRGB().r,colorCircle:GetRGB().g,colorCircle:GetRGB().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Visible") then
		Cheat_EnemyV = Color(colorCircle:GetRGB().r,colorCircle:GetRGB().g,colorCircle:GetRGB().b,255)
		elseif(GetConVarString("royalhack_esp_colormod") == "Enemys Invisible") then
		Cheat_EnemyIV = Color(colorCircle:GetRGB().r,colorCircle:GetRGB().g,colorCircle:GetRGB().b,255)
		end
	end
end


	--Team:SetConVar( "ch_Font" )


end

concommand.Add("royalhack_colormenu",ColorControl)
