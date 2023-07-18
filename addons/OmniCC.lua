function LoadOmniCCUkrainizer()
  if IsAddOnLoaded("OmniCC") then
    local L = LibStub("AceLocale-3.0"):GetLocale("OmniCC")

    L.FONTS = {
      NORMAL = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
      BOLD = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Bold.ttf",
      ITALIC = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Italic.ttf",
      HEADER = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
    }

    if not L then return end

    -- формати таймерів
    L.DayFormat = "%dd"
    L.HourFormat = "%dгод"
    L.MinuteFormat = "%dхв"
    L.MMSSFormat = "%d:%02d"
    L.SecondsFormat = "%d"
    L.TenthsFormat = "%0.1f"

    -- назви ефектів
    L.Activate = "Активувати"
    L.Alert = "Попередження"
    L.Flare = "Світловий сигнал"
    L.None = "Відсутній"
    L.Pulse = "Пульсування"
    L.Shine = "Сяйво"

    -- пояснення до ефектів
    L.ActivateTip = [[Застосовує ефект активації до піктограми перезарядки.]]
    L.AlertTip = [[Пульсує завершену піктограму перезарядки у центрі екрану.]]
    L.PulseTip = [[Пульсує піктограму перезарядки.]]

    -- інше
    L.ConfigMissing = "%s не може бути завантажено, оскільки аддон %s"
    L.Version = "Ви використовуєте |cffFCF75EOmniCC Версія (%s)|r"

    -- налаштування
    L.Anchor = 'Якір'
    L.Anchor_BOTTOM = 'Внизу'
    L.Anchor_BOTTOMLEFT = 'ВнизуЛіворуч'
    L.Anchor_BOTTOMRIGHT = 'ВнизуПраворуч'
    L.Anchor_CENTER = 'По центру'
    L.Anchor_LEFT = 'Зліва'
    L.Anchor_RIGHT = 'Справа'
    L.Anchor_TOP = 'Вгорі'
    L.Anchor_TOPLEFT = 'ВгоріЛіворуч'
    L.Anchor_TOPRIGHT = 'ВгоріПраворуч'
    L.ColorAndScale = 'Колір та масштаб'
    L.ColorAndScaleDesc = 'Налаштуйте колір та масштаб для різних станів відновлення.'
    L.CooldownOpacity = 'Непрозорість'
    L.CooldownOpacityDesc = 'Змінити ступінь непрозорості'
    L.CooldownText = 'Текст відновлення'
    L.CreateTheme = 'Створити тему'
    L.Display = 'Відображення'
    L.DisplayGroupDesc = 'Налаштуйте, яку інформацію відображати під час відновлення.'
    L.Duration = 'Тривалість'
    L.EnableCooldownSwipes = 'Відображати смуги відновлення'
    L.EnableCooldownSwipesDesc = 'Смуги відновлення - це темне фонове поле, яке показує залишковий час відновлення.'
    L.EnableText = 'Відображати текст відновлення'
    L.EnableTextDesc = 'Показувати залишковий час відновлення.'
    L.FinishEffect = 'Заключний ефект'
    L.FinishEffectDesc = 'Налаштуйте ефект, який спрацьовує після закінчення відновлення.'
    L.FinishEffects = 'Заключні ефекти'
    L.FontFace = 'Шрифт'
    L.FontOutline = 'Контур шрифту'
    L.FontSize = 'Розмір шрифту'
    L.HorizontalOffset = 'Горизонтальне зміщення'
    L.MinDuration = 'Мінімальна тривалість відновлення'
    L.MinDurationDesc = 'Як довго (у секундах) має бути час відновлення для відображення тексту відновлення.'
    L.MinEffectDuration = 'Мінімальна тривалість відновлення'
    L.MinEffectDurationDesc = 'Яким має бути час відновлення, щоб спрацював заключний ефект.'
    L.MinSize = 'Мінімальний розмір відновлення'
    L.MinSizeDesc =
    'Наскільки великим має бути щось, щоб відображався текст відновлення. 100 - розмір кнопки звичайної дії, 80 - розмір кнопки дії пета, а 47 - розмір дебафу на рамці цілі Blizzard.'
    L.MMSSDuration = 'Поріг відображення MM:SS'
    L.MMSSDurationDesc = 'Коли починати відображення залишкового часу відновлення у форматі MM:SS.'
    L.Outline_NONE = 'Немає'
    L.Outline_OUTLINE = 'Тонкий'
    L.Outline_OUTLINEMONOCHROME = 'Одноколірний'
    L.Outline_THICKOUTLINE = 'Товстий'
    L.Preview = 'Попередній перегляд'
    L.RuleAdd = 'Додати правило'
    L.RuleAddDesc = 'Створення нового правила.'
    L.RuleEnable = 'Увімкнути'
    L.RuleEnableDesc = 'Увімкнути це правило. Якщо правило вимкнено, OmniCC пропустить його перевірку.'
    L.RulePatterns = 'Шаблони'
    L.RulePatternsDesc =
    'Імена або частини імен елементів користувацького інтерфейсу, до яких має застосовуватися це правило. Кожен шаблон слід вводити в окремому рядку.'
    L.RulePriority = 'Пріоритет'
    L.RulePriorityDesc = 'Правила оцінюються за зростанням. Перше співпадіння буде застосовано до відновлення.'
    L.RuleRemove = 'Видалити'
    L.RuleRemoveDesc = 'Видалення правила.'
    L.Rules = 'Правила'
    L.RulesDesc =
    'Правила можна використовувати для застосування тем до певних елементів вашого користувацького інтерфейсу. Якщо для певного елемента користувацького інтерфейсу немає правил, він буде використовувати тему за замовчуванням.'
    L.Rulesets = 'Набори правил'
    L.RuleTheme = 'Тема'
    L.RuleThemeDesc = 'Яку тему застосувати до елементів користувацького інтерфейсу, які відповідають цьому правилу.'
    L.ScaleText = 'Змініть розмір тексту відновлення, щоб він поміщався у кадри'
    L.ScaleTextDesc =
    'Автоматично налаштовувати розмір тексту шрифту відновлення в залежності від тривалості відновлення.'
    L.State_charging = 'Зарядка'
    L.State_controlled = 'Втрата контролю'
    L.State_days = 'Залишилось днів'
    L.State_hours = 'Залишилось годин'
    L.State_minutes = 'Залишилось менше години'
    L.State_seconds = 'Залишилось менше хвилини'
    L.State_soon = 'Скоро закінчиться'
    L.TenthsDuration = 'Поріг відображення десятих секунди'
    L.TenthsDurationDesc = 'Коли запускати відображення залишкового часу відновлення у форматі 0.1.'
    L.TextColor = 'Колір тексту'
    L.TextFont = 'Шрифт тексту'
    L.TextPosition = 'Позиція тексту'
    L.TextShadow = 'Тінь тексту'
    L.TextShadowColor = 'Колір тіні'
    L.TextSize = 'Розмір тексту'
    L.Theme = 'Тема'
    L.ThemeAdd = 'Додати тему'
    L.ThemeAddDesc = 'Створення нової теми.'
    L.ThemeRemove = 'Видалити'
    L.ThemeRemoveDesc = 'Видалення теми.'
    L.Themes = 'Теми'
    L.ThemesDesc =
    'Тема - це набір налаштувань зовнішнього вигляду OmniCC. Теми можна використовувати спільно з правилами для зміни OmniCC в певних частинах вашого користувацького інтерфейсу.'
    L.Typography = 'Типографія'
    L.TypographyDesc = 'Налаштуйте зовнішній вигляд тексту затримки, наприклад, який шрифт використовувати.'
    L.VerticalOffset = 'Вертикальне зміщення'

    L.TimerOffset = 'Зміщення таймера (мс)'
    L.TimerOffsetDesc =
    'Віднімає кількість часу з відображення тексту таймера відновлення. Ви можете використовувати це, наприклад, щоб завершити текст таймера, коли ви можете поставити в чергу вміння.'
  else
    -- Модуль OmniCC не завантажений, виконайте відповідні дії або повідомлення
    local namespace = ""
    print("[AddonTranslator]: Модуль OmniCC не завантажений")
  end
end
