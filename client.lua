Citizen.CreateThread(function()
	while true do
	local count = 0

local text = {
"Algerian Space",
"Best Server",
"Serious Staff"
}
		for _, __ in pairs(text) do 
			count = count + 1
		end
			
		local presence  = math.random(1, count)
		local player = GetPlayerPed(-1)

		SetDiscordAppId('#')
		SetDiscordRichPresenceAsset('logo') -- Name of the image.
	        SetDiscordRichPresenceAssetText('Algerian Space S2 CFW') -- Text that pops up when you hover over the image.
                SetDiscordRichPresenceAssetSmall('discord') -- Name of the small image.
		SetDiscordRichPresenceAssetSmallText('https://discord.gg/UWQTPbW') -- Name of the small tsext.
                SetDiscordRichPresenceAction(0, "Join Now", "https://discord.gg/UWQTPbW") -- Button 1 and link
	        SetDiscordRichPresenceAction(1, "Trailer S2", "https://youtu.be/H8TU8NAwWsw") --  Button 2 and link

		while true do
        Citizen.Wait(1500)
        players = {}
        for i = 0, 128 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetRichPresence("‍AS | "..GetPlayerName(PlayerId()) .. " - ID: " ..GetPlayerServerId(PlayerId()).. " - " .. #players + 0 .. "/128 Players")

	end

	--	SetRichPresence((GetPlayerName(PlayerId())) .. " -") -- [Steam username] [text]
	--	SetRichPresence("".. text[presence] .."")  -- [text]
		SetDiscordRichPresenceAssetText('https://discord.gg/UWQTPbW')
		print('^5Discord rich presence mis a jour :D')
		Citizen.Wait(300000) -- 5 minutes 
	end
end)
