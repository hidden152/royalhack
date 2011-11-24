// Public Menu


function SimpleMenu()

	local MainFrame = vgui.Create( "RoyalFrame" )
		  MainFrame:SetPos( 500,400)
		  MainFrame:SetSize( 510, 500 )
		  MainFrame:SetTitle( "Royal Hack Public by Royal" )
		  MainFrame:SetVisible( true )
		  MainFrame:SetDraggable( true )
		  MainFrame:ShowCloseButton( true )
		  MainFrame:MakePopup()
		function MainFrame:Paint()

	surface.SetDrawColor(Background.r,Background.g,Background.b,255)
	surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	surface.SetDrawColor(0,0,0,255)
	surface.DrawOutlinedRect(0,0,self:GetWide(),self:GetTall())
	surface.SetDrawColor(Background.r,Background.g,Background.b,255)
	surface.DrawRect(0,0,self:GetWide(),21)
	surface.SetDrawColor(0,0,0,255)
	surface.DrawOutlinedRect(0,0,self:GetWide(),21)

		end
		  
	local Reiter = vgui.Create( "DPropertySheet",MainFrame)
		  Reiter:SetPos( 5, 30 )
		  Reiter:SetSize( 500, 465 )
		  
	local Aimbot = vgui.Create( "DPanelList" )
		  Aimbot:SetPos( 25, 50 )
		  Aimbot:SetSize( 500, 465 )
		  Aimbot:EnableHorizontal( false ) 
		  Aimbot:EnableVerticalScrollbar( false )
		  
	local Check1 = vgui.Create( "DCheckBoxLabel" )
		  Check1:SetPos( 10, 10 )
		  Check1:SetText( "Aimbot" )
		  Check1:SetConVar( "royalhack_aimbot" )
		  Check1:SetValue( GetConVarNumber("royalhack_aimbot") )
		  Check1:SizeToContents()

	local Checks = vgui.Create( "DCheckBoxLabel" )
		  Checks:SetPos( 10, 40 )
		  Checks:SetText( "AimKey" )
		  Checks:SetConVar( "royalhack_aim_aimkey" )
		  Checks:SetValue( GetConVarNumber("royalhack_aim_aimkey") )
		  Checks:SizeToContents() 

	local Checks1 = vgui.Create( "DCheckBoxLabel" )
		  Checks1:SetPos( 10, 40 )
		  Checks1:SetText( "Autoshoot" )
		  Checks1:SetConVar( "royalhack_aim_autoshoot" )
		  Checks1:SetValue( GetConVarNumber("royalhack_aim_autoshoot") )
		  Checks1:SizeToContents() 

	local Check2 = vgui.Create( "DCheckBoxLabel" )
		  Check2:SetPos( 10, 20 )
		  Check2:SetText( "Norecoil" )
		  Check2:SetConVar( "royalhack_aim_norecoil" )
		  Check2:SetValue( GetConVarNumber("royalhack_aim_norecoil") )
		  Check2:SizeToContents()
		  
	local Check3 = vgui.Create( "DCheckBoxLabel" )
		  Check3:SetPos( 10, 30 )
		  Check3:SetText( "Aim defense" )
		  Check3:SetConVar( "royalhack_aim_defense" )
		  Check3:SetValue( GetConVarNumber("royalhack_aim_defense") )
		  Check3:SizeToContents()
		  
	local Check4 = vgui.Create( "DCheckBoxLabel" )
		  Check4:SetPos( 10, 40 )
		  Check4:SetText( "Target NPC" )
		  Check4:SetConVar( "royalhack_npc_aimbot" )
		  Check4:SetValue( GetConVarNumber("royalhack_npc_aimbot") )
		  Check4:SizeToContents() 
		  
    local Slide1 = vgui.Create( "DNumSlider" )
		  Slide1:SetPos( 10, 60 )
		  Slide1:SetSize( 150, 50 )
		  Slide1:SetText( "Aim Distance" )
		  Slide1:SetMin( 0 )
		  Slide1:SetMax( 10000 )
		  Slide1:SetDecimals( 0 )
		  Slide1:SetConVar( "royalhack_aim_maxdistance" )
		  
	local Slide2 = vgui.Create( "DNumSlider" )
		  Slide2:SetPos( 10, 90 )
		  Slide2:SetSize( 150, 50 )
		  Slide2:SetText( "Bone Pos" )
		  Slide2:SetMin( 0 )
		  Slide2:SetMax( 10 )
		  Slide2:SetDecimals( 0 )
		  Slide2:SetConVar( "royalhack_aim_bonepos" )
		  		  
	local Slide3 = vgui.Create( "DNumSlider" )
		  Slide3:SetPos( 10, 120 )
		  Slide3:SetSize( 150, 50 )
		  Slide3:SetText( "Target Mode" )
		  Slide3:SetMin( 0 )
		  Slide3:SetMax( 2 )
		  Slide3:SetDecimals( 0 )
		  Slide3:SetConVar( "royalhack_aim_targetmode" )

		  Aimbot:AddItem( Check1 )
		  Aimbot:AddItem( Check2 )
		  Aimbot:AddItem( Check3 )
		  Aimbot:AddItem( Check4 )
		  Aimbot:AddItem( Checks )
		  Aimbot:AddItem( Checks1)
		  Aimbot:AddItem( Slide1 )
		  Aimbot:AddItem( Slide2 )
		  Aimbot:AddItem( Slide3 )
		  
	Reiter:AddSheet( "Aimbot", Aimbot, "gui/silkicons/user", false, false, "Aimbot Settings" )	  
		  
	local Esp = vgui.Create( "DPanelList" )
		  Esp:SetPos( 25, 50 )
		  Esp:SetSize( 500, 465  )
		  Esp:EnableHorizontal( false ) 
		  Esp:EnableVerticalScrollbar( false )	

	local Check5 = vgui.Create( "DCheckBoxLabel" )
		  Check5:SetPos( 10, 10 )
		  Check5:SetText( "Enemys Only" )
		  Check5:SetConVar( "royalhack_esp_enemysonly" )
		  Check5:SetValue( GetConVarNumber("royalhack_esp_enemysonly") )
		  Check5:SizeToContents()
		  
	local Check6 = vgui.Create( "DCheckBoxLabel" )
		  Check6:SetPos( 10, 20 )
		  Check6:SetText( "Box Esp" )
		  Check6:SetConVar( "royalhack_esp_box" )
		  Check6:SetValue( GetConVarNumber("royalhack_esp_box") )
		  Check6:SizeToContents()		 

	local Check7 = vgui.Create( "DCheckBoxLabel" )
		  Check7:SetPos( 10, 30 )
		  Check7:SetText( "Name Esp" )
		  Check7:SetConVar( "royalhack_esp_name" )
		  Check7:SetValue( GetConVarNumber("royalhack_esp_name") )
		  Check7:SizeToContents()
		  
	local Check8 = vgui.Create( "DCheckBoxLabel" )
		  Check8:SetPos( 10, 40 )
		  Check8:SetText( "Health Esp" )
		  Check8:SetConVar( "royalhack_esp_health" )
		  Check8:SetValue( GetConVarNumber("royalhack_esp_health") )
		  Check8:SizeToContents()	

	local Check9 = vgui.Create( "DCheckBoxLabel" )
		  Check9:SetPos( 10, 50 )
		  Check9:SetText( "Armor Esp" )
		  Check9:SetConVar( "royalhack_esp_armor" )
		  Check9:SetValue( GetConVarNumber("royalhack_esp_armor") )
		  Check9:SizeToContents()
		  
	local Check10 = vgui.Create( "DCheckBoxLabel" )
		  Check10:SetPos( 10, 60 )
		  Check10:SetText( "Distance Esp" )
		  Check10:SetConVar( "royalhack_esp_distance" )
		  Check10:SetValue( GetConVarNumber("royalhack_esp_distance") )
		  Check10:SizeToContents()			

	local Check11 = vgui.Create( "DCheckBoxLabel" )
		  Check11:SetPos( 10, 70 )
		  Check11:SetText( "Iluminationlight Esp" )
		  Check11:SetConVar( "royalhack_esp_iluminationlight" )
		  Check11:SetValue( GetConVarNumber("royalhack_esp_iluminationlight") )
		  Check11:SizeToContents()
		  
	local Slide4 = vgui.Create( "DNumSlider" )
		  Slide4:SetPos( 10, 90 )
		  Slide4:SetSize( 150, 50 )
		  Slide4:SetText( "Iluminationlight Size" )
		  Slide4:SetMin( 0 )
		  Slide4:SetMax( 500 )
		  Slide4:SetDecimals( 0 )
		  Slide4:SetConVar( "royalhack_esp_iluminationlight_size" )
		  
	local Slide5 = vgui.Create( "DNumSlider" )
		  Slide5:SetPos( 10, 125 )
		  Slide5:SetSize( 150, 50 )
		  Slide5:SetText( "Iluminationlight Bright" )
		  Slide5:SetMin( 0 )
		  Slide5:SetMax( 20 )
		  Slide5:SetDecimals( 0 )
		  Slide5:SetConVar( "royalhack_esp_iluminationlight_bright" )

	local Check12 = vgui.Create( "DCheckBoxLabel" )
		  Check12:SetPos( 10, 135 )
		  Check12:SetText( "Cham Esp" )
		  Check12:SetConVar( "royalhack_esp_chams" )
		  Check12:SetValue( GetConVarNumber("royalhack_esp_chams") )
		  Check12:SizeToContents()		

	local Check14 = vgui.Create( "DCheckBoxLabel" )
		  Check14:SetPos( 10, 145 )
		  Check14:SetText( "Barrel Esp" )
		  Check14:SetConVar( "royalhack_esp_barrel" )
		  Check14:SetValue( GetConVarNumber("royalhack_esp_barrel") )
		  Check14:SizeToContents()		

		  
	local Check13 = vgui.Create( "DCheckBoxLabel" )
		  Check13:SetPos( 10, 155 )
		  Check13:SetText( "Bone Esp" )
		  Check13:SetConVar( "royalhack_esp_bone" )
		  Check13:SetValue( GetConVarNumber("royalhack_esp_bone") )
		  Check13:SizeToContents()			
		  
	local Multi = vgui.Create( "DMultiChoice" )
		  Multi:SetPos(10,180)
		  Multi:SetSize( 100, 20 )
		  Multi:SetConVar("royalhack_esp_colormod")
		  Multi:AddChoice("Friends Visible")
		  Multi:AddChoice("Friends Invisible")
		  Multi:AddChoice("Enemys Visible")
		  Multi:AddChoice("Enemys Invisible")
		  
	local colorCircle = vgui.Create( "DColorCircle" )
		  colorCircle:SetPos( 10, 200 )
		  colorCircle:SetSize(150,200)
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
		local Multi1 = vgui.Create( "DMultiChoice" )
		Multi1:SetSize( 100, 20 )
		Multi1:SetConVar( "royalhack_esp_font" )
		for k,fonts in ipairs(Font) do
		Multi1:AddChoice(fonts)
		end

		  Esp:AddItem( Check5 )
		  Esp:AddItem( Check6 )
		  Esp:AddItem( Check7 )
		  Esp:AddItem( Check8 )
		  Esp:AddItem( Check9 )
		  Esp:AddItem( Check10 )
		  Esp:AddItem( Check11 )
		  Esp:AddItem( Slide4 )
		  Esp:AddItem( Slide5 )
		  Esp:AddItem( Check12 )
		  Esp:AddItem( Check13 )
		  Esp:AddItem( Check14 )
		  Esp:AddItem( Multi )
		  Esp:AddItem( Multi1 )
		  Esp:AddItem( colorCircle )
		  
	Reiter:AddSheet( "ESP", Esp, "gui/silkicons/user", false, false, "Esp Settings" )	 
	
 local Misc = vgui.Create( "DPanelList" )
		Misc:SetPos( 25, 50 )
		 Misc:SetSize( 250, 250 ) 
		 
	local Check15 = vgui.Create( "DCheckBoxLabel" )
		  Check15:SetPos( 10, 10 )
		  Check15:SetText( "Radar" )
		  Check15:SetConVar( "royalhack_misc_radar_on" )
		  Check15:SetValue( GetConVarNumber("royalhack_misc_radar_on") )
		  Check15:SizeToContents()

		  	local Check23 = vgui.Create( "DCheckBoxLabel" )
		  Check23:SetPos( 10, 10 )
		  Check23:SetText( "Remove Sky" )
		  Check23:SetConVar( "royalhack_misc_sky" )
		  Check23:SetValue( GetConVarNumber("royalhack_misc_sky") )
		  Check23:SizeToContents()

		  	local Check22 = vgui.Create( "DCheckBoxLabel" )
		  Check22:SetPos( 10, 10 )
		  Check22:SetText( "Stats Box" )
		  Check22:SetConVar( "royalhack_misc_stats" )
		  Check22:SetValue( GetConVarNumber("royalhack_misc_stats") )
		  Check22:SizeToContents()
	
		local Slide6 = vgui.Create( "DNumSlider" )
		  Slide6:SetPos( 10, 30 )
		  Slide6:SetSize( 150, 50 )
		  Slide6:SetText( "Radar Width" )
		  Slide6:SetMin( 0 )
		  Slide6:SetMax( 300 )
		  Slide6:SetDecimals( 0 )
		  Slide6:SetConVar( "royalhack_misc_radar_width" )
		  
		local Slide7 = vgui.Create( "DNumSlider" )
		  Slide7:SetPos( 10, 50 )
		  Slide7:SetSize( 150, 50 )
		  Slide7:SetText( "Radar Hight" )
		  Slide7:SetMin( 0 )
		  Slide7:SetMax( 300 )
		  Slide7:SetDecimals( 0 )
		  Slide7:SetConVar( "royalhack_misc_radar_hight" )
		  
		local Slide8 = vgui.Create( "DNumSlider" )
		  Slide8:SetPos( 10, 70 )
		  Slide8:SetSize( 150, 50 )
		  Slide8:SetText( "Radar X" )
		  Slide8:SetMin( 0 )
		  Slide8:SetMax( ScrW() )
		  Slide8:SetDecimals( 0 )
		  Slide8:SetConVar( "royalhack_misc_radar_x" )
		  
		local Slide9 = vgui.Create( "DNumSlider" )
		  Slide9:SetPos( 10, 90 )
		  Slide9:SetSize( 150, 50 )
		  Slide9:SetText( "Radar Y" )
		  Slide9:SetMin( 0 )
		  Slide9:SetMax( ScrH() )
		  Slide9:SetDecimals( 0 )
		  Slide9:SetConVar( "royalhack_misc_radar_y" )
		  
		local Slide10 = vgui.Create( "DNumSlider" )
		  Slide10:SetPos( 10, 110 )
		  Slide10:SetSize( 150, 50 )
		  Slide10:SetText( "Radar Radius" )
		  Slide10:SetMin( 0 )
		  Slide10:SetMax( 9999 )
		  Slide10:SetDecimals( 0 )
		  Slide10:SetConVar( "royalhack_misc_radar_radius" )
		  
	local Check16 = vgui.Create( "DCheckBoxLabel" )
		  Check16:SetPos( 10, 130 )
		  Check16:SetText( "Killmessage" )
		  Check16:SetConVar( "royalhack_misc_killmessage" )
		  Check16:SetValue( GetConVarNumber("royalhack_misc_killmessage") )
		  Check16:SizeToContents()

	local Check17 = vgui.Create( "DCheckBoxLabel" )
		  Check17:SetPos( 10, 150 )
		  Check17:SetText( "Print Killmessage Clientside" )
		  Check17:SetConVar( "royalhack_misc_killmessage_client" )
		  Check17:SetValue( GetConVarNumber("royalhack_misc_killmessage_client") )
		  Check17:SizeToContents()

	local Check18 = vgui.Create( "DCheckBoxLabel" )
		  Check18:SetPos( 10, 170 )
		  Check18:SetText( "Print Killmessage Serverside" )
		  Check18:SetConVar("royalhack_misc_killmessage_server")
		  Check18:SetValue( GetConVarNumber("royalhack_misc_killmessage_server") )
		  Check18:SizeToContents()		
		  
		  	local Check19 = vgui.Create( "DCheckBoxLabel" )
		  Check19:SetPos( 10, 170 )
		  Check19:SetText( "Quake Sounds" )
		  Check19:SetConVar("royalhack_sound_quake")
		  Check19:SetValue( GetConVarNumber("royalhack_sound_quake") )
		  Check19:SizeToContents()
		  
		  	local Check20 = vgui.Create( "DCheckBoxLabel" )
		  Check20:SetPos( 10, 170 )
		  Check20:SetText( "Print Quake Sounds Clientside" )
		  Check20:SetConVar("royalhack_sound_quake_chatprint")
		  Check20:SetValue( GetConVarNumber("royalhack_sound_quake_chatprint") )
		  Check20:SizeToContents()
		  
		  	local Check21 = vgui.Create( "DCheckBoxLabel" )
		  Check21:SetPos( 10, 170 )
		  Check21:SetText( "Print Quake HudText" )
		  Check21:SetConVar("royalhack_sound_quake_hudtext")
		  Check21:SetValue( GetConVarNumber("royalhack_sound_quake_hudtext") )
		  Check21:SizeToContents()  

			local Multi3 = vgui.Create( "DMultiChoice" )
		Multi3:SetSize( 100, 20 )
		Multi3:SetConVar( "royalhack_sound_quake_path" )
		Multi3:AddChoice("new")
		Multi3:AddChoice("female")
		Multi3:AddChoice("german")
		Multi3:AddChoice("dark")
		  
	local textbox = vgui.Create("DTextEntry")
		  textbox:SetMultiline(false)
		  textbox:SetText(GetConVarString("royalhack_misc_killmessage_text"))
		  textbox:SetEditable(true)
		  textbox:SetPos(10,190)
		  textbox.OnEnter = function()
			RunConsoleCommand("royalhack_misc_killmessage_text",textbox:GetValue())
		end
		
		  Reiter:AddSheet( "Misc", Misc, "gui/silkicons/user", false, false, "Misc Settings" )

		   Misc:AddItem( Check15 )
		   Misc:AddItem( Check22 )
		  Misc:AddItem( Check23 )
		  Misc:AddItem( Slide6 )
		  Misc:AddItem( Slide7 )
		  Misc:AddItem( Slide8 )
		  Misc:AddItem( Slide9 )
		  Misc:AddItem( Slide10 )
		  Misc:AddItem( Check16 )
		  Misc:AddItem( Check17 )
		  Misc:AddItem( Check18 )
		  Misc:AddItem( Check19 )
		  Misc:AddItem( Check20 )
		  Misc:AddItem( Check21 )
		  Misc:AddItem( Multi3 )
	Misc:AddItem( textbox )
	
	 local Targets = vgui.Create( "DPanelList" )
		Targets:SetPos( 25, 50 )
		 Targets:SetSize( 250, 250 ) 
		 Targets:EnableHorizontal( false )
		Targets:EnableVerticalScrollbar( true )
		 Targets:SetSpacing( 5 )
		  
		  			local List = vgui.Create( "DPanelList" )
			  List:SetPos( 25,25 )
			  List:SetSize( 200, 200 )
			  List:SetSpacing( 5 )
			  List:EnableHorizontal( false )
			  List:EnableVerticalScrollbar( true )
			

	local List1 = vgui.Create( "DPanelList")
			  List1:SetPos( 235,25 )
			  List1:SetSize( 200, 200 )
			  List1:SetSpacing( 5 ) 
			  List1:EnableHorizontal( false )
			  List1:EnableVerticalScrollbar( true )
			 

				for k,v in ipairs(player.GetAll()) do
				if(!v:IsValid()) then
				else
					a = vgui.Create("DOption")
					a:SetPos(10,10)
					a:SetSize(50,100)
					a:TextSize(v:GetName())
					a:SetImage(v)
					a:Name( v:GetName()	)
					a:SteamId(v:SteamID())
					a:SizeToContents()
						Targets:AddItem( a )
	
							a.DoRightClick = function()
		
								local Menu = DermaMenu() 
									local sub = Menu:AddSubMenu("Add to" )
												sub:AddOption("Friend",function() AddFriend(v) List:Clear()	for o,l in ipairs(Friends) do

						local v = vgui.Create("DOption")
							  v:SetSize(200,100)
							  v:TextSize(l:GetName())
							  v:SetImage(l)
							  v:Name( l:GetName()	)
							  v:SteamId(l:SteamID())
							  v:SizeToContents()
									List:AddItem( v )
	
										v.DoRightClick = function()
		
											local Menu = DermaMenu() 
													local sub = Menu:AddOption("Delete",function() v:Close() DeleteFriend(table.KeyFromValue(Friends,l)) end )

											Menu:Open()
									end
						end end)
												sub:AddOption("Enemy",function() AddEnemy(v) List1:Clear() for f,g in ipairs(Enemys) do

						local a = vgui.Create("DOption")
							  a:SetSize(200,100)
							  a:TextSize(g:GetName())
							  a:SetImage(g)
							  a:Name( g:GetName() )
							  a:SteamId(g:SteamID())
							  a:SizeToContents()
									List1:AddItem( a )
	
										a.DoRightClick = function()
		
											local Menu = DermaMenu() 
													local sub = Menu:AddSubMenu("Delete",function() a:Close() DeleteEnemy(table.KeyFromValue(Enemys,g)) end )
											Menu:Open()
									end
						end end)
								Menu:Open()
		end
	end
