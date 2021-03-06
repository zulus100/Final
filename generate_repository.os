Процедура КопироватьСодержимоеКаталога(Откуда, Куда)

	КаталогНазначения = Новый Файл(Куда);
	Если КаталогНазначения.Существует() Тогда
		Если КаталогНазначения.ЭтоФайл() Тогда
			УдалитьФайлы(КаталогНазначения.ПолноеИмя);
			СоздатьКаталог(Куда);
		КонецЕсли;
	Иначе
		СоздатьКаталог(Куда);
	КонецЕсли;

	Файлы = НайтиФайлы(Откуда, ПолучитьМаскуВсеФайлы());
	Для Каждого Файл Из Файлы Цикл
		ПутьКопирования = ОбъединитьПути(Куда, Файл.Имя);
		Если Файл.ЭтоКаталог() Тогда
			КопироватьСодержимоеКаталога(Файл.ПолноеИмя, ПутьКопирования);
		Иначе
			КопироватьФайл(Файл.ПолноеИмя, ПутьКопирования);
		КонецЕсли;
	КонецЦикла;

КонецПроцедуры

Процедура СозданиеРепозитария()

    // Репозиторий
    ЗапуститьПриложение("git.exe init", , Истина);
    ЗапуститьПриложение("git.exe config --local user.name ""primer"" "); 
    ЗапуститьПриложение("git.exe config --local user.email priner@primer.com");
    ЗапуститьПриложение("git.exe config --local core.quotepath false");

    КаталогРепозитария = ТекущийКаталог();
	
    // precommit1c
    СоздатьКаталог(КаталогРепозитария+"\.git\hooks\ibService");
    КопироватьСодержимоеКаталога("C:\repo\precommit1c\ibService", КаталогРепозитария+"\.git\hooks\ibService");

    СоздатьКаталог(КаталогРепозитария+"\.git\hooks\tools");
    КопироватьСодержимоеКаталога("C:\repo\precommit1c\tools", КаталогРепозитария+"\.git\hooks\tools");

    СоздатьКаталог(КаталогРепозитария+"\.git\hooks\v8Reader");
    КопироватьСодержимоеКаталога("C:\repo\precommit1c\v8Reader", КаталогРепозитария+"\.git\hooks\v8Reader");

    КопироватьФайл("C:\repo\precommit1c\pre-commit", КаталогРепозитария+"\.git\hooks\pre-commit");
    КопироватьФайл("C:\repo\precommit1c\v8files-extractor.os", КаталогРепозитария+"\.git\hooks\v8files-extractor.os");
	
    // bootstrap
    СоздатьКаталог(КаталогРепозитария+"\.github");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\.github", КаталогРепозитария+"\.github");
    
    СоздатьКаталог(КаталогРепозитария+"\build");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\build", КаталогРепозитария+"\build");

    СоздатьКаталог(КаталогРепозитария+"\doc");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\doc", КаталогРепозитария+"\doc");

    СоздатьКаталог(КаталогРепозитария+"\examples");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\examples", КаталогРепозитария+"\examples");

    СоздатьКаталог(КаталогРепозитария+"\features");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\features", КаталогРепозитария+"\features");

    СоздатьКаталог(КаталогРепозитария+"\lib");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\lib", КаталогРепозитария+"\lib");

    СоздатьКаталог(КаталогРепозитария+"\license");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\license", КаталогРепозитария+"\license");

    СоздатьКаталог(КаталогРепозитария+"\spec");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\spec", КаталогРепозитария+"\spec");

    СоздатьКаталог(КаталогРепозитария+"\src");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\src", КаталогРепозитария+"\src");

    СоздатьКаталог(КаталогРепозитария+"\tools");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\tools", КаталогРепозитария+"\tools");

    СоздатьКаталог(КаталогРепозитария+"\vendor");
    КопироватьСодержимоеКаталога("C:\repo\vanessa-bootstrap\vendor", КаталогРепозитария+"\vendor");

    КопироватьФайл("C:\repo\vanessa-bootstrap\bootstrap.in-up.sh", КаталогРепозитария+"\bootstrap.in-up.sh");
    КопироватьФайл("C:\repo\vanessa-bootstrap\README.md", КаталогРепозитария+"\README.md");
    
КонецПроцедуры

СозданиеРепозитария();
