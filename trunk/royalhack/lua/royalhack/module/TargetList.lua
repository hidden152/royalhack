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

function DeleteFriend( target )
	table.remove(Friends,target)
end

function DeleteEnemy( target )
	table.remove(Enemys,target)
end

function NametoId( name ) 

end

function PlayerDisconnect()

RealPlayer = {}
Playerlist = {}

table.Add(Playerlist,Enemys)
table.Add(Playerlist,Friends)

for k,v in ipairs(player.GetAll()) do
	table.insert(RealPlayer,v)
end

		for k,v in ipairs(Playerlist) do
		if table.HasValue( RealPlayer, v )then
		else
		Msg(""..v.."")
	end
end
end

concommand.Add("royalhack_print_dif",PlayerDisconnect)


function CheckExists()

for k,v in ipairs(Enemys) do
if(v == nil) then
	MsgN("Lost")
	end
end

end

hook.Add("Think","check",CheckExists)