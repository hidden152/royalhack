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
