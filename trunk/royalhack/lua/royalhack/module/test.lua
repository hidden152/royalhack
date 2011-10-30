CreateClientConVar("render_test",0,true, false)

	
	function PCreateMaterial()
	
	local BaseInfo = {
		["$basetexture"] = "models/debug/debugwhite",
		--["$model"]       = 1,
		--["$translucent"] = 1,
		--["$alpha"]       = 1,
		--["$nocull"]      = 1,
		["$ignorez"]	 = 1
	}
   
   local mat = CreateMaterial( "name", "VertexLitGeneric", BaseInfo )
   //local mat = CreateMaterial( "pb_solid_mat", "VertexLitGeneric", BaseInfo )

   return mat

end

function XQZ()
	local ply, c = LocalPlayer(), ( 1 / 255 )
	for k, e in pairs( player.GetAll() ) do
		if ( e:Alive() ) then
			cam.Start3D( EyePos(), EyeAngles() )
				local mat = PCreateMaterial()
				render.SuppressEngineLighting( true )
				render.SetColorModulation( (1 ), (1), ( 0 ) )
				SetMaterialOverride( mat )
				e:DrawModel()
				render.SuppressEngineLighting( false )
				render.SetColorModulation( 1, 0, 0 )
				SetMaterialOverride( mat )
				e:DrawModel()
			cam.End3D()
		end
	end

	
end



hook.Add("RenderScreenspaceEffects","re",XQZ)