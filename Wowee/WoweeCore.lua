--[[

To Do:
	Everything for 2.0*
	Collect Additions of Wowee Array
	Make /Wowee internal functionality
	Upgrade anti-spam to guild level (might not be possible)
	Test everything*
	
CHANGELOG:

2019/09/23 - 0.1
	- Created Wowee.toc , Core.lua , WoweeResponses.lua
	- Added WoweeCollection and GetWoweeResponse to WoweeResponses.lua
	- Added To Do list and CHANGELOG to Core.lua
	
2019/09/23 - 0.2
	- Added GetWoweeCollectionSize to WoweeCollection
	- Added frame and WoweeHandler to Core.lua
	- Added 'Loaded'/'Activated' lines on load
	- Added debug print lines
	
2019/09/23 - 1.0
	- Commented out debug lines
	- Functionality added to WoweeHandler
	- Added spam-prevention to WoweeHander
	- Fixed dates in WoweeCollection
	
Useful stuff:

	SendChatMessage("text" [, "chatType" [, languageIndex [, "channel"] ] ] )
		chatType = "GUILD" , languageIndex = nil , channel = nil
	
]]--

--Authorized servers and their name lengths
local serverA = 'Whisperwind';
local lengthA = string.len(serverA);
local serverB = 'Dentarg';
local lengthB = string.len(serverB);

local frame = CreateFrame("frame");

frame:RegisterEvent("CHAT_MSG_WHISPER");

local function WoweeHandler(self, event, msg, author, ...)

	--checks for proper whisper and server to prevent spam, a little complex incase their name matches the name of an authorized server
	if msg == '!Wowee' and (string.find(author, serverA, (string.len(author) - lengthA)) or string.find(author, serverB, (string.len(author) - lengthB))) then
	
		print('Wowee Handler Activated by '..author..'!');
	
		local server = "";
	
		if string.find(author, serverA, (string.len(author) - lengthA)) then
		
			server = serverA;
			
		elseif string.find(author, serverB, (string.len(author) - lengthB)) then
		
			server = serverB;
			
		end
	
		--print(author);
		--print('Length of \"author\": '..string.len(author));
		--print('Length of \"server\": '..string.len(server));
		--print(string.sub(author, 1, string.len(author) - string.len(server)));
		local name= string.sub(author, 1, string.len(author) - (string.len(server) + 1));
		--print(name);
		
		--print(tostring(math.random()));
		math.random();
	
		--print(tostring(GetWoweeCollectionSize()));
		local num = math.random(GetWoweeCollectionSize());
		--print(tostring(num));
	
		--print(name..' wants to be Wowee\'d!');
		SendChatMessage(name..' asks to be Wowee\'d!', "GUILD");
	
		--print(GetWoweeResponse(num));
		SendChatMessage(GetWoweeResponse(num), "GUILD");
		
	elseif msg == '!Doom' and (string.find(author, serverA, (string.len(author) - lengthA)) or string.find(author, serverB, (string.len(author) - lengthB))) then
	
		print('Cursed Handler Activated by '..author..'!');
	
		local server = "";
	
		if string.find(author, serverA, (string.len(author) - lengthA)) then
		
			server = serverA;
			
		elseif string.find(author, serverB, (string.len(author) - lengthB)) then
		
			server = serverB;
			
		end
	
		--print(author);
		--print('Length of \"author\": '..string.len(author));
		--print('Length of \"server\": '..string.len(server));
		--print(string.sub(author, 1, string.len(author) - string.len(server)));
		local name= string.sub(author, 1, string.len(author) - (string.len(server) + 1));
		--print(name);
		
		--print(tostring(math.random()));
		math.random();
	
		--print(tostring(GetWoweeCollectionSize()));
		local num = math.random(GetDoomCollectionSize());
		--print(tostring(num));
	
		--print(name..' wants to be Wowee\'d!');
		SendChatMessage(name..' asks to be Cursed!', "GUILD");
	
		--print(GetWoweeResponse(num));
		SendChatMessage(GetDoomResponse(num), "GUILD");
		
	end
		
end

frame:SetScript('OnEvent', WoweeHandler);

print('Wowee Handler Loaded');