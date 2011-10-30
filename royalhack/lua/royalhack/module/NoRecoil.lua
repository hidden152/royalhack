// NoRecoil
function RoyalHack.NoRecoil()
	if(GetConVarNumber("royalhack_aim_norecoil") == 1) then
		if ValidEntity(LocalPlayer():GetActiveWeapon()) and (LocalPlayer():GetActiveWeapon().Primary and LocalPlayer():GetActiveWeapon().Primary.Recoil != 0) then
			LocalPlayer():GetActiveWeapon().OldRecoil = LocalPlayer():GetActiveWeapon().Recoil or (LocalPlayer():GetActiveWeapon().Primary and LocalPlayer():GetActiveWeapon().Primary.Recoil)
			LocalPlayer():GetActiveWeapon().Recoil = 0
			LocalPlayer():GetActiveWeapon().Primary.Recoil = 0
		end
	elseif ValidEntity(LocalPlayer():GetActiveWeapon()) and (LocalPlayer():GetActiveWeapon().Primary and LocalPlayer():GetActiveWeapon().Primary.Recoil == 0) and LocalPlayer():GetActiveWeapon().OldRecoil then
		LocalPlayer():GetActiveWeapon().Recoil = LocalPlayer():GetActiveWeapon().OldRecoil
		LocalPlayer():GetActiveWeapon().Primary.Recoil = LocalPlayer():GetActiveWeapon().OldRecoil
	end
end

hook.Add("Think","Recoil",RoyalHack.NoRecoil)

function RoyalHack.CreateNewWeaponTable()

for k,v in ipairs(LocalPlayer():GetWeapons()) do
	table.insert(Weapons,{name = v:GetPrintName(),lastuse = CurTime()})
end

for k,v in ipairs(Weapons) do
	Msg(""..v.name.."\n")
	Msg(""..v.lastuse.."\n")
end
end

concommand.Add("cr_weapon",RoyalHack.CreateNewWeaponTable)

function RoyalHack.WeaponMenu()


end