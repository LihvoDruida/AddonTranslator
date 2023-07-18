function LoadRioUkrainizer()
    -- Перевірка наявності змінної RaiderIO
    if _G.RaiderIO then
        local locale = GetLocale()

        local L = {
            LOCALE_NAME = "enUS",
            ALLOW_IN_LFD = "Разрешить в окне поиска группы",
            ALLOW_IN_LFD_DESC =
            "Нажмите ПКМ на группу или кандидатов в заранее собранных группах для копирования ссылки на профиль Raider.IO.",
            ALLOW_ON_PLAYER_UNITS = "Разрешить в рамках персонажей",
            ALLOW_ON_PLAYER_UNITS_DESC = "Нажмите ПКМ на рамку игрока для копирования ссылки на профиль Raider.IO.",
            API_DEPRECATED =
            "|cffFF0000Предупреждение!|r Дополнение |cffFFFFFF%s|r вызывает устаревшую функцию RaiderIO.%s. Эта функция будет удалена в будущих релизах. Пожалуйста, попросите автора %s обновить свой аддон. Вызов стека: %s",
            API_DEPRECATED_UNKNOWN_ADDON = "<Неизвестное дополнение>",
            API_DEPRECATED_UNKNOWN_FILE = "<Неизвестный файл дополнения>",
            API_DEPRECATED_WITH =
            "|cffFF0000Предупреждение!|r Дополнение |cffFFFFFF%s|r вызывает устаревшую функцию RaiderIO.%s. Эта функция будет удалена в будущих релизах. Пожалуйста, попросите автора %s обновить свой аддон до нового API RaiderIO. Вызов стека: %s",
            API_INVALID_DATABASE =
            "|cffFF0000Предупреждение!|r Обнаружена недопустимая база данных RaiderIO в |cffffffff%s|r. Пожалуйста, обновите все регионы и фракции в клиенте RaiderIO, либо переустановите дополнение вручную.",
            AUTO_COMBATLOG = "Автоматически включать журнал боя в рейдах и подземельях",
            AUTO_COMBATLOG_DESC =
            "Автоматическое включение или отключение ведения журнала боевых действий при входе и выходе из поддерживаемых рейдов и подземелий.",
            BEST_FOR_DUNGEON = "Лучший для подземелья",
            BEST_RUN = "Лучшее подземелье",
            BEST_SCORE = "Лучший результат M+ (%s)",
            CANCEL = "Отменить",
            CHANGES_REQUIRES_UI_RELOAD =
            "Изменения были сохранены, но необходимо перезагрузить интерфейс, чтобы они вступили в силу. Сделать это сейчас?",
            CHARACTER_LF_GUILD_MPLUS = "Ищу гильдию для походов в М+ подземелья",
            CHARACTER_LF_GUILD_MPLUS_WITH_SCORE = "Ищу гильдию для походов в М+ подземелья",
            CHARACTER_LF_GUILD_PVP = "Ищу PvP гильдию",
            CHARACTER_LF_GUILD_RAID_DEFAULT = "Ищу гильдию для походов в рейды",
            CHARACTER_LF_GUILD_RAID_HEROIC = "Ищу гильдию для походов в героические рейды",
            CHARACTER_LF_GUILD_RAID_MYTHIC = "Ищу гильдию для походов в эпохальные рейды",
            CHARACTER_LF_GUILD_RAID_NORMAL = "Ищу гильдию для походов в обычные рейды",
            CHARACTER_LF_GUILD_SOCIAL = "Ищу гильдию для социальных активностей",
            CHARACTER_LF_TEAM_MPLUS_DEFAULT = "Ищу команду для походов в M+",
            CHARACTER_LF_TEAM_MPLUS_WITH_SCORE = "Ищу %d+ статик для походов в М+ подземелья",
            CHECKBOX_DISPLAY_WEEKLY = "Текущая неделя",
            CHOOSE_HEADLINE_HEADER = "Заголовок всплывающей подсказки M+",
            CONFIG_WHERE_TO_SHOW_TOOLTIPS = "Отображение очков М+ и рейдового прогресса",
            CONFIRM = "Подтвердить",
            COPY_RAIDERIO_PROFILE_URL = "Копировать ссылку Raider.IO",
            COPY_RAIDERIO_RECRUITMENT_URL = "Копировать URL-адрес рекрутинга",
            COPY_RAIDERIO_URL = "Копировать ссылку Raider.IO",
            CURRENT_MAINS_SCORE = "М+ рейтинг мейна",
            CURRENT_SCORE = "Текущий результат М+",
            DB_MODULES = "Модули базы данных",
            DB_MODULES_HEADER_MYTHIC_PLUS = "М+ подземелья",
            DB_MODULES_HEADER_RAIDING = "Рейды",
            DB_MODULES_HEADER_RECRUITMENT = "Рекрутинг",
            DISABLE_DEBUG_MODE_RELOAD =
            "Вы отключаете режим отладки. Нажмите Подтвердить, чтобы перезагрузить интерфейс.",
            DISABLE_RWF_MODE_BUTTON = "Отключить",
            DISABLE_RWF_MODE_BUTTON_TOOLTIP =
            "Нажмите, чтобы отключить режим Race World First. Это приведет к перезагрузке Вашего интерфейса.",
            DISABLE_RWF_MODE_RELOAD =
            "Вы отключаете режим Race World First. Нажатие кнопки Подтвердить перезагрузит Ваш интерфейс.",
            DPS = "Боец",
            DUNGEON_SHORT_NAME_AA = "Академия Алгет'ар",
            DUNGEON_SHORT_NAME_AV = "Лазурное хранилище",
            -- Вставте решту локалізованих рядків тут
        }
        -- Перевірка наявності таблиці з локалізацією
        if _G.RaiderIO.L then
            for k, v in pairs(_G.RaiderIO.L) do
                L[k] = v
            end
        end

        -- Запис локалізованої таблиці у RaiderIO.L
        _G.RaiderIO.L = L
    end
end
