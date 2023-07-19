local addonName, ns = ...

local settingsProvider = ns.SettingsProvider:new()

local initialized = false

local function createInterfaceOptions()
  settingsProvider:Build()

  local namespace = "AddonTranslator"
  LibStub("AceConfig-3.0"):RegisterOptionsTable(namespace, ns.Options)

  local configDialogLib = LibStub("AceConfigDialog-3.0")
  configDialogLib:AddToBlizOptions(namespace, "AddonTranslator", nil, "General")
  configDialogLib:AddToBlizOptions(namespace, "Причетні", "AddonTranslator", "Contributors")
end

local function initializeAddon()
  if (initialized) then return end

  StaticPopupDialogs["WOW_UKRAINIZAER_RESET_SETTINGS"] = {
    text = "Ви впевнені, що хочете скинути всі налаштування до стандартних значень?",
    button1 = "Продовжити",
    button2 = "Скасувати",
    OnAccept = function() settingsProvider:Reset() end,
    OnShow = function() PlaySound(SOUNDKIT.RAID_WARNING) end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
  }
end

local eventHandler = ns.EventHandler:new()

local function OnAddOnLoaded(_, name)
  local function OnPlayerLogin()
    settingsProvider:Load()
    createInterfaceOptions();

    local translateAngryKeystones, translateOmniCC, translateRCLoot, translateDetails, translateRio, translateRareScanner, translateScrap =
        settingsProvider.GetTranslatorsState()

    if (translateAngryKeystones) then
      LoadAngryKeystonesUkrainizer()
    end
    if (translateOmniCC) then
      LoadOmniCCUkrainizer()
    end
    if (translateRCLoot) then
      LoadRCLootUkrainizer()
    end
    if (translateDetails) then
      LoadDetailsUkrainizer()
    end
    if (translateRio) then
      LoadRioUkrainizer()
    end
	if (translateRareScanner) then
      LoadRareScannerUkrainizer()
    end
	if (translateScrap) then
      LoadScrapUkrainizer()
    end
  end

  if (name == addonName) then
    initializeAddon()
    if not IsLoggedIn() then
      eventHandler:Register(OnPlayerLogin, "PLAYER_LOGIN")
    else
      OnPlayerLogin()
    end
  end
end

eventHandler:Register(OnAddOnLoaded, "ADDON_LOADED")
