CreateClientConVar("render_test",0,true, false)

	
	function RoyalHack.Material()
	
	local BaseInfo = {
		["$basetexture"] = "models/debug/debugwhite",
		["$ignorez"]	 = 1
	}
   
   local mat = CreateMaterial( "royal", "VertexLitGeneric", BaseInfo )

   return mat

end

function RoyalHack.Chams()
local losttarget = false
if(GetConVarNumber("royalhack_esp_chams") == 0 ) then
return true
	elseif(GetConVarNumber("royalhack_esp_chams") == 1) then
	
	for k, e in ipairs( Enemys ) do
	if(e == nil ) then
	local losttarget = true
	end
	if(!e:IsValid()) then 
	else
	if(losttarget == false) then
		if ( e:Alive() ) then
			cam.Start3D( EyePos(), EyeAngles() )
				if(!RoyalHack.IsVisible(e)) then
				local mat = RoyalHack.Material()
				render.SuppressEngineLighting( true )
				render.SetColorModulation( (Cheat_EnemyIV.r/255 ), (Cheat_EnemyIV.g/255), ( Cheat_EnemyIV.b/255 ) )
				SetMaterialOverride( mat )
				e:DrawModel()
				render.SuppressEngineLighting( false )
				render.SetColorModulation(  (Cheat_EnemyIV.r/255 ), (Cheat_EnemyIV.g/255), ( Cheat_EnemyIV.b/255 )  )
				SetMaterialOverride( mat )
				e:DrawModel()
				elseif(RoyalHack.IsVisible(e) ) then
				local mat = RoyalHack.Material()
				render.SuppressEngineLighting( true )
				render.SetColorModulation(  (Cheat_EnemyV.r/255 ), (Cheat_EnemyV.g/255), ( Cheat_EnemyV.b/255 )  )
				SetMaterialOverride( mat )
				e:DrawModel()
				render.SuppressEngineLighting( false )
				render.SetColorModulation( (Cheat_EnemyV.r/255 ), (Cheat_EnemyV.g/255), ( Cheat_EnemyV.b/255 ) )
				SetMaterialOverride( mat )
				e:DrawModel()
				end
			cam.End3D()
			end
		end
		SetMaterialOverride( nil )
	end
end
end
	for k,e in ipairs( Friends ) do
		if(e == nil ) then
	local losttarget = true
	end
	if(!e:IsValid()) then
	else
if(losttarget == false) then
	if ( e:Alive() ) then
			cam.Start3D( EyePos(), EyeAngles() )
				if(!RoyalHack.IsVisible(e)) then
				local mat = RoyalHack.Material()
				render.SuppressEngineLighting( true )
				render.SetColorModulation( (Cheat_TeamIV.r/255 ), (Cheat_TeamIV.g/255), ( Cheat_TeamIV.b/255 ) )
				SetMaterialOverride( mat )
				e:DrawModel()
				render.SuppressEngineLighting( false )
				render.SetColorModulation(  (Cheat_TeamIV.r/255 ), (Cheat_TeamIV.g/255), ( Cheat_TeamIV.b/255 )  )
				SetMaterialOverride( mat )
				e:DrawModel()
				elseif(RoyalHack.IsVisible(e) ) then
				local mat = RoyalHack.Material()
				render.SuppressEngineLighting( true )
				render.SetColorModulation(  (Cheat_TeamV.r/255 ), (Cheat_TeamV.g/255), ( Cheat_TeamV.b/255 )  )
				SetMaterialOverride( mat )
				e:DrawModel()
				render.SuppressEngineLighting( false )
				render.SetColorModulation( (Cheat_TeamV.r/255 ), (Cheat_TeamV.g/255), ( Cheat_TeamV.b/255 ) )
				SetMaterialOverride( mat )
				e:DrawModel()
				end
			cam.End3D()
			end
	end
SetMaterialOverride( nil )
	end
end
end
timer.Create("fix",1,1,function()
hook.Add("RenderScreenspaceEffects","re",RoyalHack.Chams)
end)