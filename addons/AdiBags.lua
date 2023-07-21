function LoadAdiBagsUkrainizer()
  if IsAddOnLoaded("AdiBags") then
    local addon = LibStub('AceAddon-3.0'):GetAddon("AdiBags")
    --<GLOBALS
    local _G = _G
    local GetLocale = _G.GetLocale
    local pairs = _G.pairs
    local rawset = _G.rawset
    local setmetatable = _G.setmetatable
    local tostring = _G.tostring
    --GLOBALS>

    local L = setmetatable({}, {
      __index = function(self, key)
        if key ~= nil then
          --[===[@debug@
			addon:Debug('Missing locale', tostring(key))
			--@end-debug@]===]
          rawset(self, key, tostring(key))
        end
        return tostring(key)
      end,
    })
    addon.L = L

    L.FONTS = {
      NORMAL = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
      BOLD = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Bold.ttf",
      ITALIC = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Italic.ttf",
      HEADER = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
    }

    if not L then return end

    -- config/Config-ItemList.lua
    L["Click or drag this item to remove it."] = "Клікніть або перетягніть цей предмет для видалення."
    L["Drop an item there to add it to the list."] = "Перетягніть предмет сюди для додавання до списку."

    -- core/Constants.lua
    L["Engineering"] = "Інженерна справа"
    L["Tailoring"] = "Портняжна справа"
    L["Leatherworking"] = "Кожевництво"
    L["Mining"] = "Гірництво"
    L["Herbalism"] = "Травництво"

    -- core/Core.lua
    L["Warning: You are using an alpha or beta version of AdiBags without displaying Lua errors. If anything goes wrong, AdiBags (or any other addon causing some error) will simply stop working for apparently no reason. Please either enable the display of Lua errors or install an error handler addon like BugSack or Swatter."] =
    "Попередження: Ви використовуєте альфа- або бета-версію AdiBags без відображення помилок Lua. Якщо щось піде не так, AdiBags (або будь-який інший додаток, який може спричинити помилку) просто перестане працювати без видимої причини. Будь ласка, вмикайте відображення помилок Lua або встановіть додаток для обробки помилок, такий як BugSack або Swatter."

    -- widgets/ContainerFrame.lua
    L["%s is: %s."] = "%s є: %s."
    L["Auto-sort can cause freeze when the bag is closed."] =
    "Автоматичне сортування може призвести до зупинки при закритті сумки."
    L["Bag #%d"] = "Сумка №%d"
    L["Bank bag #%d"] = "Сумка банку №%d"
    L["Click to swap between %s and %s."] = "Клацніть, щоб перемикатися між %s та %s."
    L["Click to toggle the equipped bag panel, so you can change them."] =
    "Клацніть, щоб перемикати панель з одягненими сумками, щоб ви могли їх змінити."
    L["Close"] = "Закрити"
    L["Right-click to toggle %s."] = "Клацніть правою кнопкою миші, щоб перемкнути %s."
    L["You can block auto-deposit ponctually by pressing a modified key while talking to the banker."] =
    "Ви можете тимчасово заблокувати автоматичний депозит, натиснувши змінену клавішу під час розмови з банкіром."
    L["auto-deposit"] = "авто-депозит"
    L["auto-sort"] = "авто-сортування"
    L["disabled"] = "вимкнено"
    L["enabled"] = "увімкнено"
    L["Enabled"] = "Увімкнено"


    L["Add a dropdown menu to bags that allow to hide the sections."] =
    "Додати випадаюче меню для сумок, яке дозволить приховувати секції."
    L["Add association"] = "Додати асоціацію"
    L["Add more information in tooltips related to items in your bags."] =
    "Додати додаткову інформацію в підказки, що стосуються предметів у вашій сумці."
    L["AdiBags Anchor"] = "Якір AdiBags"
    L["Adjust the maximum height of the bags, relative to screen size."] =
    "Налаштуйте максимальну висоту сумок відносно розміру екрану."
    L["AH category"] = "Категорія аукціону"
    L["AH subcategory"] = "Підкатегорія аукціону"
    L["Allow you manually redefine the section in which an item should be put. Simply drag an item on the section title."] =
    "Дозволяє вам вручну переозначити розділ, в який повинен бути поміщений предмет. Просто перетягніть предмет на заголовок розділу."
    L["Always"] = "Завжди"
    L["AMMO_TAG"] = "НБ"
    L["Ammunition"] = "Боєприпаси"
    L["Anchored"] = "Закріплені"
    L["Backpack"] = "Рюкзак"
    L["Bag number"] = "Номер сумки"
    L["Bags"] = "Сумки"
    L["Bag type"] = "Тип сумки"
    L["Bag usage format"] = "Формат використання сумки"
    L["Bank"] = "Банк"
    L["By category, subcategory, quality and item level (default)"] =
    "За категорією, підкатегорією, якістю та рівнем предмета (за замовчуванням)"
    L["By name"] = "За іменем"
    L["By quality and item level"] = "За якістю та рівнем предмета"
    L["Category"] = "Категорія"
    L["Check sets that should be merged into a unique \"Sets\" section. This is obviously a per-character setting."] =
    "Позначте набори, які повинні бути об'єднані в єдиний розділ \"Набори\". Звісно, це налаштування для кожного персонажа окремо."
    L["Check this so armors are dispatched in four sections by type."] =
    "Позначте це, щоб броня розподілялася на чотири розділи за типом."
    L["Check this to display a bag type tag in the top left corner of items."] =
    "Позначте це, щоб відображати тег типу сумки в верхньому лівому куті предметів."
    L["Check this to display a colored border around items, based on item quality."] =
    "Позначте це, щоб відображати кольорову рамку навколо предметів залежно від якості."
    L["Check this to display an icon after usage of each type of bags."] =
    "Позначте це, щоб після використання кожного типу сумки відображалася піктограма."
    L["Check this to display an indicator on quest items."] =
    "Позначте це, щоб відображати позначку на предметах завдань."
    L["Check this to display an textual tag before usage of each type of bags."] =
    "Позначте це, щоб перед використанням кожного типу сумки відображався текстовий тег."
    L["Check this to display one individual section per set. If this is disabled, there will be one big \"Sets\" section."] =
    "Позначте це, щоб відображалася окрема секція для кожного комплекту. Якщо це вимкнено, буде один великий розділ \"Набори\"."
    L["Check this to display only one value counting all equipped bags, ignoring their type."] =
    "Позначте це, щоб відображалася тільки одна величина, рахуючи всі надіні сумки, ігноруючи їх тип."
    L["Check this to have poor quality items dimmed."] = "Позначте це, щоб низькоякісні предмети затемнювались."
    L["Check this to show space at your bank in the plugin."] =
    "Позначте це, щоб відображати вільне місце в вашому банку у плагіні."
    L["Check this to show this section. Uncheck to hide it."] =
    "Позначте це, щоб відображати цей розділ. Зніміть позначку, щоб приховати його."
    L["Check to enable this module."] = "Позначте це, щоб увімкнути цей модуль."
    L["Click on this button to create the new association."] =
    "Клацніть на цю кнопку, щоб створити нову асоціацію."
    L["Click there to reset the bag positions and sizes."] = "Клацніть тут, щоб скинути положення і розміри сумок."
    L["Click to purchase"] = "Клацніть, щоб придбати"
    L["Click to reset item status."] = "Клацніть, щоб скинути статус предметів."
    L["Click to select which sections should be shown or hidden. Section visibility is common to all bags."] =
    "Клацніть, щоб вибрати, які розділи слід показувати або приховувати. Видимість розділів є загальною для всіх сумок."
    L["Click to toggle the bag anchor."] = "Клацніть, щоб перемкнути якір сумки."
    L["Configure"] = "Налаштувати"
    L["Consider gems as a subcategory of trade goods"] = "Вважати самоцвіти підкатегорією товарів для торгівлі"
    L["Consider glyphs as a subcategory of trade goods"] = "Вважати гліфи підкатегорією товарів для торгівлі"
    L["Container information"] = "Інформація про контейнер"
    L["Currency"] = "Валюта"
    L["Dim junk"] = "Затемнити сміття"
    L["Display character currency at bottom left of the backpack."] =
    "Відображати гроші персонажа внизу зліва від рюкзака."
    L["Display character money at bottom right of the backpack."] =
    "Відображати гроші персонажа внизу справа від рюкзака."
    L["Drop your item there to add it to this section."] =
    "Перетягніть свій предмет сюди, щоб додати його до цього розділу."
    L["Filtering information"] = "Інформація про фільтрацію"
    L["Filters"] = "Фільтри"
    L["Filters are used to dispatch items in bag sections. One item can only appear in one section. If the same item is selected by several filters, the one with the highest priority wins."] =
    "Фільтри використовуються для розподілу предметів в секціях сумок. Один предмет може з'явитися лише в одній секції. Якщо один і той же предмет обраний декількома фільтрами, перемагає той, у якого найвищий пріоритет."
    L["Four general sections."] = "Чотири загальних секції."
    L["Free space"] = "Вільне місце"
    L["Free space / total space"] = "Вільне місце / загальне місце"
    L["Gear manager item sets"] = "Набори предметів менеджера екіпіровки"
    L["GEM_BAG_TAG"] = "Кам"
    L["Gems are trade goods"] = "Камені - це товари для торгівлі"
    L["Glyphs are trade goods"] = "Символи - це товари для торгівлі"
    L["HERB_BAG_TAG"] = "Трав"
    L["Highlight color"] = "Колір підсвічування"
    L["Highlight scale"] = "Масштаб підсвічування"
    L["Ignore low quality items"] = "Ігнорувати предмети низької якості"
    L["... including incomplete stacks"] = "... включаючи неповні стопки"
    L["INSCRIPTION_BAG_TAG"] = "Нап"
    L["Item"] = "Предмет"
    L["Item category"] = "Категорія предмета"
    L["Item information"] = "Інформація про предмет"
    L["Items"] = "Предмети"
    L["Jewelry"] = "Ювелірні вироби"
    L["KEYRING_TAG"] = "Ключ"
    L["LDB Plugin"] = "Плагін LDB"
    L["LEATHERWORKING_BAG_TAG"] = "Шк"
    L["Lock anchor"] = "Заблокувати якір"
    L["Manual"] = "Вручну"
    L["Manual filtering"] = "Ручне фільтрування"
    L["Maximum bag height"] = "Максимальна висота сумки"
    L["Maximum stack size"] = "Максимальний розмір стопки"
    L["Merge bag types"] = "Об'єднати типи сумок"
    L["Merged sets"] = "Об'єднані набори"
    L["Merge incomplete stacks with complete ones."] = "Об'єднати неповні стопки з повними."
    L["Merge stackable items"] = "Злити предмети, що можуть стекатися"
    L["MINING_BAG_TAG"] = "Руд"
    L["Money"] = "Гроші"
    L["Never"] = "Ніколи"
    L["New"] = "Нове"
    L["New Override"] = "Нове перекриття"
    L["One section per item slot."] = "Одна секція на кожний слот предмета."
    L["One section per set"] = "Одна секція на набір"
    L["Only one section."] = "Лише одна секція"
    L["Opacity"] = "Непрозорість"
    L["Please note this filter matches every item. Any filter with lower priority than this one will have no effect."] =
    "Зверніть увагу, що цей фільтр відповідає всім предметам. Будь-який фільтр з меншим пріоритетом не матиме впливу."
    L["Plugins"] = "Плагіни"
    L["Position mode"] = "Режим позиціонування"
    L["Priority"] = "Пріоритет"
    L["Provides a LDB data source to be displayed by LDB display addons."] =
    "Надає джерело даних LDB для відображення аддонами LDB."
    L["Put any item that can be equipped (including bags) into the \"Equipment\" section."] =
    "Помістіть будь-який предмет, який може бути надіт (включаючи сумки) в розділ \"Екіпірування\"."
    L["Put items belonging to one or more sets of the built-in gear manager in specific sections."] =
    "Помістіть предмети, які належать одному або кільком наборам вбудованого менеджера екіпіровки, в конкретні секції."
    L["Put items in sections depending on their first-level category at the Auction House."] =
    "Помістіть предмети в секції, залежно від їхньої основної категорії на Аукціоні."
    L["Put items of poor quality or labeled as junk in the \"Junk\" section."] =
    "Помістіть предмети низької якості або позначені як сміття в розділ \"Сміття\"."
    L["Put quest-related items in their own section."] = "Помістіть предмети, пов'язані з квестами, в окремий розділ."
    L["Quality highlight"] = "Підсвічування якості"
    L["Quest indicator"] = "Позначка квестів"
    L["Quest Items"] = "Предмети квестів"
    L["QUIVER_TAG"] = "Колч"
    L["Reset new items"] = "Скидання нових предметів"
    L["Reset position"] = "Скидання позиції"
    L["Right-click to try to empty this bag."] = "Клацніть правою кнопкою миші, щоб спробувати порожніти цю сумку."
    L["Scale"] = "Масштаб"
    L["Section"] = "Секція"
    L["Section category"] = "Категорія секції"
    L["Section setup"] = "Налаштування секції"
    L["Section visibility"] = "Видимість секції"
    L["Section visibility button"] = "Кнопка відображення секцій"
    L["Select how bag usage should be formatted in the plugin."] =
    "Виберіть, як слід форматувати використання сумки в плагіні."
    L["Select how items should be sorted within each section."] =
    "Виберіть, як предмети повинні бути сортовані в межах кожної секції."
    L["Select the category of the section to associate. This is used to group sections together."] =
    "Виберіть категорію секції для асоціації. Це використовується для групування секцій разом."
    L["Select the sections in which the items should be dispatched."] =
    "Виберіть секції, в яких предмети повинні бути розподілені."
    L["Select which first-level categories should be split by sub-categories."] =
    "Виберіть, які основні категорії слід розділити на підкатегорії."
    L["Sets"] = "Набори"
    L["Set: %s"] = "Набір: %s"
    L["Show bag type icons"] = "Показувати іконки типів сумок"
    L["Show bag type tags"] = "Показувати теги типів сумок"
    L["Show bank usage"] = "Показувати використання банку"
    L["Show container information..."] = "Показати інформацію про контейнер..."
    L["Show filtering information..."] = "Показати інформацію про фільтрацію..."
    L["Show item information..."] = "Показати інформацію про предмет..."
    L["Show only one free slot for each kind of bags."] = "Показувати лише один вільний слот для кожного типу сумок."
    L["Show only one slot of items that can be stacked."] =
    "Показувати лише один слот для предметів, які можна складати в стопки."
    L["Show only one slot of items that cannot be stacked."] =
    "Показувати лише один слот для предметів, які не можна складати в стопки."
    L["Show %s"] = "Показати %s"
    L["Slot number"] = "Номер слота"
    L["Sorting order"] = "Порядок сортування"
    L["SOUL_BAG_TAG"] = "Кам"
    L["Space in use"] = "Місце використано"
    L["Space in use / total space"] = "Місце використано / загальне місце"
    L["Split armors by types"] = "Розділити броню за типами"
    L["Split by subcategories"] = "Розділити за підкатегоріями"
    L["Toggle and configure item filters."] = "Увімкнути та налаштувати фільтри предметів."
    L["Toggle and configure plugins."] = "Увімкнути та налаштувати плагіни."
    L["Tooltip information"] = "Інформація про підказку"
    L["Track new items"] = "Відстежувати нові предмети"
    L["Track new items in each bag, displaying a glowing aura over them and putting them in a special section. \"New\" status can be reset by clicking on the small \"N\" button at the top left of bags."] =
    "Відстежуйте нові предмети в кожній сумці, відображаючи навколо них світлість та поміщаючи їх в спеціальний розділ. Статус \"новий\" можна скинути, натиснувши на маленьку кнопку \"N\" у верхньому лівому куті сумок."
    L["Uncheck this to disable AdiBags."] = "Зняті прапорець, щоб вимкнути AdiBags."
    L["Unlock anchor"] = "Розблокувати якір"
    L["Use this section to define any item-section association."] =
    "Використовуйте цю секцію, щоб визначити будь-яку асоціацію предметів і секцій."
    L["Use this to adjust the bag scale."] = "Використовуйте це, щоб налаштувати масштаб сумки."
    L["Use this to adjust the quality-based border opacity. 100% means fully opaque."] =
    "Використовуйте це, щоб налаштувати прозорість границі залежно від якості. 100% означає повністю непрозорий."
    L["Virtual stacks"] = "Віртуальні стопки"
    L["Virtual stacks display in one place items that actually spread over several bag slots."] =
    "Віртуальні стопки відображають предмети, які фактично розподіляються на декілька слотів сумок."
    L["Virtual stack slots"] = "Слоти віртуальних стопок"
    L["When alt is held down"] = "Коли утримується клавіша Alt"
    L["When any modifier key is held down"] = "Коли утримується будь-яка клавіша зміни"
    L["When ctrl is held down"] = "Коли утримується клавіша Ctrl"
    L["When shift is held down"] = "Коли утримується клавіша Shift"

    -- Replace remaining true values by their key
    for k, v in pairs(L) do if v == true then L[k] = k end end
  else
    -- Модуль AdiBags  не завантажений, виконайте відповідні дії або повідомлення
    print("[AddonTranslator]: Модуль AdiBags  не завантажений")
  end
end