end


					for o,l in ipairs(Friends) do
					if(l:IsValid()) then
					else
						local v = vgui.Create("DOption")
							  v:SetSize(200,100)
							  v:TextSize(l:GetName())
							  v:SetImage(l)
							  v:Name( l:GetName()	)
							  v:SteamId(l:SteamID())
							  v:SizeToContents()
									List:AddItem( v )
	
										v.DoRightClick = function()
		
											local Menu = DermaMenu() 
													local sub = Menu:AddOption("Delete",function() v:Close() DeleteFriend(table.KeyFromValue(Friends,l)) end )

											Menu:Open()
									end
						end
	end
					for f,g in ipairs(Enemys) do
					if(!g:IsValid()) then
					else
						local a = vgui.Create("DOption")
							  a:SetSize(200,100)
							  a:TextSize(g:GetName())
							  a:SetImage(g)
							  a:Name( g:GetName() )
							  a:SteamId(g:SteamID())
							  a:SizeToContents()
									List1:AddItem( a )
	
										a.DoRightClick = function()
		
											local Menu = DermaMenu() 
													local sub = Menu:AddSubMenu("Delete",function() a:Close() DeleteEnemy(table.KeyFromValue(Enemys,g)) end )
											Menu:Open()
									end
						end
end
		  Reiter:AddSheet( "Targets", Targets, "gui/silkicons/user", false, false, "Target Settings" )
		  Reiter:AddSheet( "Friends", List, "gui/silkicons/user", false, false, "Friends List" )
		  Reiter:AddSheet( "Enemys", List1, "gui/silkicons/user", false, false, "Enemys List" )
		  
		  	  local Settings = vgui.Create( "DPanelList" )
			Settings:SetPos( 25, 50 )
			 Settings:SetSize( 250, 250 ) 
			  Settings:SetSpacing( 5 )
			  Settings:EnableHorizontal( false )
			  Settings:EnableVerticalScrollbar( true )

	  local Colo = vgui.Create("DColorMixer")
		  Colo:SetPos( 10, 30 )
		  Colo:SetSize(250,250)
		  Colo.PaintOver = function()
		  Colo.a = 255 - (Colo.AlphaBar:GetSlideY() * 255)
	if( Colo:GetColor() == nil ) then return false
	
	else
		if(GetConVarString("royalhack_menu_colormod") == "Background") then
		Background = Color(Colo:GetColor().r,Colo:GetColor().g,Colo:GetColor().b,Colo.a)
		elseif(GetConVarString("royalhack_menu_colormod") == "Label") then
		Labels = Color(Colo:GetColor().r,Colo:GetColor().g,Colo:GetColor().b,Colo.a)
		elseif(GetConVarString("royalhack_menu_colormod") == "Button") then
		Buttons = Color(Colo:GetColor().r,Colo:GetColor().g,Colo:GetColor().b,Colo.a)
		elseif(GetConVarString("royalhack_menu_colormod") == "Tab") then
		Tab = Color(Colo:GetRGB().r,Colo:GetColor().g,Colo:GetRGB().b,GetColor,Colo.a)
		end
	end
