Citizen.CreateThread(function()

	while true do



	local count = 0



local text = {

"Algerian Space",

"Best Server",

"Serious Staff" -- Don't forget to remove the comma

}



		for _, __ in pairs(text) do 

			count = count + 1

		end

	

		local presence  = math.random(1, count)

	

		local player = GetPlayerPed(-1)

	

		SetDiscordAppId('773362423331553310')
		SetDiscordRichPresenceAsset('logo') -- Name of the large image asset.
	    SetDiscordRichPresenceAssetText('Algerian Space S2 CFW') -- Text that pops up when you hover over the image.
        SetDiscordRichPresenceAssetSmall('discord')
		SetDiscordRichPresenceAssetSmallText('https://discord.gg/UWQTPbW')
        SetDiscordRichPresenceAction(0, "Join Now", "https://discord.gg/UWQTPbW") -- Button 1, config: 0 = number of button 0-1 / Button Text / Link that opens when you click button
	    SetDiscordRichPresenceAction(1, "Trailer S2", "https://youtu.be/H8TU8NAwWsw") --  Button 2, config: 0 = number of button 0-1 / Button Text / Link that opens when you click button

		

		while true do

        Citizen.Wait(1500)

        players = {}

        for i = 0, 128 do

            if NetworkIsPlayerActive( i ) then

                table.insert( players, i )

            end

        end

        SetRichPresence("‍AS | "..GetPlayerName(PlayerId()) .. " - CCP: " ..GetPlayerServerId(PlayerId()).. " - " .. #players + 2 .. "/128 Players")

	end

	

	--	SetRichPresence((GetPlayerName(PlayerId())) .. " -") -- [Steam username] [text]

	--	SetRichPresence("".. text[presence] .."")  -- [text]

		SetDiscordRichPresenceAssetText('https://discord.gg/UWQTPbW')

		print('^5Discord rich presence mis a jour :D')

		Citizen.Wait(300000) -- 5 minutes 

	end

end)