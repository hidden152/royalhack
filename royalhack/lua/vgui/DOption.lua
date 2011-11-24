
PANEL = {}

/*
Author: ALL YOU CAN EAT
Version: 1.0 Beta
Build: 24.04.2011 20:16
Info: Advanced ComboBox
*/

AccessorFunc( PANEL, "m_bDeleteOnClose", 	"DeleteOnClose", 	FORCE_BOOL )

function PANEL:Init()

self.PlayerImage = vgui.Create( "AvatarImage", self)
self.PlayerName = vgui.Create("DLabel", self )
self.PlayerSteamId = vgui.Create("DLabel", self )
-- self.HealthBar = vgui.Create("ProgressBar",self)
self.StringSize	= nil or 0
end

function PANEL:SetMinMax( max, min )

self.HealthBar:SetMax( max )
self.HealthBar:SetMin( min )

end

function PANEL:SetValue( val )

self.HealthBar:SetValue( val )

end



function PANEL:Name( name )


self.PlayerName:SetText( name )

end

function PANEL:TextSize( string )

Size = string.len( string )
	if(Size <= 0 ) then return end
		Size = (Size*8)
	self.StringSize = Size
return Size

end

function PANEL:SteamId( name )


self.PlayerSteamId:SetText( name )

end

/*---------------------------------------------------------
	GetCourserStat
---------------------------------------------------------*/
function PANEL:GetCourserStat( )

if self.MouseinRange == true then
	return true
elseif self.MouseinRange == false then
	return false
end

end

function PANEL:Think()



end

function PANEL:SetImage( pl )

self.PlayerImage:SetPlayer( pl )

end

function PANEL:Close()

	self:SetVisible( false )

	if ( self:GetDeleteOnClose() ) then
		self:Remove()
	end

end

function PANEL:SetSelected( bool )


end

function PANEL:GetSelected()



end

function PANEL:DoRightClick()

end

--self.m_Min
function PANEL:OnMousePressed( mcode )

if(mcode == MOUSE_RIGHT ) then
	self.DoRightClick()
end

end


function PANEL:OnCursorEntered( )
self.MouseinRange = true
	self.PaintOverOld = self.PaintOver
	self.PaintOver = self.PaintOverHovered

end

function PANEL:OnCursorExited( )
self.MouseinRange = false
	if ( self.PaintOver == self.PaintOverHovered ) then
		self.PaintOver = self.PaintOverOld
	end

end

function PANEL:PaintOverHovered( )

	surface.SetDrawColor( 0, 0, 0, 100 )
	surface.DrawRect(0,0,self:GetWide(),self:GetTall())

end

function PANEL:Paint( )
if self.MouseinRange == true then
	surface.SetDrawColor(255,255,255,150)
	surface.DrawRect(1,1,self:GetWide()-1,self:GetTall()-1)
else
surface.SetDrawColor(41,41,41,255)
surface.DrawRect(1,1,self:GetWide()-1,self:GetTall()-1)
	end
surface.SetDrawColor(0,0,0,255)
surface.DrawOutlinedRect(0,0,self:GetWide(),self:GetTall())


end


function PANEL:ApplySchemeSettings( )

end

function PANEL:PerformLayout( )

self.PlayerImage:SetPos( 5,5 )
self.PlayerImage:SetSize( 100,self:GetTall()-10 )
self.PlayerName:SetPos((( self:GetWide()/2 ) + self.StringSize/8 ), 5 )
self.PlayerName:SetSize(self.StringSize,10)
self.PlayerName:SetColor(Color(255,0,0,255))
self.PlayerSteamId:SetPos(((self:GetWide()/2)+self.StringSize/10),15)
self.PlayerSteamId:SetColor(Color(255,0,0,255))
self.PlayerSteamId:SetSize(200,10)
-- self.HealthBar:SetPos(((self:GetWide()/2)),25)
		
end

derma.DefineControl( "DOption", "lalalal", PANEL, "EditablePanel" )