end
	Settings:AddItem(Colo)

			local Multi2 = vgui.Create( "DMultiChoice" )
		Multi2:SetSize( 100, 20 )
		Multi2:SetConVar( "royalhack_menu_colormod" )
		Multi2:AddChoice("Background")
		Settings:AddItem(Multi2)

		 local Slides = vgui.Create( "DNumSlider" )
		  Slides:SetPos( 10, 50 )
		  Slides:SetSize( 150, 50 )
		  Slides:SetText( "Crosshair" )
		  Slides:SetMin( 0 )
		  Slides:SetMax( 5 )
		  Slides:SetDecimals( 0 )
		  Slides:SetConVar( "royalhack_esp_crosshair" )
		  Settings:AddItem(Slides)
		    Reiter:AddSheet( "Settings", Settings, "gui/silkicons/user", false, false, "Settings" )

		/*  local Credits = vgui.Create( "DPanelList" )
		Credits:SetPos( 25, 50 )
		 Credits:SetSize( 250, 250 ) 
		 Credits:EnableHorizontal( false )
		Credits:EnableVerticalScrollbar( true )
		 Credits:SetSpacing( 5 )
		 */
		-- Reiter:AddSheet( "Credits", Credits, "gui/silkicons/user", false, false, "Credits" )
 
	-- local Settings = vgui.Create( "DPanel" )
		  -- Settings:SetPos( 25, 50 )
		  -- Settings:SetSize( 250, 250 )
end

concommand.Add("royalhack_menu",SimpleMenu)