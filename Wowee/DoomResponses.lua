-- when whispered "!Doom", respond with a random response

-- declare response array

local DoomCollection = {
	[1] = '\"delete you character\" - Felrunner (08/27/19)',
	[2] = '\"DAMN YOU BOX I HATE YOU SO MUCH I HAVE TO USE CAPS LOCK!\" - Bigbadben (09/03/19)',
	[3] = '\"I hope I never become a suburban mom .-.\" - Lanille (09/22/19)',
	[4] = 'Meera\'s failed benthic count: 235 - (09/23/19)',
	[5] = '\"i used to want to be part of a kpop boyband, i grew my hair out and everythin. then the vocal teacher said i had no hope :)\" - Lanille (09/17/19)',
	[6] = '\"NO\" - Meeracat (09/17/19)',
	[7] = '\"i will quit if the guild changes its name to wowee :P\" - Nisth (09/17/19)',
	[8] = '\"might quit wow at that\" - Nisth (09/17/19)',
	[9] = '\"It just goes to show that with a lot of hardwork and dedication... you can still be way far behind other people :)\" - Meeracat (09/27/19)',
	[10] = '\"Shit\" - Thorgon (09/28/19)',
	[11] = '\"I like to think I can keep up with you Anton. Then you hit combustion and I remember my place in the dirt.\" - Angerpaw (10/13/19)'
}

function GetDoomResponse(num)
	return DoomCollection[num]
end

function GetDoomCollectionSize()
	return table.getn(DoomCollection)
end

print('Cursed Database Loaded');