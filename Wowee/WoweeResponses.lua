-- when whispered "!Wowee", respond with a random response

-- declare response array

local WoweeCollection = {
	[1] = '\"Wowee!\" - Lanille (the day they were born)',
	[2] = '\"infact if we were Wowee I would want to raid more nights a week and be #1 on realm so everyone saw\" - Durians (09/22/19)',
	--[3] = '\"tiddies\" - <.< (09/22/19)'
}

function GetWoweeResponse(num)
	return WoweeCollection[num]
end

function GetWoweeCollectionSize()
	return table.getn(WoweeCollection)
end

print('Wowee Database Loaded');