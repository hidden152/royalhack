//TargetList



function AddFriend( target )
	if(table.HasValue(Friends,target) or table.HasValue(Enemys,target)) then
		--Msg("Error: Item exists anymore! \n")
	else
		table.insert(Friends,target)
	end
end

function AddEnemy( target )
	if(table.HasValue(Enemys,target) or table.HasValue(Friends,target)) then
		--Msg("Error: Item exists anymore! \n")
	else
		table.insert(Enemys,target)
	end
end

function Team()

for k,v in ipairs(player.GetAll()) do
	if v == LocalPlayer() then
	
	elseif v:Team() == LocalPlayer():Team() then
		 AddFriend( v )
	elseif v:Team() != LocalPlayer():Team() then
		AddEnemy( v )
	end

end
end

concommand.Add("cl_royal",Team)
function DeleteFriend( target )
	table.remove(Friends,target)
end

function DeleteEnemy( target )
	table.remove(Enemys,target)
end

function RoyalHack.TargetList()

	local MainFrame = vgui.Create( "RoyalFrame" )
		  MainFrame:SetPos( 500,400)
		  MainFrame:SetSize( 250, 500 )
		  MainFrame:SetTitle( "RoyalHack TargetList" )
		  MainFrame:SetVisible( true )
		  MainFrame:SetDraggable( true )
		  MainFrame:ShowCloseButton( true )
		  MainFrame:MakePopup()

	local Update = vgui.Create("DButton",MainFrame)
		  Update:SetPos(280,135)
		  Update:SetSize(20,20)
		  Update:SetText("Update")
		  Update.DoClick = function ()
		  
		  end
		
		  
	local List = vgui.Create( "DPanelList", MainFrame )
		  List:SetPos( 25,25 )
		  List:SetSize( 200, 200 )
		  List:SetSpacing( 5 )
		  List:EnableHorizontal( false )
		  List:EnableVerticalScrollbar( true )


				for k,v in ipairs(player.GetAll()) do

					a = vgui.Create("DOption")
					a:SetSize(200,100)
					a:TextSize(v:GetName())
					a:SetImage(v)
					a:Name( v:GetName()	)
					a:SteamId(v:SteamID())
					a:SizeToContents()
						List:AddItem( a )
	
							a.DoRightClick = function()
		
								local Menu = DermaMenu() 
									local sub = Menu:AddSubMenu("Add to" )
												sub:AddOption("Friend",function() AddFriend(v) end)
												sub:AddOption("Enemy",function() AddEnemy(v) end)
								Menu:Open()
		end
	end
end
concommand.Add("royalhack_targetlist",RoyalHack.TargetList)

/*

Für interne Gegner Freunde Liste -> Esp Farben vll einen Anfangsbestand and Gegner unf Freunden ?!

*/

//FIll friend || ENEMy
function FillTeam()

	for k,v in ipairs(player.GetAll()) do
		if( v:Team() == LocalPlayer():Team() ) then
			AddFriend( v )
		elseif( v:Team() != LocalPlayer():Team() ) then
			AddEnemy( v )
			end
		end
end


function RoyalHack.EnemyAndFriend()

		local MainFrame = vgui.Create( "RoyalFrame" )
			  MainFrame:SetPos( 500,400)
			  MainFrame:SetSize( 470, 250 )
			  MainFrame:SetTitle( "RoyalHack Enemy&Friend List" )
			  MainFrame:SetVisible( true )
			  MainFrame:SetDraggable( true )
			  MainFrame:ShowCloseButton( true )
			  MainFrame:MakePopup()

		local List = vgui.Create( "DPanelList", MainFrame )
			  List:SetPos( 25,25 )
			  List:SetSize( 200, 200 )
			  List:SetSpacing( 5 )
			  List:EnableHorizontal( false )
			  List:EnableVerticalScrollbar( true )

		local List1 = vgui.Create( "DPanelList", MainFrame )
			  List1:SetPos( 235,25 )
			  List1:SetSize( 200, 200 )
			  List1:SetSpacing( 5 ) 
			  List1:EnableHorizontal( false )
			  List1:EnableVerticalScrollbar( true )

					for o,l in ipairs(Friends) do

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
													local sub = Menu:AddOption("Delete",function() v:Close() DeleteFriend(l[o]) end )

											Menu:Open()
									end
						end
	
					for f,g in ipairs(Enemys) do

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
													local sub = Menu:AddSubMenu("Delete",function() a:Close() DeleteEnemy(g[f]) end )
											Menu:Open()
									end
						end
end

concommand.Add("royalhack_enemyandfriend",RoyalHack.EnemyAndFriend)