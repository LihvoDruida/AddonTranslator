function LoadRCLootUkrainizer()
  if IsAddOnLoaded("RCLootCouncil") then
    local L = LibStub("AceLocale-3.0"):GetLocale("RCLootCouncil")
    if not L then return end
    L.FONTS = {
      NORMAL = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
      BOLD = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Bold.ttf",
      ITALIC = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Italic.ttf",
      HEADER = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
    }

    L[" is not active in this raid."] = "не бере участі у поточному рейді."
    L[" you are now the Master Looter and RCLootCouncil is now handling looting."] =
    "ви тепер головний розподільник і RCLootCouncil тепер відповідає за розподіл здобичі."
    L["&p was awarded with &i for &r!"] = "&p отримав &i за &r!"
    L["A format to copy/paste to another player."] = "Формат для копіювання/вставки до іншого гравця."
    L["A new session has begun, type '/rc open' to open the voting frame."] =
    "Почалась нова сесія, введіть '/rc open', щоб відкрити вікно голосування."
    L["A tab delimited output for Excel. Might work with other spreadsheets."] =
    "Вивід з роздільниками табуляції для Excel. Може працювати з іншими електронними таблицями."
    L["Abort"] = "Скасувати"
    L["Accept Whispers"] = "Приймати приватні повідомлення"
    L["accept_whispers_desc"] = "Дозволяє гравцям надсилати вам їх поточні речі для додавання до вікна голосування."
    L["Accepted imports: 'Player Export' and 'CSV'"] = "Прийняті імпорти: 'Експорт гравця' та 'CSV'"
    L["Active"] = "Активний"
    L["active_desc"] =
    "Скасуйте вибір, щоб вимкнути RCLootCouncil. Корисно, якщо ви в рейдовій групі, але не берете участі у голосуванні. Примітка: скидається після кожного виходу з гри."
    L["Add Item"] = "Додати предмет"
    L["Add Note"] = "Додати примітку"
    L["Add ranks"] = "Додати ранги"
    L["Add rolls"] = "Додати роли"
    L["Add Rolls"] = "Додати роли"
    L["add_candidate"] = "Додати кандидата"
    L["add_ranks_desc"] = "Виберіть мінімальний ранг для участі в розподілі здобичі:"
    L["add_ranks_desc2"] = [=[

Виберіть ранг вище, щоб додати всіх гравців з цього рангу та вище до ради.

Клацніть на ранги зліва, щоб додати окремих гравців до ради.

Клацніть на вкладку "Поточна рада", щоб переглянути ваш вибір.]=]
    L["add_rolls_desc"] = "Автоматично додавати випадковий ролл в діапазоні 1-100 для кожної сесії."
    L["Additional Buttons"] = "Додаткові кнопки"
    L["All items"] = "Усі предмети"
    L["All items have been awarded and the loot session concluded"] =
    "Всі предмети розподілено, сесію здобичі завершено."
    L["All items usable by the candidate"] = "Усі предмети, які може використовувати кандидат"
    L["All unawarded items"] = "Усі нерозподілені предмети"
    L["Alternatively, flag the loot as award later."] = "Альтернативно, позначте здобич для розподілу пізніше."
    L["Always show owner"] = "Завжди показувати власника"
    L["Always use RCLootCouncil with Personal Loot"] = "Завжди використовувати RCLootCouncil з персональною здобичею"
    L["always_show_tooltip_howto"] = "Подвійне клацання, щоб відобразити підказку"
    L["Announce Awards"] = "Оголошення про розподіл"
    L["Announce Considerations"] = "Оголошення про розгляд предметів"
    L["announce_&i_desc"] = "|cfffcd400 &i|r: посилання на предмет."
    L["announce_&l_desc"] = "|cfffcd400 &l|r: рівень предмета."
    L["announce_&m_desc"] = "|cfffcd400 &m|r: примітка кандидата."
    L["announce_&n_desc"] = "|cfffcd400 &n|r: ролл, якщо вказано."
    L["announce_&o_desc"] = "|cfffcd400 &o|r: власник предмета, якщо є."
    L["announce_&p_desc"] = "|cfffcd400 &p|r: ім'я гравця, який отримує предмет."
    L["announce_&r_desc"] = "|cfffcd400 &r|r: причина."
    L["announce_&s_desc"] = "|cfffcd400 &s|r: ідентифікатор сесії."
    L["announce_&t_desc"] = "|cfffcd400 &t|r: тип предмета."
    L["announce_awards_desc"] = "Увімкнути оголошення про розподіл у чаті."
    L["announce_awards_desc2"] = [=[Виберіть канал

(и), на які ви хочете оголосити, разом з текстом. Доступні такі заміни ключових слів:
]=]
    L["announce_considerations_desc"] =
    "Активує оголошення про предмети, що розглядаються, кожного разу, коли починається сесія."
    L["announce_considerations_desc2"] = [=[Виберіть канал, на який ви хочете оголосити, та повідомлення.
Це повідомлення служить заголовком для списку предметів.]=]
    L["announce_item_string_desc"] =
    [=[Введіть текст, який буде оголошуватися для кожного предмета. Доступні такі заміни ключових слів:
]=]
    L["Announcements"] = "Оголошення"
    L["Anonymous Voting"] = "Анонімне голосування"
    L["anonymous_voting_desc"] = "Увімкнути анонімне голосування (тобто гравці не бачать, хто за що голосує)"
    L["Append realm names"] = "Додавати назви реалмів"
    L["Are you sure you want to abort?"] = "Ви впевнені, що хочете скасувати?"
    L["Are you sure you want to give #item to #player?"] = "Ви впевнені, що хочете передати %s гравцеві %s?"
    L["Are you sure you want to reannounce all unawarded items to %s?"] =
    "Ви впевнені, що хочете повторно оголосити усі нерозподілені предмети %s?"
    L["Are you sure you want to request rolls for all unawarded items from %s?"] =
    "Ви впевнені, що хочете запитати роли для всіх нерозподілених предметів від %s?"
    L["Armor Token"] = "Токен броні"
    L["Ask me every time Personal Loot is enabled"] = "Запитувати мене кожного разу, коли ввімкнено персональну здобич"
    L["Auto Award"] = "Автоматичне розподіл"
    L["Auto Award to"] = "Автоматично розподілити"
    L["Auto awarded 'item'"] = "Автоматично розподілено: %s"
    L["Auto Close"] = "Автоматичне закриття"
    L["Auto Enable"] = "Автоматичне ввімкнення"
    L["Auto extracted from whisper"] = "Автоматично видобуто з приватного повідомлення"
    L["Auto Open"] = "Авто-відкриття"
    L["Auto Pass"] = "Автоматичне відмовлення"
    L["Auto pass BoE"] = "Автоматичне відмовлення від БоЕ"
    --[[Translation missing --]]
    L["Auto Pass Transmog"] = "Автопрохід трансмогрофії"
    --[[Translation missing --]]
    L["Auto Pass Transmog Source"] = "Автопрохід джерела трансмогрофії"
    L["Auto Pass Trinkets"] = "Автопрохід тринькетів"
    L["Auto Trade"] = "Автоматична торгівля"
    L["auto_award_desc"] = "Увімкнути автоматичний розподіл"
    L["auto_award_to_desc"] =
    "Гравці, яким буде автоматично розподілено. Список гравців для вибору з'являється, якщо ви перебуваєте у рейдовій групі."
    --[[Translation missing --]]
    L["auto_close_desc"] = "Позначте, щоб автоматично закривати вікно голосування, коли ведучий групи завершує сесію"
    --[[Translation missing --]]
    L["auto_enable_desc"] =
    "Позначте, щоб завжди дозволяти RCLootCouncil обробляти добичу. Зняття позначки зробить аддон запитувати, чи ви хочете використовувати його кожного разу, коли ви входите до рейду або стаєте ведучим групи."
    --[[Translation missing --]]
    L["auto_open_desc"] =
    "Позначте, щоб автоматично відкривати вікно голосування, коли воно доступне. Його можна відкрити вручну за допомогою команди /rc open. Примітка: для цього потрібні дозволи від ведучого групи."
    --[[Translation missing --]]
    L["auto_pass_boe_desc"] =
    "Зніміть позначку, щоб ніколи не автоматично проходити предмети, прив'язані при екіпіровці."
    --[[Translation missing --]]
    L["auto_pass_desc"] =
    "Позначте, щоб дозволити автоматичне проходження предметів, які ваш клас не може використовувати."
    --[[Translation missing --]]
    L["auto_pass_transmog_desc"] =
    "Позначте, щоб дозволити автоматичне проходження предметів, які ваш клас може використовувати тільки для трансмогрофії."
    --[[Translation missing --]]
    L["auto_pass_transmog_source_desc"] =
    "Позначте, щоб дозволити автоматичне проходження предметів, які ваш клас може використовувати тільки для трансмогрофії, і зовнішній вигляд вже відомий з іншого предмета."
    --[[Translation missing --]]
    L["auto_pass_trinket_desc"] =
    "Позначте, щоб автоматично проходити тринькети, які не вказані в Довіднику підземелля для вашого класу."
    --[[Translation missing --]]
    L["autoGroupLoot_warning"] =
    "Примітка: Налаштування лідера групи призведуть до автоматичного керування розподілом групової добичі."
    --[[Translation missing --]]
    L["autoloot_others_item_combat"] = "%s отримав(ла) %s. Цей предмет буде доданий до вікна сесії після завершення бою."
    L["Autopass"] = "Автопрохід"
    --[[Translation missing --]]
    L["Autopassed on 'item'"] = "Автопроходження %s"
    --[[Translation missing --]]
    L["Autostart isn't supported when testing"] = "Автозапуск не підтримується в режимі тестування"
    L["award"] = "вручити"
    L["Award"] = "Вручити"
    L["Award Announcement"] = "Оголошення про вручення"
    L["Award for ..."] = "Вручити гравцю..."
    L["Award later"] = "Вручити пізніше"
    L["Award later isn't supported when testing."] = "Вручення пізніше не підтримується в режимі тестування."
    L["Award later?"] = "Вручити пізніше?"
    L["Award Reasons"] = "Причини вручення"
    L["award_reasons_desc"] = [=[Причини вручення, які не можна вибрати під час розіграшу.
Використовується при зміні відповіді у контекстному меню правою кнопкою миші та для автоматичного вручення.]=]
    L["Awarded"] = "Вручено"
    L["Awarded item cannot be awarded later."] = "Вже вручений предмет не може бути вручений пізніше."
    L["Awards"] = "Нагороди"
    L["Azerite Armor"] = "Азеритова броня"
    L["Background"] = "Фон"
    L["Background Color"] = "Колір фону"
    L["Banking"] = "Банк"
    --[[Translation missing --]]
    L["BBCode export, tailored for SMF."] = "Експорт у форматі BBCode, налаштований під SMF."
    L["Border"] = "Межа"
    L["Border Color"] = "Колір межі"
    L["Button"] = "Кнопка"
    L["Buttons and Responses"] = "Кнопки та відповіді"
    --[[Translation missing --]]
    L["buttons_and_responses_desc"] = [=[Налаштування кнопок відповідей, які показуються на вікні добичі рейдерів.
Порядок, відображений тут, визначає порядок сортування вікна голосування та відображається зліва направо на вікні добичі - використовуйте повзунок, щоб вибрати кількість кнопок, які ви хочете (макс. %d).

Кнопка "Пропустити" автоматично додається найбільше справа.]=]
    L["Candidate didn't respond on time"] = "Кандидат не відповів(-ла) вчасно"
    L["Candidate has disabled RCLootCouncil"] = "Кандидат вимкнув(-ла) RCLootCouncil"
    L["Candidate is not in the instance"] = "Кандидат не знаходиться в екземплярі"
    L["Candidate is selecting response, please wait"] = "Кандидат обирає відповідь, будь ласка, зачекайте"
    L["Candidate removed"] = "Кандидат видалений"
    L["Candidates that can't use the item"] = "Кандидати, які не можуть використовувати предмет"
    L["Cannot autoaward:"] = "Не можна автоматично вручити:"
    --[[Translation missing --]]
    L["Cannot give 'item' to 'player' due to Blizzard limitations. Gave it to you for distribution."] =
    "Не можна передати %s гравцю %s через обмеження Blizzard. Передано вам для розподілу."
    --[[Translation missing --]]
    L["Change Award"] = "Змінити вручення"
    --[[Translation missing --]]
    L["Change Response"] = "Змінити відповідь"
    L["Changing loot threshold to enable Auto Awarding"] = "Зміна порогу добичі для включення автоматичного вручення"
    L["Changing LootMethod to Master Looting"] = "Зміна способу розподілу добичі на Мастерлут"
    L["channel_desc"] = "Канал для надсилання повідомлення."
    --[[Translation missing --]]
    L["Chat print"] = "Виведення у чат"
    --[[Translation missing --]]
    L["chat tVersion string"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s - %s"
    --[[Translation missing --]]
    L["chat version String"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s"
    --[[Translation missing --]]
    L["chat_cmd_add_found_items"] = "Знайдено %d предметів з таймерами торгівлі в вашому інвентарі."
    --[[Translation missing --]]
    L["chat_cmd_add_invalid_owner"] = "Гравець %s є недійсним або не є кандидатом."
    --[[Translation missing --]]
    L["chat_commands_add"] = "Додати предмет до вікна сесії"
    --[[Translation missing --]]
    L["chat_commands_award"] = "Запустити сесію з предметами, добытими в ваш інвентар"
    --[[Translation missing --]]
    L["chat_commands_config"] = "Відкрити інтерфейс налаштувань"
    --[[Translation missing --]]
    L["chat_commands_council"] = "Відкрити інтерфейс ради"
    --[[Translation missing --]]
    L["chat_commands_history"] = "Відкрити Історію добичі (або 'h' або 'his')"
    --[[Translation missing --]]
    L["chat_commands_open"] = "Відкрити вікно голосування"
    --[[Translation missing --]]
    L["chat_commands_reset"] = "Скинути положення вікон аддона"
    L["chat_commands_sync"] = "Відкрити вигляд синхронізатора"
    L["chat_commands_test"] = "Емулювати роздачу здобичі з # предметами, 1, якщо не вказано"
    L["chat_commands_version"] = "Відкрити перевірку версії (або 'v' або 'ver')"
    L["chat_commands_whisper"] = "Вивести довідку щодо приватних команд"
    L["Check this to loot the items and distribute them later."] =
    "Позначте це, щоб здобути предмети та розподілити їх пізніше."
    L["Check to append the realmname of a player from another realm"] =
    "Позначте, щоб додати назву реалму гравця з іншого реалму"
    L["Check to have all frames minimize when entering combat"] =
    "Позначте, щоб всі вікна мінімізувалися під час входу в бій"
    L["Choose timeout length in seconds"] = "Виберіть тривалість таймауту в секундах"
    L["Choose when to use RCLootCouncil"] = "Виберіть, коли використовувати RCLootCouncil"
    L["Clear Loot History"] = "Очистити історію дропу"
    L["Clear Selection"] = "Очистити вибір"
    L["clear_loot_history_desc"] = "Видалити всю історію дропу."
    L["Click to add note to send to the council."] = "Натисніть, щоб додати записку для консула."
    L["Click to change your note."] = "Натисніть, щоб змінити вашу записку."
    L["Click to expand/collapse more info"] = "Натисніть, щоб розгорнути/згорнути додаткову інформацію"
    L["Click to switch to 'item'"] = "Натисніть, щоб перейти до '%s'"
    L["config"] = "налаштування"
    L["confirm_award_later_text"] =
    "Ви впевнені, що хочете нагородити %s пізніше? Предмет буде записаний у списку нагороди додатку, і ви отримаєте його, якщо він знаходиться у слоті дропу. Ви можете використати команду '/rc award', щоб розподілити цей предмет пізніше."
    L["confirm_usage_text"] = "|cFF87CEFA RCLootCouncil |r Бажаєте використати RCLootCouncil з цією групою?"
    L["Conqueror Token"] = "Токен Завоюванця"
    L["Corruption if awarded:"] = "Корупція, якщо нагороджено:"
    L["Could not Auto Award i because the Loot Threshold is too high!"] =
    "Неможливо автонагородити %s, оскільки поріг здобичі занадто високий!"
    L["Could not find 'player' in the group."] = "Не вдалося знайти гравця %s в групі."
    L["Couldn't find any councilmembers in the group"] = "Не вдалося знайти жодного члена консула в групі"
    L["council"] = "консул"
    L["Council"] = "Консул"
    L["Current Council"] = "Поточний Консул"
    L["current_council_desc"] = "Натисніть, щоб видалити певних людей з консула"
    L["Customize appearance"] = "Налаштувати зовнішній вигляд"
    L["customize_appearance_desc"] =
    "Тут ви можете повністю налаштувати вигляд RCLootCouncil. Використовуйте функцію збереження вище, щоб швидко перемикатися між стилями."
    L["Data Received"] = "Дані отримані"
    L["Date"] = "Дата"
    L["days and x months"] = "%s та %d місяців"
    L["days, x months, y years"] = "%s, %d місяців та %d років"
    L["Delete Skin"] = "Видалити стиль"
    L["delete_skin_desc"] = "Видалити вибраний нестандартний стиль зі списку."
    L["Deselect responses to filter them"] = "Скасуйте вибір відповідей, щоб відфільтрувати їх"
    L["Diff"] = "Відмінність"
    L["Discord friendly output."] = "Вивід, придатний для Discord."
    L["disenchant_desc"] =
    "Виберіть, щоб використовувати це обґрунтування при нагородженні предмета через кнопку 'Розколоти'"
    L["Do you want to keep %s for yourself or trade?"] = "Бажаєте залишити %s собі чи обмінятися?"
    L["Done syncing"] = "Синхронізацію завершено"
    L["Double click to delete this entry."] = "Двічі клацніть, щоб видалити цей запис."
    L["Dropped by:"] = "Випало з:"
    L["Edit Entry"] = "Змінити запис"
    L["Enable Loot History"] = "Увімкнути історію дропу"
    L["Enable Timeout"] = "Увімкнути таймаут"
    L["enable_loot_history_desc"] =
    "Включає збереження історії. RCLootCouncil не буде записувати жодні дані, якщо ця опція вимкнена."
    L["enable_timeout_desc"] = "Позначте, щоб увімкнути таймаут на вікні дропу"
    L["Enter your note:"] = "Введіть вашу записку:"
    L["EQdkp-Plus XML output, tailored for Enjin import."] =
    "Вивід у форматі EQdkp-Plus XML, підготовлений для імпорту в Enjin."
    L["error_test_as_non_leader"] = "Ви не можете почати тестування, якщо не є лідером групи."
    L["Everybody is up to date."] = "Всі оновлені."
    L["Everyone have voted"] = "Всі проголосували"
    L["Export"] = "Експорт"
    L["Fake Loot"] = "Фальшивий дроп"
    L["Following items were registered in the award later list:"] =
    "Були зареєстровані наступні предмети у списку нагороди на пізніше:"
    L["Following winners was registered:"] = "Були зареєстровані наступні переможці:"
    L["Found the following outdated versions"] = "Знайдено наступні застарілі версії"
    L["Frame options"] = "Опції вікна"
    L["Free"] = "Безкоштовно"
    L["Full Bags"] = "Повні сумки"
    L["g1"] = "г1"
    L["g2"] = "г2"
    L["Gave the item to you for distribution."] = "Віддав предмет вам для розподілу."
    L["General options"] = "Загальні налаштування"
    L["Group Council Members"] = "Члени Групового Консула"
    L["group_council_members_desc"] = "Використовуйте це, щоб додати членів консула з іншого сервера або гільдії."
    L["group_council_members_head"] = "Додати члена консула з поточної групи."
    L["Guild Council Members"] = "Члени Гільдійного Консула"
    L["Hide Votes"] = "Приховати голоси"
    L["hide_votes_desc"] = "Тільки гравці, які проголосували, можуть бачити результати голосування."
    L["How to sync"] = "Як синхронізувати"
    --[[Translation missing --]]
    L["huge_export_desc"] =
    "Великий експорт. Відображати лише перший рядок, щоб уникнути замерзання гри. Натисніть Ctrl+C, щоб скопіювати весь вміст."
    L["Ignore List"] = "Список винятків"
    L["Ignore Options"] = "Налаштування винятків"
    L["ignore_input_desc"] =
    "Введіть itemID, щоб додати його до списку винятків RCLootCouncil та ніколи не виводити цей предмет на голосування"
    L["ignore_input_usage"] = "Ця функція приймає лише itemID (цифри), itemName або itemLink."
    L["ignore_list_desc"] = "Предмети, які ігнорує RCLootCouncil. Натисніть на предмет, щоб видалити його."
    --[[Translation missing --]]
    L["ignore_options_desc"] =
    "Контролюйте, які предмети повинен ігнорувати RCLootCouncil. Якщо ви додаєте предмет, якого немає в кеші, вам потрібно переключитись на іншу вкладку і повернутися, перш ніж ви його побачите в списку."
    L["Import aborted"] = "Імпорт перервано"
    L["import_desc"] = "Вставте дані сюди. Відображається лише перших 2500 символів, щоб гра не зависала."
    --[[Translation missing --]]
    L["import_malformed"] = "Імпорт був некоректним (не рядок)"
    --[[Translation missing --]]
    L["import_malformed_header"] = "Некоректний заголовок"
    --[[Translation missing --]]
    L["import_not_supported"] = "Тип імпорту або неправильний, або не підтримується."
    --[[Translation missing --]]
    L["Invalid selection"] = "Неправильний вибір"
    L["Item"] = "Предмет"
    L["'Item' is added to the award later list."] = "%s додано в список для винагороди пізніше."
    --[[Translation missing --]]
    L["Item quality is below the loot threshold"] = "Якість предмета нижче порогу луту"
    L["Item received and added from 'player'"] = "Предмет отримано та додано від гравця %s."
    L["Item was awarded to"] = "Предмет був видачі"
    L["Item(s) replaced:"] = "Предмет(и) замінено:"
    --[[Translation missing --]]
    L["item_in_bags_low_trade_time_remaining_reminder"] =
    "Наступні предмети, які треба забрати в рюкзаку та мають менше %s часу на обмін. Щоб уникнути цього нагадування, передайте предмет, або '/rc remove [index]', щоб видалити предмет зі списку, або '/rc clear', щоб очистити список на видачу, або екіпіруйте предмет, щоб його не можна було обміняти."
    --[[Translation missing --]]
    L["Items stored in the loot master's bag for award later cannot be awarded later."] =
    "Предмети, збережені в сумці мастера видачі для видачі пізніше, не можуть бути видані пізніше."
    L["Items under consideration:"] = "Предмети, які розглядаються:"
    L["Keep"] = "Зберегти"
    L["Latest item(s) won"] = "Останні виграні предмети"
    --[[Translation missing --]]
    L["Length"] = "Довжина"
    L["Log"] = "Лог"
    L["log_desc"] = "Увімкнути запис логів в історію луту."
    L["Loot announced, waiting for answer"] = "Лут оголошено, очікування відповіді"
    L["Loot History"] = "Історія луту"
    L["Loot Status"] = "Статус луту"
    L["Loot won:"] = "Лут виграли:"
    --[[Translation missing --]]
    L["loot_history_desc"] = [=[RCLootCouncil автоматично записує відповідну інформацію з сесій.
Сирі дані зберігаються в ".../SavedVariables/RCLootCouncil.lua".

Примітка: НемастерЛутери можуть зберігати дані тільки відправлені від МастерЛутера.
]=]
    L["Looted"] = "Полутано"
    L["Looted by:"] = "Полутав:"
    L["lootFrame_error_note_required"] = "Ви повинні додати примітку перед надсиланням вашої відповіді - %s"
    L["lootHistory_moreInfo_winnersOfItem"] = "Переможці %s:"
    L["Looting options"] = "Налаштування луту"


    L["Lower Quality Limit"] = "Нижня межа якості"
    L["lower_quality_limit_desc"] = [=[Виберіть нижню межу якості для автоматичного розподілу (якість включається!).
Примітка: Це скасовує звичайний поріг луту.]=]
    L["Mainspec/Need"] = "Основний спек/Потрібно"
    L["Mass deletion of history entries."] = "Масове видалення записів історії."
    L["Master Looter"] = "Мастерлутер"
    L["master_looter_desc"] = "Примітка: Ці налаштування будуть використовуватися тільки якщо ви є мастерлутером."
    L["Message"] = "Повідомлення"
    --[[Translation missing --]]
    L["Message for each item"] = "Повідомлення для кожного предмета"
    --[[Translation missing --]]
    L["message_desc"] = "Повідомлення, яке відправляється в обраний канал."
    L["Minimize in combat"] = "Мінімізувати в бою"
    L["Minor Upgrade"] = "Дрібне покращення"
    L["Missing votes from:"] = "Відсутні голоси від:"
    L["ML sees voting"] = "МЛ бачить голосування"
    --[[Translation missing --]]
    L["ML_ADD_INVALID_ITEM"] = "Неправильний itemLink або itemID: %s"
    --[[Translation missing --]]
    L["ML_ADD_ITEM_MAX_ATTEMPTS"] = "Не вдалося отримати інформацію про предмет %s - ймовірно, це не справжній предмет."
    L["ml_sees_voting_desc"] = "Дозволяє мастерлутеру бачити, хто голосує за кого."
    --[[Translation missing --]]
    L["module_tVersion_outdated_msg"] = "Найновіша версія тестового модуля %s: %s"
    --[[Translation missing --]]
    L["module_version_outdated_msg"] = "Версія модуля %s %s застаріла. Новіша версія - %s."
    L["Modules"] = "Модулі"
    L["More Info"] = "Додаткова інформація"
    --[[Translation missing --]]
    L["more_info_desc"] =
    "Виберіть, скільки з ваших відповідей ви хочете побачити для останніх нагороджених предметів. Наприклад, вибір 2 покаже останні нагороджені предмети основного спеку і вторинного спеку, разом з тим, як давно вони були нагороджені."
    L["Multi Vote"] = "Багато голосів"
    L["multi_vote_desc"] = "Дозволяє голосувати за кількох кандидатів одночасно."
    L["'n days' ago"] = "%s дн. тому"
    L["Never use RCLootCouncil"] = "Ніколи не використовувати RCLootCouncil"
    --[[Translation missing --]]
    L["new_ml_bagged_items_reminder"] =
    "У вас є останні предмети у списку на нагородження пізніше. '/rc list' для перегляду списку, '/rc clear' для очищення списку, '/rc remove [index]' для видалення вибраного запису зі списку. '/rc award' для початку сесії зі списку на нагородження пізніше, '/rc add' з відміткою на нагородження пізніше, щоб додати предмет у список."
    L["No (dis)enchanters found"] = "Не знайдено (розчарів/зачарів)"
    L["No entries in the Loot History"] = "Немає записів в історії луту"
    --[[Translation missing --]]
    L["No entry in the award later list is removed."] = "No entry in the award later list is removed."
    --[[Translation missing --]]
    L["No items to award later registered"] = "No items to award later registered"
    --[[Translation missing --]]
    L["No recipients available"]                = "No recipients available"
    L["No session running"]                     = "Сесій не запущено"
    L["No winners registered"]                  = "Переможці не зареєстровані"
    L["non_tradeable_reason_nil"]               = "Невідомо"
    L["non_tradeable_reason_not_tradeable"]     = "Не передається"
    L["non_tradeable_reason_rejected_trade"]    = "Хотів залишити предмет"
    L["Non-tradeable reason:"]                  = "Не передається, причина:"
    L["Not announced"]                          = "Не анонсовано"
    L["Not cached, please reopen."]             = "Не кешується, будь ласка, перевірте знову."
    L["Not Found"]                              = "Не знайдено"
    L["Not in your guild"]                      = "Не в вашій гільдії"
    L["Not installed"]                          = "Не встановлено"
    L["Notes"]                                  = "Примітки"
    L["Now handles looting"]                    = "Тепер відповідає за розподіл здобичі"
    L["Number of buttons"]                      = "Кількість кнопок"
    L["Number of raids received loot from:"]    = "Кількість рейдів, з яких отримана здобич:"
    L["Number of reasons"]                      = "Кількість причин"
    L["Number of responses"]                    = "Кількість відповідей"
    L["number_of_buttons_desc"]                 = "Переміщуйте повзунок, щоб змінити кількість кнопок."
    L["number_of_reasons_desc"]                 = "Переміщуйте повзунок, щоб змінити кількість відповідей."
    L["Observe"]                                = "Спостереження"
    L["observe_desc"]                           = "Дозволити не-членам Ради спостерігати за голосуванням. Вони не зможуть голосувати."
    L["Offline or RCLootCouncil not installed"] = "Офлайн або RCLootCouncil не встановлено"
    L["Offspec/Greed"]                          = "Оффспек/Не відмовлюсь"
    L["Only use in raids"]                      = "Використовувати тільки на рейдах"
    L["onlyUseInRaids_desc"]                    = "Виберіть цю опцію, щоб автоматично відключати RCLootCouncil у групах."
    L["open"]                                   = "відкрити"
    L["Open the Loot History"]                  = "Відкрити історію дропу"
    L["open_the_loot_history_desc"]             = "Натисніть, щоб відкрити історію дропу."
    L["Opens the synchronizer"]                 = "Відкрити синхронізатор"
    L["opt_addButton_desc"]                     = "Додайте нову групу кнопок для вибраного слоту."
    L["opt_autoAddBoEs_desc"]                   = "Автоматично додавати всі предмети зі значенням \"Обмін\" до сесії."
    L["opt_autoAddBoEs_name"]                   = "Автоматичне додавання предметів зі значенням \"Обмін\""
    L["opt_autoAddItems_desc"]                  = "Автоматично додавати всі підходящі предмети до сесії."
    L["opt_autoAddItems_name"]                  = "Автоматичне додавання предметів"
    L["opt_autoAddPets_desc"]                   = "Автоматично додавати всі спутникові питомці до сесії."
    L["opt_autoAddPets_name"]                   = "Додавати питомців"
    L["opt_autoAwardPrioList_desc"]             =
    "Предмети надаються першому знайденому кандидату у вашій групі відповідно до цього списку пріоритетів."
    L["opt_autoGroupLoot_desc"]                 =
    "При включенні RCLootCouncil автоматично натискає кнопки \"Пропустити\" та \"Не відмовлюсь\", щоб всі предмети потрапили в ваш інвентар."
    L["opt_autoGroupLoot_name"]                 = "Автоматичне групове розподілення"
    L["opt_autoGroupLootGuildGroupOnly_desc"]   =
    "При включенні RCLootCouncil автоматично пропускає групове розподілення, коли ви перебуваєте в групі гільдії."
    L["opt_autoGroupLootGuildGroupOnly_name"]   = "Тільки група гільдії"
    L["opt_autoTrade_desc"]                     =
    "Позначте цю опцію, щоб автоматично додавати нагороджені предмети до вікна обміну під час торгівлі з переможцем. Якщо ця опція вимкнена, перед додаванням предметів буде відображатися спливаюче вікно."
    L["opt_award_later_desc"]                   = "Позначте цю опцію, щоб автоматично позначити \"Нагородити пізніше\" у Вікні Сесії."
    L["opt_buttonsGroup_desc"]                  = [=[Налаштування групи кнопок для %s і відповідей.
Дивіться вище для детального пояснення.]=]
    L["opt_chatFrameName_desc"]                 = "Виберіть вікно чату, до якого ви хочете виводити інформацію від RCLootCouncil."
    L["opt_chatFrameName_name"]

                                                = "Вікно чату"
    L["opt_closeWithEscape_desc"]               =
    "При включенні, всі несуттєві вікна RCLootCouncil можна закрити, натиснувши \"Escape\". (Вимагає перезавантаження, щоб зміни війшли в силу для вже створених вікон)"
    L["opt_closeWithEscape_name"]               = "Закриття клавішою Escape"
    L["opt_deleteDate_confirm"]                 = [=[Ви впевнені, що хочете видалити все старше обраного терміну?
Це дія незворотна.]=]
    L["opt_deleteDate_desc"]                    = "Видалити все, що було створено раніше обраної кількості днів."
    L["opt_deleteName_confirm"]                 = [=[Ви впевнені, що хочете видалити всі записи від %s?
Це дія незворотна.]=]
    L["opt_deleteName_desc"]                    = "Видалити всі записи від обраного кандидата."
    L["opt_deletePatch_confirm"]                = [=[Ви впевнені, що хочете видалити все, що було створено раніше обраного патча?
 Це дія незворотна.]=]
    L["opt_deletePatch_desc"]                   = "Видалити всі записи, додані до обраного патча."
    L["opt_deleteRaid_confirm"]                 = [=[Ви впевнені, що хочете видалити всі записи з обраного прикладу?
Це дія незворотна.]=]
    L["opt_deleteRaid_desc"]                    = "Видалити всі записи з обраного прикладу."
    L["opt_moreButtons_desc"]                   =
    "Додати новий набір кнопок для певного предмета. Використовується найбільш конкретний тип, тобто кнопки для 'Голови' будуть використовуватися для головних деталей замість шматків азериту."
    L["opt_printCompletedTrade_Desc"]           =
    "Позначте, щоб включити повідомлення кожного разу, коли кандидат передає нагороджений предмет переможцю."
    L["opt_printCompletedTrade_Name"]           = "Повідомлення про обмін"
    L["opt_rejectTrade_Desc"]                   =
    "Позначте, щоб дозволити кандидатам вибирати, чи хочуть вони \"віддати\" предмет Раді, чи ні. Якщо опція не відмічена, всі обмінні предмети PL додаються автоматично."
    L["opt_rejectTrade_Name"]                   = "Дозволити залишити"
    L["opt_skipSessionFrame_desc"]              =
    "Пропустити Вікно Сесії. УВАГА: Це призводить до того, що аддон створює сесію з усіма підходящими предметами без можливості редагування списку!"
    L["opt_skipSessionFrame_name"]              = "Пропустити Вікно Сесії"
    L["opt_usage_AskGroupLoot"]                 = "Запитувати мене кожного разу, коли увімкнено груповий розподіл"
    L["opt_usage_GroupLoot"]                    = "Завжди використовувати RCLootCouncil з груповим розподілом"
    L["opt_useSlashRC_desc"]                    =
    "Вимкніть це, якщо ви хочете відновити команду '/rc' для готовності. Команди RCLootCouncil все ще доступні за допомогою '/rclc'. Для того, щоб це набуло чинності, потрібно виконати команду '/reload'."
    --[[Translation missing --]]
    L["opt_useSlashRC_name"] = "Використовувати /rc"
    --[[Translation missing --]]
    L["options_autoAwardBoE_desc"] =
    "Увімкніть це, щоб автоматично нагороджувати всі епічні предмети BoE (Bind on Equip) певною особою зазначеної причини."
    L["options_autoAwardBoE_name"] = "Автонагородження БоЕ"
    --[[Translation missing --]]
    L["options_ml_outOfRaid_desc"] =
    "При включенні, у групі з 8 або більше учасників, будь-яка особа, яка не перебуває у відповідному екземплярі, коли розпочинається сесія, автоматично відправить відповідь 'Out of Raid'."
    --[[Translation missing --]]
    L["options_ml_outOfRaid_name"] = "Підтримка поза Рейдом"
    --[[Translation missing --]]
    L["options_requireNotes_desc"] =
    "Якщо увімкнено, кандидати не можуть надіслати свою відповідь без внесення примітки."
    L["Original Owner"] = "Оригінальний власник"
    L["Out of instance"] = "Поза екземпляром"
    L["Patch"] = "Патч"
    L["Personal Loot - Non tradeable"] = "Персональний лут - необмінний"
    L["Personal Loot - Rejected Trade"] = "Персональний лут - відхилено обмін"
    L["'player' can't receive 'type'"] = "%s не може отримати %s - версії не співпадають?"
    L["'player' declined your sync request"] = "%s відхилив ваш запит на синхронізацію"
    L["'player' has asked you to reroll"] = "%s попросив вас реролл"
    L["'player' has ended the session"] = "%s завершив сесію"
    --[[Translation missing --]]
    L["'player' has rolled 'roll' for: 'item'"] = "%s кинув %d за: %s"
    --[[Translation missing --]]
    L["'player' hasn't opened the sync window"] = "%s не відкрив вікно синхронізації (/rc sync)"
    L["Player is ineligible for this item"] = "Гравець не має права на цей предмет"
    L["Player is not in the group"] = "Гравець не в групі"
    L["Player is not in this instance"] = "Гравець не в цьому екземплярі"
    L["Player is offline"] = "Гравець не в мережі"
    L["Please wait a few seconds until all data has been synchronized."] =
    "Будь ласка, зачекайте кілька секунд, поки вся інформація синхронізується."
    L["Please wait before trying to sync again."] = "Будь ласка, зачекайте перед повторною спробою синхронізації."
    L["Print Responses"] = "Вивести відповіді"
    --[[Translation missing --]]
    L["print_response_desc"] = "Вивести вашу відповідь у вікні чату"
    L["Protector Token"] = "Захисний жетон"
    --[[Translation missing --]]
    L["Raw lua output. Doesn't work well with date selection."] =
    "Raw lua output. Doesn't work well with date selection."
    L["RCLootCouncil - Synchronizer"] = "RCLootCouncil - Синхронізатор"
    L["RCLootCouncil Loot Frame"] = "Вікно добутку RCLootCouncil"
    L["RCLootCouncil Loot History"] = "Історія добутку RCLootCouncil"
    L["RCLootCouncil Session Setup"] = "Налаштування сесії RCLootCouncil"
    L["RCLootCouncil Version Checker"] = "Перевірка версії RCLootCouncil"
    L["RCLootCouncil Voting Frame"] = "Вікно голосування RCLootCouncil"
    --[[Translation missing --]]
    L["rclootcouncil_trade_add_item_confirm"] =
    "RCLootCouncil виявляє, що %d обмінних предметів у вашому рюкзаку нагороджено гравцю %s. Ви хочете додати предмети до обмінного вікна?"
    --[[Translation missing --]]
    L["Reannounce ..."] = "Повторно оголосити ..."
    --[[Translation missing --]]
    L["Reannounced 'item' to 'target'"] = "Повторно оголошено %s для %s"
    L["Reason"] = "Причина"
    L["reason_desc"] = "Причина нагородження в історії добутку, коли відбувається автонагородження."
    L["Remove All"] = "Видалити всіх"
    L["Remove from consideration"] = "Видалити з розгляду"
    L["remove_all_desc"] = "Видалити всіх учасників з Ради Підпорядкування"
    --[[Translation missing --]]
    L["Requested rolls for 'item' from 'target'"] = "Requested rolls for %s from %s"
    L["Require Notes"] = "Вимагати примітки"
    L["Reset Skin"] = "Скинути скин"
    L["Reset skins"] = "Скинути скини"
    L["reset_announce_to_default_desc"] = "Скидає налаштування повідомлень до значень за замовчуванням"
    L["reset_buttons_to_default_desc"] = "Скидає всі кнопки, кольори та відповіді до значень за замовчуванням"
    L["reset_skin_desc"] = "Скинути всі кольори та фон поточного скина."
    L["reset_skins_desc"] = "Скинути стандартні скини."
    L["reset_to_default_desc"] = "Скинути причини нагородження на значення за замовчуванням."
    L["Response"] = "Відповідь"
    L["Response color"] = "Колір відповіді"
    L["Response isn't available. Please upgrade RCLootCouncil."] =
    "Відповідь недоступна. Будь ласка, оновіть RCLootCouncil."
    L["Response options"] = "Налаштування відповідей"
    --[[Translation missing --]]
    L["Response to 'item'"] = "Response to %s"
    --[[Translation missing --]]
    L["Response to 'item' acknowledged as 'response'"] = "Response to %s acknowledged as \" %s \""
    L["response_color_desc"] = "Встановити колір для відповіді."
    L["Responses"] = "Відповіді"
    L["Responses from Chat"] = "Відповіді з чату"
    --[[Translation missing --]]
    L["responses_from_chat_desc"] =
    [=[У разі, якщо хтось не встановив додаток (Кнопка 1 використовується, якщо не вказано ключове слово).
Наприклад: "/w ML_NAME 1 заревно [ITEM]" за замовчуванням покаже, що ви заревнули перший предмет у сесії.
Нижче ви можете вибрати ключові слова для окремих кнопок. Для ключових слів приймаються лише A-Z, a-z та 0-9, все інше вважається розділенням.
Гравці можуть отримати список ключових слів, надіславши повідомлення 'rchelp' Мастеру Добутку після включення додатка (тобто в рейді).]=]
    L["Save Skin"] = "Зберегти скин"
    L["save_skin_desc"] =
    "Введіть назву свого скина та натисніть OK, щоб зберегти його. Зверніть увагу, це може перезаписати будь-який нестандартний скин."
    L["Self Vote"] = "Голос за себе"
    L["self_vote_desc"] = "Дозволяє голосувати за себе."
    L["Send History"] = "Надіслати історію"
    L["Send to Guild"] = "Надіслати в гільдію"
    L["send_history_desc"] =
    "Надіслати дані всім у рейді, незалежно від того, чи записуєте ви журнали. Відправлятиметься тільки якщо ви є головним лутером."
    --[[Translation missing --]]
    L["send_to_guild_desc"] =
    "Надсилати історію членам гільдії замість вашої групи. Корисно, якщо ви керуєте кількома рейдовими групами та бажаєте отримати загальну історію для вашої гільдії. Однак нечленам гільдії у вашій групі не будуть відображатися записи історії."
    --[[Translation missing --]]
    L["Sending 'type' to 'player'..."] = "Відправлення %s до %s..."
    --[[Translation missing --]]
    L["Sent whisper help to 'player'"] = "Надіслана особиста допомога користувачу %s"
    L["session_error"] = "Щось пішло не так - перезапустіть сесію"
    L["session_help_from_bag"] =
    "Після закінчення сесії ви можете використовувати команду '/rc winners' для перегляду, кому треба передати предмети."
    L["session_help_not_direct"] = "Предмети в цій сесії не передаються автоматично і повинні бути передані вручну."
    --[[Translation missing --]]
    L["Set the text for button i's response."] = "Встановити текст для відповіді кнопки %d."
    --[[Translation missing --]]
    L["Set the text on button 'number'"] = "Встановити текст на кнопці %i."
    --[[Translation missing --]]
    L["Set the whisper keys for button i."] = "Встановити клавіші для приватного повідомлення для кнопки %d."
    L["Show Spec Icon"] = "Показувати іконку спеціалізації"
    --[[Translation missing --]]
    L["show_spec_icon_desc"] =
    "Позначте, щоб замінити іконки класів кандидатів їхньою іконкою спеціалізації, якщо доступно."
    --[[Translation missing --]]
    L["Silent Auto Pass"] = "Тихе автопрохождення"
    --[[Translation missing --]]
    L["silent_auto_pass_desc"] = "Позначте, щоб приховати повідомлення про автоматичний пропуск"
    --[[Translation missing --]]
    L["Simple BBCode output."] = "Простий вивід BBCode."
    L["Skins"] = "Скіни"
    L["skins_description"] =
    "Виберіть один зі стандартних скінів або створіть власний. Це впливає лише на зовнішній вигляд. Відкрийте перевірку версії, щоб побачити результат ('/rc version')."
    L["Slot"] = "Слот"
    L["Socket"] = "Гніздо"
    L["Something went wrong :'("] = "Щось пішло не так :'("
    L["Something went wrong during syncing, please try again."] =
    "Щось пішло не так під час синхронізації, спробуйте ще раз."
    L["Sort Items"] = "Сортувати предмети"
    L["sort_items_desc"] = "Сортувати сесії за слотом та рівнем предмета."
    --[[Translation missing --]]
    L["Standard .csv output."] = "Стандартний експорт в форматі CSV, який можна редагувати та імпортувати знову."
    --[[Translation missing --]]
    L["Standard JSON output."] = "Масив JSON, що містить один JSON-об'єкт на запис історії."
    L["Status texts"] = "Тексти статусу"
    L["Store in bag and award later"] = "Зберегти у сумку та вручити пізніше"
    --[[Translation missing --]]
    L["Succesfully deleted %d entries"] = "Успішно видалено %d записів"
    --[[Translation missing --]]
    L["Succesfully deleted %d entries from %s"] = "Успішно видалено %d записів з %s"
    --[[Translation missing --]]
    L["Successfully imported 'number' entries."] = "Успішно імпортовано %d записів."
    L["Successfully received 'type' from 'player'"] = "Успішно отримано '%s' від гравця '%s'."
    L["Sync"] = "Синхронізація"
    --[[Translation missing --]]
    L["sync_detailed_description"] = [=[
1. Обидва гравці повинні мати відкрите вікно синхронізації (/rc sync).
2. Виберіть тип даних, які ви хочете надіслати.
3. Виберіть гравця, якому ви хочете надіслати дані.
4. Натисніть "Синхронізація" - тепер ви побачите панель стану з надсиланням даних.

Це вікно повинно бути відкритим для ініціювання синхронізації,
але його закриття не зупинить синхронізацію в процесі.

Цільові об'єкти включають в себе гільдійних та групових членів онлайн, друзів та вашу поточну дружню ціль.]=]
    L["test"] = "тест"
    L["Test"] = "Тест"
    L["test_desc"] = "Натисніть, щоб протестувати вікно Master Loot для себе та інших учасників рейду."
    L["Text color"] = "Колір тексту"
    L["Text for reason #i"] = "Текст для причини #"
    L["text_color_desc"] = "Колір тексту при відображенні."
    L["The award later list has been cleared."] = "Список предметів для нагородження пізніше очищено."
    L["The award later list is empty."] = "Список предметів для нагородження пустий."
    L["The following council members have voted"] = "Проголосували наступні члени консилю"
    --[[Translation missing --]]
    L["The following entries are removed from the award later list:"] =
    "The following entries are removed from the award later list:"
    --[[Translation missing --]]
    L["The following items are removed from the award later list and traded to 'player'"] =
    "The following items are removed from the award later list and are traded to %s"
    --[[Translation missing --]]
    L["The item can only be looted by you but it is not bind on pick up"] =
    "The item can only be looted by you but it is not bind on pick up"
    L["The item will be awarded later"] = "Предмет буде вручений пізніше"
    L["The item would now be awarded to 'player'"] = "Предмет буде вручений гравцю %s"
    --[[Translation missing --]]
    L["The loot is already on the list"] = "The loot is already on the list"
    --[[Translation missing --]]
    L["The loot master"] = "The loot master"
    L["The Master Looter doesn't allow multiple votes."] = "Master Looter не дозволяє кілька голосів."
    L["The Master Looter doesn't allow votes for yourself."] = "Майстер здобичі не дозволяє голосувати за себе."
    L["The session has ended."] = "Сесія завершена."
    L["This item"] = "Цей предмет"
    L["This item has been awarded"] = "Цей предмет був вручений"
    L["Tier 19"] = "Тир 19"
    L["Tier 20"] = "Тир 20"
    L["Tier 21"] = "Тир 21"
    --[[Translation missing --]]
    L["Tier Tokens ..."] = "Tier Tokens ..."
    --[[Translation missing --]]
    L["Tier tokens received from here:"] = "Tier tokens received from here:"
    L["tier_token_heroic"] = "Героїчний"
    L["tier_token_mythic"] = "Міфічний"
    L["tier_token_normal"] = "Нормальний"
    L["Time"] = "Час"
    --[[Translation missing --]]
    L["time_remaining_warning"] = "Warning - The following items in your bags cannot be traded in less than %d minutes:"
    L["Timeout"] = "Час вийшов"
    --[[Translation missing --]]
    L["Timeout when giving 'item' to 'player'"] = "Timeout when giving %s to %s"
    --[[Translation missing --]]
    L["To target"] = "To target"
    L["Tokens received"] = "Отримано токенів"
    --[[Translation missing --]]
    L["Total awards"] = "Total awards"
    L["Total items received:"] = "Всього отримано предметів:"
    L["Total items won:"] = "Всього виграно предметів:"
    L["trade_complete_message"] = "%s передав %s гравцю %s."
    L["trade_item_to_trade_not_found"] = "УВАГА: Предмет для передачі: %s не може бути знайдений у вашому інвентарі!"
    L["trade_wrongwinner_message"] = "УВАГА: %s передав %s гравцю %s замість %s!"
    L["tVersion_outdated_msg"] = "Остання тестова версія RCLootCouncil: %s"
    L["Unable to give 'item' to 'player'"] = "Неможливо вручити %s гравцю %s"
    L["Unable to give 'item' to 'player' - (player offline, left group or instance?)"] =
    "Неможливо вручити %s гравцю %s - (гравець офлайн, покинув групу або підземелля?)"
    --[[Translation missing --]]
    L["Unable to give out loot without the loot window open."] = "Unable to give out loot without the loot window open."
    --[[Translation missing --]]
    L["Unawarded"] = "Unawarded"
    L["Unguilded"] = "Без гільдії"
    L["Unknown date"] = "Невідома дата"
    L["Unknown/Chest"] = "Невідомо/Скринька"
    --[[Translation missing --]]
    L["Unlooted"] = "Unlooted"
    L["Unvote"] = "Відмінити голос"
    L["Upper Quality Limit"] = "Максимальна якість предмету"
    --[[Translation missing --]]
    L["upper_quality_limit_desc"] =
    [=[Виберіть максимальну якість предмету, який можна автоматично вручити (ця якість включена!).
Примітка: це перевизначає звичайний поріг здобичі.]=]
    L["Usage"] = "Використання"
    L["Usage Options"] = "Опції використання"
    L["Vanquisher Token"] = "Токен Переможця"
    L["version"] = "версія"
    L["Version"] = "Версія"
    L["Version Check"] = "Перевірка версії"
    L["version_check_desc"] = "Відкрити модуль перевірки версії додатка."
    L["version_outdated_msg"] = "Ваша версія додатка %s застаріла. Остання версія %s, будь ласка, оновіть RCLootCouncil."
    L["Vote"] = "Голосувати"
    L["Voters"] = "Голосуючі"
    L["Votes"] = "Голоси"
    L["Voting options"] = "Опції голосування"
    L["Waiting for response"] = "Очікування відповіді"
    --[[Translation missing --]]
    L["whisper_guide"] =
    "[RCLootCouncil]: number response [item1] [item2]. Link your item(s) that item (number) would replace, (response) being of the keywords below: Ex. '1 Greed [item1]' would greed on item #1"
    L["whisper_guide2"] = "[RCLootCouncil]: Ви отримаєте повідомлення, якщо вас успішно додано."
    L["whisper_help"] = [=[Рейдери можуть використовувати систему приватних повідомлень, якщо хтось не має додатка.
Надішліть "rchelp" майстру добутку, щоб отримати список ключових слів, які можна змінити в меню "Кнопки і Відповіді".
Майстру добутку рекомендується включити "Повідомлення про оголошення" для кожного предмета, оскільки номер кожного предмета необхідний для використання системи прив

атних повідомлень.
Примітка: Людям слід встановлювати додаток, інакше гравцю буде доступна не вся інформація.]=]
    L["whisperKey_greed"] = "не відмовлюсь, офс-спек, ос, 2"
    L["whisperKey_minor"] = "мінімальне поліпшення, мінімально, 3"
    L["whisperKey_need"] = "потрібно, мейн-спек, мс, 1"
    L["Windows reset"] = "Скидання вікон"
    L["winners"] = "переможці"
    L["x days"] = "%d днів"
    L["x out of x have voted"] = "%d з %d проголосували"
    L["You are not allowed to see the Voting Frame right now."] = "Вам не дозволено зараз переглядати вікно голосування."
    L["You are not in an instance"] = "Ви не знаходитесь у підземеллі"
    L["You can only auto award items with a quality lower than 'quality' to yourself due to Blizaard restrictions"] =
    "Ви можете автоматично вручати лише ті предмети, які мають якість нижче '%s' через обмеження Blizaard"
    L["You cannot start an empty session."] = "Ви не можете розпочати порожню сесію."
    L["You cannot use the menu when the session has ended."] = "Ви не можете використовувати меню, коли сесія закінчена."
    L["You cannot use this command without being the Master Looter"] =
    "Ви не можете використовувати цю команду, якщо не є майстром добутку"
    L["You can't start a loot session while in combat."] = "Ви не можете розпочати сесію здобичі під час бою."
    L["You can't start a session before all items are loaded!"] =
    "Ви не можете розпочати сесію, поки не завантажено всі предмети!"
    --[[Translation missing --]]
    L["You haven't selected an award reason to use for disenchanting!"] =
    "You haven't selected an award reason to use for disenchanting!"
    L["You haven't set a council! You can edit your council by typing '/rc council'"] =
    "Ви не встановили раду! Ви можете редагувати свою раду, набравши '/rc council'"
    L["You must select a target"] = "Ви повинні вибрати ціль"
    L["Your note:"] = "Ваш запис:"
    L["You're already running a session."] = "Ви вже запустили сесію здобичі."
  else
    -- Модуль RCLootCouncil не завантажений, виконайте відповідні дії або повідомлення
    local namespace = ""
    print("[AddonTranslator]: Модуль RCLootCouncil не завантажений")
  end
end
