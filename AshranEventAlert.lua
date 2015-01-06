function ashran_event_alert_eventHandler(self, event, ...)
	if event == "ZONE_CHANGED_NEW_AREA" then
		local ashranAreaID = 978;
		SetMapToCurrentZone();
		local areaid = GetCurrentMapAreaID();
		if (areaid == ashranAreaID) then
			print("Du bist jetzt in Ashran");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_ALLIANCE");
			self:RegisterEvent("CHAT_MSG_BG_SYSTEM_HORDE");
		end
		if (areaid ~= ashranAreaID) then
			self:UnregisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL");
			self:UnregisterEvent("CHAT_MSG_BG_ALLIANCE");
			self:UnregisterEvent("CHAT_MSG_BG_HORDE");
		end
	end
	if event == "CHAT_MSG_BG_SYSTEM_NEUTRAL" then
		print ("CHAT_MSG_BG_SYSTEM_NEUTRAL fired");
		local arg1, message;
		print ("arg1:");
		print (arg1);
		print ("message:");
		print (message);
	end
	if event == "CHAT_MSG_BG_SYSTEM_ALLIANCE" then
		print ("CHAT_MSG_BG_SYSTEM_ALLIANCE fired");
		local arg1, message;
		print ("arg1:");
		print (arg1);
		print ("message:");
		print (message);
	end
	if event == "CHAT_MSG_BG_SYSTEM_HORDE" then
		print ("CHAT_MSG_BG_SYSTEM_HORDE fired");
		local arg1, message;
		print ("arg1:");
		print (arg1);
		print ("message:");
		print (message);
	end
end
