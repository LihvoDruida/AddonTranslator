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

local eventHandler = ns.EventHandler:new()

local function OnPlayerLogin()
  settingsProvider:Load()
  createInterfaceOptions()

  local translateAngryKeystones, translateOmniCC, translateRCLoot, translateDetails, translateRio, translateRareScanner, translateScrap, translateWeakAuras, translateAdiBags, translateClique =
      settingsProvider.GetTranslatorsState()

  local translators = {
    { enabled = translateAngryKeystones, func = LoadAngryKeystonesUkrainizer },
    { enabled = translateOmniCC,         func = LoadOmniCCUkrainizer },
    { enabled = translateRCLoot,         func = LoadRCLootUkrainizer },
    { enabled = translateDetails,        func = LoadDetailsUkrainizer },
    { enabled = translateRio,            func = LoadRioUkrainizer },
    { enabled = translateRareScanner,    func = LoadRareScannerUkrainizer },
    { enabled = translateScrap,          func = LoadScrapUkrainizer },
    { enabled = translateWeakAuras,      func = LoadWeakAurasUkrainizer },
    { enabled = translateAdiBags,        func = LoadAdiBagsUkrainizer },
    { enabled = translateClique,         func = LoadCliqueUkrainizer },
  }

  for _, translator in ipairs(translators) do
    if translator.enabled then
      translator.func()
    end
  end
end

local function initializeAddon()
  if initialized then
    return
  end

  StaticPopupDialogs["ADDON_TRANSLATOR_RESET_SETTINGS"] = {
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

local function OnAddOnLoaded(_, name)
  if name == addonName then
    initializeAddon()
    if not IsLoggedIn() then
      eventHandler:Register(OnPlayerLogin, "PLAYER_LOGIN")
    else
      OnPlayerLogin()
    end
  end
end

eventHandler:Register(OnAddOnLoaded, "ADDON_LOADED")
