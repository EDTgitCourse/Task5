#Область ОбработчикиСобытийЭлементовТаблицыФормыТовары

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	ПересчитатьСуммуПоСтроке(Элементы.Товары.ТекущиеДанные);
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	ПересчитатьСуммуПоСтроке(Элементы.Товары.ТекущиеДанные);
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ПересчитатьСуммуПоСтроке(ТекСтрока)
	ТекСтрока.Сумма = ТекСтрока.Цена*ТекСтрока.Количество;	
	ПересчитатьСуммуДокумента();
КонецПроцедуры

&НаКлиенте
Процедура ПересчитатьСуммуДокумента()
	Объект.СуммаДокумента = Объект.Товары.Итог("Сумма");
КонецПроцедуры

#КонецОбласти
