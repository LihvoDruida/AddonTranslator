local addon = select(2, ...)
local addonName, ns = ...;

local sharedMedia = LibStub("LibSharedMedia-3.0")

local settingsProvider = class("SettingsProvider");
ns.SettingsProvider = settingsProvider

local defaultOptions = {
    -- Addons actual
    angryKey = true,
    omniCC = true,
    RCLoot = true,
    scrap = true,

    -- Addons TEST
    details = false,
    rio = false,
    adiBags = false,
    clique = false,
    rScaner = false,
    WeakAuras = false,
}

function settingsProvider:Load()
    AddonUkrainizer_Options = AddonUkrainizer_Options or {}

    -- Assign default values for options not present in AddonUkrainizer_Options
    for key, defaultValue in pairs(defaultOptions) do
        if AddonUkrainizer_Options[key] == nil then
            AddonUkrainizer_Options[key] = defaultValue
        end
    end

    -- Check for the presence of addons and update options accordingly
    AddonUkrainizer_Options.angryKey = IsAddOnLoaded("AngryKeystones") and AddonUkrainizer_Options.angryKey or false
    AddonUkrainizer_Options.details = IsAddOnLoaded("Details") and AddonUkrainizer_Options.details or false
    AddonUkrainizer_Options.omniCC = IsAddOnLoaded("OmniCC") and AddonUkrainizer_Options.omniCC or false
    AddonUkrainizer_Options.RCLoot = IsAddOnLoaded("RCLootCouncil") and AddonUkrainizer_Options.RCLoot or false
    AddonUkrainizer_Options.rio = IsAddOnLoaded("RaiderIO") and AddonUkrainizer_Options.rio or false
    AddonUkrainizer_Options.rScaner = IsAddOnLoaded("RareScanner") and AddonUkrainizer_Options.rScaner or false
    AddonUkrainizer_Options.scrap = IsAddOnLoaded("Scrap") and AddonUkrainizer_Options.scrap or false
    AddonUkrainizer_Options.WeakAuras = IsAddOnLoaded("WeakAuras") and AddonUkrainizer_Options.WeakAuras or false
    AddonUkrainizer_Options.adiBags = IsAddOnLoaded("AdiBags") and AddonUkrainizer_Options.adiBags or false
    AddonUkrainizer_Options.clique = IsAddOnLoaded("Clique") and AddonUkrainizer_Options.clique or false
end

