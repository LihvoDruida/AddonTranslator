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
    rScaner = false,
}

function settingsProvider:Load()
    AddonUkrainizer_Options = AddonUkrainizer_Options or {}
    local def = self.GetDefaultOptions()

    if (AddonUkrainizer_Options.angryKey == nil) then
        AddonUkrainizer_Options.angryKey = def.angryKey
    end
    if (AddonUkrainizer_Options.omniCC == nil) then
        AddonUkrainizer_Options.omniCC = def.omniCC
    end
    if (AddonUkrainizer_Options.RCLoot == nil) then
        AddonUkrainizer_Options.RCLoot = def.RCLoot
    end
    if (AddonUkrainizer_Options.details == nil) then
        AddonUkrainizer_Options.details = def.details
    end
    if (AddonUkrainizer_Options.rio == nil) then
        AddonUkrainizer_Options.rio = def.rio
    end
    if (AddonUkrainizer_Options.rScaner == nil) then
        AddonUkrainizer_Options.rScaner = def.rScaner
    end
    if (AddonUkrainizer_Options.scrap == nil) then
        AddonUkrainizer_Options.scrap = def.scrap
    end

    -- Check for the presence addons
    if (not IsAddOnLoaded("AngryKeystones")) then
        AddonUkrainizer_Options.angryKey = false
    end
    if (not IsAddOnLoaded("Details")) then
        AddonUkrainizer_Options.details = false
    end
    if (not IsAddOnLoaded("OmniCC")) then
        AddonUkrainizer_Options.omniCC = false
    end
    if (not IsAddOnLoaded("RCLootCouncil")) then
        AddonUkrainizer_Options.RCLoot = false
    end
    if (not IsAddOnLoaded("RaiderIO")) then
        AddonUkrainizer_Options.rio = false
    end
    if (not IsAddOnLoaded("RareScanner")) then
        AddonUkrainizer_Options.rScaner = false
    end
    if (not IsAddOnLoaded("Scrap")) then
        AddonUkrainizer_Options.scrap = false
    end
end

function settingsProvider:Build()
    local function addVerticalMargin(order)
        return {
            type = "description",
            name = " ",
            fontSize = "medium",
            order = order,
            width = 3.6
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
                                [[Увага!
Зміни в налаштуваннях будуть застосовані тільки після перезавантаження інтерфейсу або виконання команди /reload.
Будь ласка, зверніть увагу, що без цього кроку нові налаштування не вступлять в силу.

]],
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
                                    StaticPopup_Show("UKRAINIZAER_RESET_SETTINGS");
                                end,
                            },
                        }
                    },
                    responseOptions = {
                        order = 4,
                        type = "group",
                        name = "Addons",
                        inline = true,
                        args = {
                            angryKey = {
                                order = 1,
                                name = "AngryKeystones",
                                desc = "AngryKeystones",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.angryKey end,
                                set = function(_, value) AddonUkrainizer_Options.angryKey = value end,
                            },
                            omniCC = {
                                order = 2,
                                name = "OmniCC",
                                desc = "OmniCC",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.omniCC end,
                                set = function(_, value) AddonUkrainizer_Options.omniCC = value end,
                            },
                            RCLoot = {
                                order = 3,
                                name = "RCLootCouncil",
                                desc = "RCLootCouncil",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.RCLoot end,
                                set = function(_, value) AddonUkrainizer_Options.RCLoot = value end,
                            },
                            scrap = {
                                order = 11,
                                name = "Scrap",
                                desc = "Scrap",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.scrap end,
                                set = function(_, value) AddonUkrainizer_Options.scrap = value end,
                            },
                            VerticalMargin = addVerticalMargin(12),
                            TooltipsHeader = {
                                type = "header",
                                name = "На стадії тестування",
                                order = 13
                            },
                            desc1 = {
                                order = 14,
                                name =
                                [[Дуже важливо!!!

Попередження: Можливі проблеми та збої під час використання адонів, що можуть викликати некоректну роботу та збій інтерфейсу користувача]],
                                type = "description",
                            },
                            SPC2 = {
                                type = "description",
                                name = " ",
                                order = 15,
                            },
                            details = {
                                order = 16,
                                name = "Details",
                                desc = "Details",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.details end,
                                set = function(_, value) AddonUkrainizer_Options.details = value end,
                            },
                            rio = {
                                order = 17,
                                name = "RaiderIO",
                                desc = "RaiderIO",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.rio end,
                                set = function(_, value) AddonUkrainizer_Options.rio = value end,
                            },
                            rScaner = {
                                order = 18,
                                name = "RareScanner",
                                desc = "RareScanner",
                                type = "toggle",
                                get = function(_) return AddonUkrainizer_Options.rScaner end,
                                set = function(_, value) AddonUkrainizer_Options.rScaner = value end,
                            },
                        },
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
                    ContributorsHeader = {
                        order = contributorsOrder(),
                        type = "header",
                        name = "Причетні",
                        dialogControl = "SFX-Header-II",
                    },
                    Proofreaders = {
                        type = "input",
                        name = "Автор",
                        get = function() return "Лігво Друїда (molaf)\n\n" end,
                        order = contributorsOrder(),
                        disabled = true,
                        dialogControl = "SFX-Info",
                    },
                    SPC0 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    Translators = {
                        type = "input",
                        name = "Технічна поміч",
                        get = function()
                            return
                            "55CancriE, Heroicsolo \n\n"
                        end,
                        order = contributorsOrder(),
                        disabled = true,
                        dialogControl = "SFX-Info",
                    },
                    SPC1 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    Bugfix = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    SPC2 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    SPC4 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    Media = {
                        order = contributorsOrder(),
                        type = "header",
                        name = "Ресурси та Посилання",
                        dialogControl = "SFX-Header-II",
                    },
                    SPC6 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    Discords1 = {
                        type = "input",
                        name = "Ukrainian Community",
                        get = function() return "https://bit.ly/ua_wow" end,
                        order = contributorsOrder(),
                        disabled = false,
                        dialogControl = "SFX-Info-URL",
                    },
                    SPC7 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                    Youtube1 = {
                        type = "input",
                        name = "WowUkrainizer",
                        get = function() return "https://www.curseforge.com/wow/addons/wowukrainizer" end,
                        order = contributorsOrder(),
                        disabled = false,
                        dialogControl = "SFX-Info-URL",
                    },
                    SPC8 = {
                        type = "description",
                        name = " ",
                        order = contributorsOrder(),
                    },
                }
            }
        }
    }
end

function settingsProvider:Reset()
    AddonUkrainizer_Options = self.GetDefaultOptions()
    ReloadUI()
end

function settingsProvider.GetDefaultOptions() return defaultOptions end

function settingsProvider.GetTranslatorsState()
    return AddonUkrainizer_Options.angryKey, AddonUkrainizer_Options.omniCC,
        AddonUkrainizer_Options.RCLoot, AddonUkrainizer_Options.details,
        AddonUkrainizer_Options.rio, AddonUkrainizer_Options.rScaner, AddonUkrainizer_Options.scrap
end
