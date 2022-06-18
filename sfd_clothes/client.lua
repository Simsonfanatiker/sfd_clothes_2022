ESX          = nil

clothes = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

-------------------------- How To--------------------------------
----------------------------------------------------------------
-- SetPedComponentVariation(GetPlayerPed(-1), 1, 14, 2, 0) -----
------------------- 1 = Category -------------------------------
------------------- 14 = Clothing number -----------------------
------------------- 2 = Clothing color -------------------------
----------------------------------------------------------------
---
--- Category ---
---
-- 0 helmet ---
-- 1 mask --- 
-- 2 hair --- 
-- 3 gloves --- 
-- 4 pants --- 
-- 5 bag --- 
-- 6 shoes --- 
-- 7 Chain --- 
-- 8 Tshirt --- 
-- 9 vest ---
-- 11 torso ---

---
---
RegisterNetEvent('sfd_clothes:xxx')
AddEventHandler('sfd_clothes:xxx', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
            local player = PlayerPedId()
	        if not clothes then
	            Wait (600)
	            ClearPedSecondaryTask(PlayerPedId())
	            clothes = true
	            SetPedComponentVariation(GetPlayerPed(-1), 1, 64, 1, 0)
	        elseif clothes then
	            clothes = false
	            Wait (600)
	            ClearPedSecondaryTask(PlayerPedId())
	            SetPedComponentVariation(GetPlayerPed(-1), 71, -1, 0, 2)
	        end
		else 
			if not clothes then
			    Wait (600)
			    ClearPedSecondaryTask(PlayerPedId())
			    clothes = true
			    SetPedComponentVariation(GetPlayerPed(-1), 1, 64, 1, 0)
		    elseif clothes then
			    clothes = false
			    Wait (600)
			    ClearPedSecondaryTask(PlayerPedId())
			    SetPedComponentVariation(GetPlayerPed(-1), 71, -1, 0, 2)
			end 
		end 
	end)

end)

-----------------------------------------------------------------------



RegisterNetEvent('sfd_clothes:warnweste')
AddEventHandler('sfd_clothes:warnweste', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
            local player = PlayerPedId()
	        if not clothes then
				Wait (600)
				ClearPedSecondaryTask(PlayerPedId())
				clothes = true
				-----------------------------------------------------------------------------------------------------------------------
				local dict = "clothingtie"                                                                                           --
																																	 --
				RequestAnimDict(dict)                                                                                                --
					while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
						Citizen.Wait(100)                                                                                            --
				end                                                                                                                  --
				TaskPlayAnim(GetPlayerPed(-1), dict, "try_tie_negative_a", 8.0, 8.0, -1, 48, 1, false, false, false)                 --
				-----------------------------------------------------------------------------------------------------------------------
				SetPedComponentVariation(GetPlayerPed(-1), 9, 3, 3, 0)
				-----------------------------------------------------------------------------------------------------------------------
				Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
				TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
				-----------------------------------------------------------------------------------------------------------------------
				elseif clothes then
				clothes = false
				Wait (600)
				ClearPedSecondaryTask(PlayerPedId())
				SetPedComponentVariation(GetPlayerPed(-1), 9, -1, 0, 2)
				end
		else 
			if not clothes then
				Wait (600)
				ClearPedSecondaryTask(PlayerPedId())
				clothes = true
				-----------------------------------------------------------------------------------------------------------------------
				local dict = "clothingtie"                                                                                           --
																																	 --
				RequestAnimDict(dict)                                                                                                --
					while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
						Citizen.Wait(100)                                                                                            --
				end                                                                                                                  --
				TaskPlayAnim(GetPlayerPed(-1), dict, "try_tie_negative_a", 8.0, 8.0, -1, 48, 1, false, false, false)                 --
				-----------------------------------------------------------------------------------------------------------------------
				SetPedComponentVariation(GetPlayerPed(-1), 9, 19, 5, 0)
				-----------------------------------------------------------------------------------------------------------------------
				Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
				TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
				-----------------------------------------------------------------------------------------------------------------------
				elseif clothes then
				clothes = false
				Wait (600)
				ClearPedSecondaryTask(PlayerPedId())
				SetPedComponentVariation(GetPlayerPed(-1), 9, -1, 0, 2)
				end
		end 
	end)
end)

RegisterNetEvent('sfd_clothes:handschuhS')
AddEventHandler('sfd_clothes:handschuhS', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	if skin.sex == 0 then
		local player = PlayerPedId()
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                           --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)                 --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 86, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 6, 0, 2)
			end
	else 
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                           --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)               --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 101, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 6, 0, 2)
			end
	end
end)
end)


RegisterNetEvent('sfd_clothes:handschuhM')
AddEventHandler('sfd_clothes:handschuhM', function()
    TriggerEvent('skinchanger:getSkin', function(skin)
	if skin.sex == 0 then
		local player = PlayerPedId()
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                           --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)                 --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 85, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 11, 0, 2)
			end
	else 
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                           --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)               --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 106, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 11, 0, 2)
			end
	end
    end)
end)


RegisterNetEvent('sfd_clothes:handschuhL')
AddEventHandler('sfd_clothes:handschuhL', function()
    TriggerEvent('skinchanger:getSkin', function(skin)
	if skin.sex == 0 then
		local player = PlayerPedId()
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                          --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)                 --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 87, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 2, 0, 0)
			end
	else 
		if not clothes then
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			clothes = true
			-----------------------------------------------------------------------------------------------------------------------
			local dict = "nmt_3_rcm-10"                                                                                           --
																																 --
			RequestAnimDict(dict)                                                                                                --
				while not HasAnimDictLoaded(dict) do                                                                             --    Animation to put on the high visibility vest 
					Citizen.Wait(100)                                                                                            --
			end                                                                                                                  --
			TaskPlayAnim(GetPlayerPed(-1), dict, "cs_nigel_dual-10", 8.0, 8.0, -1, 48, 1, false, false, false)               --
			-----------------------------------------------------------------------------------------------------------------------
			SetPedComponentVariation(GetPlayerPed(-1), 3, 102, 0, 0)
			-----------------------------------------------------------------------------------------------------------------------
			Citizen.Wait(1000)                                                                                                   --    Time where the animation is stopped
			TaskPlayAnim(GetPlayerPed(-1), dict, "", 8.0, 8.0, -1, 48, 1, false, false, false)                                   -- 
			-----------------------------------------------------------------------------------------------------------------------
			elseif clothes then
			clothes = false
			Wait (600)
			ClearPedSecondaryTask(PlayerPedId())
			SetPedComponentVariation(GetPlayerPed(-1), 3, 2, 0, 0)
			end
	end
    end)
end)





