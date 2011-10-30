function ShowShot()

local player = LocalPlayer()

tables = {}

table.insert(tables,LocalPlayer():GetAimVector())
PrintTable(tables)

end

concommand.Add("cl_shotpos",ShowShot)