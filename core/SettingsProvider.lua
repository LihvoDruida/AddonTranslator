local addonName, ns = ...;

local sharedMedia = LibStub("LibSharedMedia-3.0")

local settingsProvider = class("SettingsProvider");
ns.SettingsProvider = settingsProvider

local defaultOptions = {
}

function settingsProvider:Load()
    AddonUkrainizer_Options = AddonUkrainizer_Options or {}
end

function settingsProvider:Build()
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
                    Version = {
                        type = "description",
                        name = "Версія: " .. version .. " (" .. date("%d.%m.%y %H:%M:%S", releaseDate) .. ")",
                        fontSize = "small",
                        order = 1,
                        width = "full"
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
                                    StaticPopup_Show("WOW_UKRAINIZAER_RESET_SETTINGS");
                                end,
                            },
                        }
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