function settingsProvider:Build()
    local function addVerticalMargin(order)
        return {
            type = "description",
            name = "",
            fontSize = "medium",
            order = order,
            width = 3.6
        }
    end
    local function addHeader(name, order)
        return {
            type = "header",
            name = name,
            order = order,
        }
    end


    local function createIncrementor()
        local x = 0
        return function()
            x = x + 1
            return x
        end
    end

    local releaseDate = tonumber(C_AddOns.GetAddOnMetadata(addonName, "X-ReleaseDate")) or 0
    local version = C_AddOns.GetAddOnMetadata(addonName, "Version")
    if string.match(version, "-[%w%d][%w%d][%w%d][%w%d][%w%d][%w%d][%w%d][%w%d]$") then
        version = "[alpha] " .. version
    end

    local contributorsOrder = createIncrementor()

    local addons = {
        { "AngryKeystones", "angryKey", "Перекласти |cFF87CEFAAngryKeystones|r на українську мову." },
        { "OmniCC", "omniCC", "Перекласти |cFF87CEFAOmniCC|r на українську мову." },
        { "RCLootCouncil", "RCLoot", "Перекласти |cFF87CEFARCLootCouncil|r на українську мову." },
        { "Scrap", "scrap", "Перекласти |cFF87CEFAScrap|r на українську мову." },
    }

    local testers = {
        { "|cffff2020Details|r", "details",
            "На жаль, в |cFF87CEFADetails|r поки що проблема відображення перекладу через технічну неможливість заміни шрифтів на кириличні." },
        { "|cffff2020RaiderIO|r", "rio",
            "На жаль, |cFF87CEFARaiderIO|r поки що |cffff2020неможливо|r перекласти на українську мову через технічні особливості його реалізації локалізації." },
        { "RareScanner", "rScaner",
            "|cFF87CEFARareScanner|r частково перекладений на українську мову, може містити деякі помилки в перекладі або інтерфейсі." },
        { "WeakAuras", "WeakAuras",
            "|cFF87CEFAWeakAuras|r частково перекладений на українську мову, але може містити деякі помилки в перекладі або інтерфейсі." },
        { "AdiBags", "adiBags",
            "|cFF87CEFAAdiBags|r частково перекладений на українську мову, може містити деякі помилки в перекладі або інтерфейсі." },
        { "Clique", "clique",
            "|cFF87CEFAAdiBags|r частково перекладений на українську мову, може містити деякі помилки в перекладі або інтерфейсі." },
    }

    local contributors = {
        { "Автор", "Лігво Друїда (molaf)\n\n", "Proofreaders" },
        { "Технічна поміч", "55CancriE, Heroicsolo \n\n", "Translators" },
    }

    local mediaAddons = {
        { "Wow Ukrainizer", "https://legacy.curseforge.com/wow/addons/wowukrainizer",                   "wowua" },
        { "DBM Ukrainian",  "https://legacy.curseforge.com/wow/addons/dbm-voice-pack-ukrainian-female", "dbmvp" },
        { "DBM Countdown Ukrainian",
            "https://legacy.curseforge.com/wow/addons/deadly-boss-mods-dbm-ukrainian-countdown-pack", "dbmcp" },
    }
    local mediaSocial = {
        { "Лігво Друїда", "https://www.youtube.com/channel/UCWex56K6Xev50zIF7hVCyMQ", "youtube1" },
        { "Unbrkbl Opt1mist", "https://www.youtube.com/@unbrkblopt1mist", "youtube2" },
    }

    ns.Options = {
        type = "group",
        name = addonName,
        args = {
            General = {
                order = 1,
                type = "group",
                name = "Налаштування",
                childGroups = "tab",
                args = {
                    logo = {
                        order = 1,
                        type = "description",
                        name = " ",
                        image = addon.LOGO_LOCATION,
                        imageWidth = 256,
                        imageHeight = 64,
                        width = 1.6
                    },
                    version = {
                        order = 1.2,
                        type = "description",
                        name = function() return "|cFF87CEFAv" .. version .. "|r" end,
                        width = 0.9
                    },
                    Commands = {
                        order = 2,
                        type = "group",
                        name = " ",
                        inline = true,
                        args = {
                            SettingsWarning = {
                                type = "description",
                                name =
                                [[|cffff2020Зверни увагу!|r
Зміни в налаштуваннях будуть застосовані тільки після перезавантаження інтерфейсу або виконання команди /reload.
Будь ласка, зверніть увагу, що без цього кроку нові налаштування не вступлять в силу.]],
                                fontSize = "small",
                                order = 1,
                                width = "full"
                            },
                            ResetInterface = {
                                order = 3,
                                name = "Перезавантажити",
                                type = "execute",
                                func = function() ReloadUI() end,
                            },
                            ResetFonts = {
                                order = 4,
                                name = "За замовчуванням",
                                desc =
                                [[Ця кнопка скидає всі налаштування до стандартних значень, встановлених розробниками аддона.

Після натискання всі ваші поточні налаштування будуть втрачені, і будуть встановлені значення за замовчуванням.]],
                                type = "execute",
                                func = function()
                                    StaticPopup_Show("ADDON_TRANSLATOR_RESET_SETTINGS");
                                end,
                            },
                        }
                    },
                    responseOptions = {
                        order = 4,
                        type = "group",
                        name = "Addons",
                        inline = true,
                        args = {},
                    },
                }
            },
            Contributors = {
                order = 2,
                type = "group",
                name = "Причетні",
                args = {
                    DedicationText = {
                        order = contributorsOrder(),
                        type = "description",
                        name = [[
Шановані пані та панове,

Дякую вам щирим серцем за використання цієї модифікації!
Закликаю вас грати українською мовою та переглядати український контент!Нижче ви знайдете посилання на необхідні ресурси.

Українізуємо World of Warcraft разом!
]],
                        fontSize = "small"
                    },
                    SPC00 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    SPC01 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    contributorsHeader = {
                        order = contributorsOrder(),
                        type = "group",
                        name = "Причетні",
                        inline = true,
                        args = {},
                    },
                    mediaHeader = {
                        order = contributorsOrder(),
                        type = "group",
                        name = "Ресурси та Посилання",
                        inline = true,
                        args = {},
                    },
                }
            }
        }
    }

    local argsOption = ns.Options.args.General.args.responseOptions.args
    local orderOption = 1
    local argsContributors = ns.Options.args.Contributors.args.contributorsHeader.args
    local orderContributors = 1
    local argsMedia = ns.Options.args.Contributors.args.mediaHeader.args
    local orderMedia = 1

    for _, addonData in ipairs(addons) do
        local addonName, optionKey, addonDesc = unpack(addonData)
        argsOption[optionKey] = {
            order = orderOption,
            name = addonName,
            desc = addonDesc,
            type = "toggle",
            get = function(_) return AddonUkrainizer_Options[optionKey] end,
            set = function(_, value) AddonUkrainizer_Options[optionKey] = value end,
        }
        orderOption = orderOption + 1
    end

    argsOption.VerticalMargin1 = addVerticalMargin(orderOption)
    orderOption = orderOption + 1
    argsOption.Header1 = addHeader("На стадії тестування", orderOption)
    orderOption = orderOption + 1

    for _, testerData in ipairs(testers) do
        local addonName, optionKey, addonDesc = unpack(testerData)
        argsOption[optionKey] = {
            order = orderOption,
            name = addonName,
            desc = addonDesc,
            type = "toggle",
            get = function(_) return AddonUkrainizer_Options[optionKey] end,
            set = function(_, value) AddonUkrainizer_Options[optionKey] = value end,
        }
        orderOption = orderOption + 1
    end

    for _, contributorData in ipairs(contributors) do
        local desc, contributorName, optionKey = unpack(contributorData)
        argsContributors[optionKey] = {
            type = "input",
            name = desc,
            get = function() return contributorName end,
            order = orderContributors,
            disabled = true,
            dialogControl = "SFX-Info",
        }
        orderContributors = orderContributors + 1
    end

    for _, mediaAddonsData in ipairs(mediaAddons) do
        local name, url, optionKey = unpack(mediaAddonsData)
        argsMedia[optionKey] = {
            type = "input",
            name = name,
            get = function() return url end,
            order = orderMedia,
            disabled = false,
            dialogControl = "SFX-Info-URL",
        }
        orderMedia = orderMedia + 1
    end

    argsMedia.VerticalMargin1 = addVerticalMargin(orderMedia)
    orderMedia = orderMedia + 1
    argsMedia.Header1 = addHeader("Медіа ресурси", orderMedia)
    orderMedia = orderMedia + 1

    for _, mediaSocialData in ipairs(mediaSocial) do
        local name, url, optionKey = unpack(mediaSocialData)
        argsMedia[optionKey] = {
            type = "input",
            name = name,
            get = function() return url end,
            order = orderMedia,
            disabled = false,
            dialogControl = "SFX-Info-URL",
        }
        orderMedia = orderMedia + 1
    end
end

function settingsProvider:Reset()
    AddonUkrainizer_Options = self.GetDefaultOptions()
    ReloadUI()
end

function settingsProvider.GetDefaultOptions() return defaultOptions end

function settingsProvider.GetTranslatorsState()
    return AddonUkrainizer_Options.angryKey, AddonUkrainizer_Options.omniCC,
        AddonUkrainizer_Options.RCLoot, AddonUkrainizer_Options.details,
        AddonUkrainizer_Options.rio, AddonUkrainizer_Options.rScaner, AddonUkrainizer_Options.scrap,
        AddonUkrainizer_Options.WeakAuras, AddonUkrainizer_Options.adiBags, AddonUkrainizer_Options.clique
end
