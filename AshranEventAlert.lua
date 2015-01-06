function ashran_event_alert_eventHandler(self, event, ...)
	if event == "ZONE_CHANGED_NEW_AREA" then
		local ashranAreaID = 978;
		SetMapToCurrentZone();
		local areaid = GetCurrentMapAreaID();
		if (areaid ~= ashranAreaID) then
			print("Du bist jetzt in Ashran");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_ALLIANCE");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_HORDE");
		end
		if (areaid == ashranAreaID) then
			self:UnregisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL");
			self:UnregisterEvent("CHAT_MSG_BG_ALLIANCE");
			self:UnregisterEvent("CHAT_MSG_BG_HORDE");
		end
	end
	if event == "CHAT_MSG_BG_SYSTEM_NEUTRAL" then
		print ("CHAT_MSG_BG_SYSTEM_NEUTRAL fired");
		local message = ...
		message = message:lower()
		if (message:find("ereignis: aufgeladenes") ) then 
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Erz")
		elseif (message:find("ereignis: auferstandene") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Geister")
		elseif (message:find("ereignis: stadionrennen") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Rennen")
		elseif (message:find("platzhalter") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Platzhalter")			
		end 
	end
	if event == "CHAT_MSG_BG_SYSTEM_ALLIANCE" then
		local message = ...
		message = message:lower()
		if (message:find("ereignis: aufgeladenes") ) then 
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Erz")
		elseif (message:find("ereignis: auferstandene") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Geister")
		elseif (message:find("ereignis: stadionrennen") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Rennen")
		elseif (message:find("platzhalter") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Platzhalter")			
		end 
	end
		local message = ...
		message = message:lower()
		if (message:find("ereignis: aufgeladenes") ) then 
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Erz")
		elseif (message:find("ereignis: auferstandene") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Geister")
		elseif (message:find("ereignis: stadionrennen") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Rennen")
		elseif (message:find("platzhalter") ) then
			SlashCmdList["DEADLYBOSSMODS"]("timer 180 Platzhalter")			
		end 
end
