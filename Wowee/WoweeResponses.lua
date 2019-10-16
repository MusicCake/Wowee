-- when whispered "!Wowee", respond with a random response

-- declare response array

local WoweeCollection = {
	[1] = '\"Wowee!\" - Lanille (the day they were born)',
	[2] = '\"infact if we were Wowee I would want to raid more nights a week and be #1 on realm so everyone saw\" - Durians (09/22/19)',
	[3] = '\"Wowee you have so much to live for.\" - Durians \"all i have is Wowee\" - Lanille (09/22/19)',
	[4] = '\"yes\" - Felrunner (09/17/19)',
	[5] = '\"im in favor of changing to Wowee, Im high af\" - Monkmaxi (09/17/19)',
	[6] = '\"WELCOME HOME DADDY\" - Ama (10/16/19)'
}

function GetWoweeResponse(num)
	return WoweeCollection[num]
end

function GetWoweeCollectionSize()
	return table.getn(WoweeCollection)
end

print('Wowee Database Loaded');