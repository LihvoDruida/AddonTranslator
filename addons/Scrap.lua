function LoadScrapUkrainizer()
  if IsAddOnLoaded("Scrap") then
    local L = LibStub("AceLocale-3.0"):GetLocale("Scrap")

    L.FONTS = {
      NORMAL = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
      BOLD = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Bold.ttf",
      ITALIC = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Italic.ttf",
      HEADER = "Interface\\AddOns\\AddonTranslator\\assets\\Arsenal_Regular.ttf",
    }

    if not L then return end

    L.Add = 'Додати до списку сміття'
    L.Added = 'Додано до списку сміття: %s'
    L.AdvancedOptions = 'Розширені налаштування'

    L.ConfirmDelete = 'Ви впевнені, що хочете знищити всіх сміття? Ви не зможете скасувати цю дію.'
    L.DeleteJunk = 'Знищити сміття'

    L.AutoSell = 'Автоматичний продаж'
    L.AutoSellTip = 'Якщо включено, Scrap автоматично продаватиме сміття, коли ви відвідуєте торговця.'
    L.AutoRepair = 'Автоматичний ремонт'
    L.AutoRepairTip = 'Якщо включено, Scrap автоматично ремонтуватиме броню, коли ви відвідуєте торговця.'
    L.GuildRepair = 'Ремонт за рахунок гільдії'

    L.Junk = 'Сміття'
    L.Learning = 'Інтелектуальне навчання'
    L.LearningTip =
    'Якщо включено, Scrap буде відстежувати, які предмети ви часто продаєте торговцю і автоматично вважати їх сміттям.'
    L.Unusable = 'Продавати непридатне спорядження'
    L.UnusableTip =
    'Якщо включено, Scrap буде продавати |cffff2020ВСЕ|r прив\'язане спорядження, яке ваш персонаж ніколи не зможе надіти.'
    L.LowConsume = 'Продавати низькорівневі споживчі товари'
    L.LowConsumeTip = 'Якщо включено, Scrap буде продавати |cffff2020ВСІ|r низькорівневі для вас споживчі товари.'
    L.LowEquip = 'Продавати низькорівневе спорядження'
    L.LowEquipTip =
    'Якщо включено, Scrap буде продавати |cffff2020все|r прив\'язане спорядження, рівень якого набагато менший, ніж те, що ви маєте на собі.'
    L.MissingOptions = '\'Scrap Options\' не завантажилися, оскільки додаток %s.'
    L.NotJunk = 'Не сміття'
    L.Description = 'Докладніші налаштування Scrap. Сміття не пройде!'
    L.CharSpecific = 'Список сміття для поточного персонажа'

    L.Glow = 'Підсвічувати рамки з сміттям'
    L.GlowTip = 'Якщо включено, Scrap буде підсвічувати рамки з сміттям |cffBBBBBBСІРИМ|r кольором.'
    L.Icons = 'Іконка монетки'
    L.IconsTip = 'Якщо включено, Scrap буде позначати сміття маленькими золотими монетками.'

    L.Remove = 'Видалити зі списку сміття'
    L.Removed = 'Видалено зі списку сміття: %s'
    L.SafeMode = 'Безпечний режим'
    L.SafeModeTip =
    'Якщо включено, Scrap не буде продавати більше 12 предметів одночасно, тим самим зберігаючи можливість викупу.'
    L.SellJunk = 'Продати сміття'
    L.SoldJunk = 'Ви продали сміття на %s'
    L.Repaired = 'Ви відремонтували свою броню за %s'
    L.ToggleJunk = 'Встановити / зняти мітку сміття під курсором'

    L.Tutorial_Welcome =
    'Ласкаво просимо до |cffffd200Scrap|r, від |cffffd200Jaliborc|r. Це короткий посібник допоможе вам позбутися сміття.|n|nЦе зекономить ваш час і місце в сумці. Ви готові розпочати?'
    L.Tutorial_Button =
    'Scrap буде автоматично продавати всі ваші сміття кожного разу, коли ви відвідуєте торговця. Ви також можете вручну продати його: просто |cffffd200ЛКМ|r по кнопці Scrap.|n|n|cffffd200ПКМ|r по кнопці, щоб викликати додаткові опції.'
    L.Tutorial_Drag =
    'Що робити, якщо ви хочете повідомити Scrap, що продавати предмет чи ні? Просто |cffffd200Перетягніть|r його з вашої сумки на кнопку Scrap.|n|nВ якості альтернативи, ви можете |cffffd200Призначити клавішу|r в налаштуваннях |cffffd200Головного меню|r гри. Натисніть її, наводячи на предмет.'
    L.Tutorial_Visualizer =
    'Щоб побачити, які предмети ви вказали як сміття, відкрийте вкладку |cffffd200Scrap Visualizer|r.|n|nЗверніть увагу, що будуть відображатися тільки ті предмети, які були |cffffd200додані вами|r, а не всі предмети в грі.'
    L.Tutorial_Bye = 'Гарної вам подорожі, Да буде з вами |cffb400ffЕпік|r. Сміття не пройде!'
  else
    -- Модуль Scrap не завантажений, виконайте відповідні дії або повідомлення
    local namespace = ""
    print("[AddonTranslator]: Модуль Scrap не завантажений")
  end
end
