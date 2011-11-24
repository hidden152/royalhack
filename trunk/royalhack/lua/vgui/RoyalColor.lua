/*  
	
*/

local PANEL = {}

AccessorFunc( PANEL, "m_Hue", 				"Hue" )
AccessorFunc( PANEL, "m_Saturation", 		"Saturation" )
AccessorFunc( PANEL, "m_RGB", 				"RGB" )

Derma_Install_Convar_Functions( PANEL )

/*---------------------------------------------------------
   Name: Init
---------------------------------------------------------*/
function PANEL:Init()

	self.BGImage = vgui.Create( "DImage", self )
	self.BGImage:SetImage( "royalhack/royalhsv" )

end

/*---------------------------------------------------------
   Name: PerformLayout
---------------------------------------------------------*/
function PANEL:PerformLayout()

	self.BGImage:StretchToParent(0,0,0,0)
	self.BGImage:SetZPos( -1 )

	DSlider.PerformLayout( self )

end

/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:TranslateValues( x, y )

	self:UpdateColor( x, y )
	
	return x, y

end

/*---------------------------------------------------------
	Think
---------------------------------------------------------*/
function PANEL:Think()

	self:ConVarNumberThink()

end


function PANEL:UpdateColor( x, y )

	x = x or self:GetSlideX()
	y = y or self:GetSlideY()
	
	self:SetHue(x*-360)
	local length = math.sqrt( x*x + y*y )
	length = math.Clamp( length, 0, 0.5 )
	self:SetSaturation( length * 2 )
	--local h = ColorToHSV( self:GetHue() )
	
	local color = HSVToColor( self:GetHue(), self:GetSaturation(), 1 )
	
	
	self:SetRGB( color )

end


/*---------------------------------------------------------
   Name: SetValue (For ConVar)
---------------------------------------------------------*/
function PANEL:SetValue( iNumValue )

	self:SetSelected( iNumValue )

end

/*---------------------------------------------------------
   Name: GetValue
---------------------------------------------------------*/
function PANEL:GetValue()

	return self:GetSelectedNumber()

end

/*---------------------------------------------------------
   Name: GenerateExample
---------------------------------------------------------*/
function PANEL:GenerateExample( ClassName, PropertySheet, Width, Height )

	local ctrl = vgui.Create( ClassName )
		ctrl:SetSize( 300, 300 )
		
	PropertySheet:AddSheet( ClassName, ctrl, nil, true, true )

end

vgui.Register( "RoyalColor", PANEL, "DSlider" )