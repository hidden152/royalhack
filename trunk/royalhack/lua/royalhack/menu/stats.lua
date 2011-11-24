function Statsbox()
--self
	local box = vgui.Create( "RoyalFrame" )
		  box:SetPos( 500,400)
		  box:SetSize( 100, 95 )
		  box:SetTitle( "Stats" )
		  box:SetVisible( true )
		  box:ShowCloseButton( true )
		  function box:Paint()

	surface.SetDrawColor(Background.r,Background.g,Background.b,255)
	surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	surface.SetDrawColor(0,0,0,255)
	surface.DrawOutlinedRect(0,0,self:GetWide(),self:GetTall())
	surface.SetDrawColor(Background.r,Background.g,Background.b,255)
	surface.DrawRect(0,0,self:GetWide(),21)
	surface.SetDrawColor(0,0,0,255)
	surface.DrawOutlinedRect(0,0,self:GetWide(),21)

		  end

	local Kills = vgui.Create("DLabel",box)
		  Kills:SetPos(10,25)
		  Kills:SetSize(65,10)
		  Kills:SetText("Kills: ")

	local kill = vgui.Create("DTextEntry", box)
		  kill:SetUpdateOnType( true )
		  kill:SetPos(75,25)
		  kill:SetSize(20,10)
		  kill:SetValue(LocalPlayer():Frags())
		  kill.Think = function()
		  kill:SetValue(LocalPlayer():Frags())
	end

		  kill.Paint = function()
		  	  draw.SimpleText(""..kill:GetValue().."","DefaultSmall",0,0,Color(0,0,0,255))
		  end	

	local Deaths = vgui.Create("DLabel",box)
		  Deaths:SetPos(10,40)
		  Deaths:SetSize(65,10)
		  Deaths:SetText("Deaths: ")	

	local Death = vgui.Create("DTextEntry", box)
		  Death:SetPos(75,40)
		  Death:SetSize(20,10)
		  Death:SetUpdateOnType( true )
		  Death:SetValue(LocalPlayer():Deaths())
		  Death.Think = function()
		  Death:SetValue(LocalPlayer():Deaths())
	end
		  Death.Paint = function()
	  	  	draw.SimpleText(""..Death:GetValue().."","DefaultSmall",0,0,Color(0,0,0,255))--GetValue()
		  end	

	local KDs = vgui.Create("DLabel",box)
		  KDs:SetPos(10,60)
		  KDs:SetSize(65,10)
		  KDs:SetText("K/D: ")	

	local KD = vgui.Create("DTextEntry", box)
		  KD:SetPos(75,60)
		  KD:SetSize(20,10)
		  KD:SetUpdateOnType( true )
		  KD:SetValue(LocalPlayer():Frags()/LocalPlayer():Deaths())

		  KD.Think = function()
		  	  if((LocalPlayer():Frags()/LocalPlayer():Deaths()) == 0 ) then
		  	  KD:SetValue(0)
		  	  else
	  	  	  KD:SetValue(LocalPlayer():Frags()/LocalPlayer():Deaths())
			end
		end
	KD.Paint = function()
	draw.SimpleText(""..KD:GetValue().."","DefaultSmall",0,0,Color(0,0,0,255))--GetValue()
	end	
end

concommand.Add("royalhack_misc_stats",Statsbox)