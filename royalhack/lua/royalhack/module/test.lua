function RoyalMenu()

	local Main = vgui.Create( "RoyalMenu" )
		  Main:SetPos( 500,400)
		  Main:SetSize( 500, 500 )
		  Main:SetTitle( "Royal Hack Public by Royal" )
		  Main:SetVisible( true )
		  Main:SetDraggable( true )
		  Main:ShowCloseButton( true )
		  Main:MakePopup()

end

concommand.Add("cr_royalmenu",RoyalMenu)