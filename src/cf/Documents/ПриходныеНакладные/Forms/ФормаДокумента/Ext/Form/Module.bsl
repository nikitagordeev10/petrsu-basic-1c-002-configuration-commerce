﻿
&НаКлиенте
Процедура ПриходКоличествоПриИзменении(Элемент)
    СтрокаТабличнойЧасти=Элементы.Приход.ТекущиеДанные;       
	// РассчитатьСумму - процедура из общего модуля РаботаСДокументами 
    РаботаСДокументамиКлиент.РассчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры       


&НаКлиенте
Процедура ПриходЦенаПриИзменении(Элемент)
    СтрокаТабличнойЧасти=Элементы.Приход.ТекущиеДанные;
    РаботаСДокументамиКлиент.РассчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры

&НаКлиенте
Процедура ПриходПродуктПриИзменении(Элемент)
	СтрокаТабличнойЧасти=Элементы.Приход.ТекущиеДанные;
	СтрокаТабличнойЧасти.Цена=РаботаСоСправочникамиСервер.РозничнаяЦена(Объект.Дата,СтрокаТабличнойЧасти.Продукт);
	РаботаСДокументамиКлиент.РассчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры
