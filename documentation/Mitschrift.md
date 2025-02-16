# PROFI TOUR MITSCHRIFT 03.02.2025 - 14.02.2025

## Number One ⚖️ LAW => Don't mess with Profi-Tour-Profile from Isabel ✅
## Number Two ⚖️ LAW => Bei jeder Änderung -> Export für Hersteller ✅
## Number Three ⚖️ LAW => Dont even try SPECIAL_LETTERS(§$%_-) in Profitour ✅


## Chronologischer Ablauf (Will Still have Mistakes - Aktuell für $Hersteller_H)
- **Montag:** 
    - Frachtbrief & Tourenplan für SC-Leiter _(Siehe Punkt 420)_
- **Dienstag:**
    -
- **Mittwoch:**
    -
- **Donnerstag:**
    -
- **Freitag:** 
    - Produktions-Export _(WAB's-Export)_ für Hersteller_H => Für **MINDESTENDS $Folge_KW_4** (Bsp: **Freitag_KW7 für KW_11**) _(Siehe Punkt 421)_

- **Daily Extras**
    - Bei jedem Import von Hersteller_H **06:30 & 14:00 Täglich**
        - **Alle neuen Aufträge** wieder verplanen für **$Aktuelle_KW & $Folge_KW_1 & $Folge_KW_2**
        - Außnahme **Freitags 14:00: Nur DIREKT/POST** Lieferungen verplanen **(Runde der Mitarbeiter)** 

## Tipps für Excel-Listen: [Excel_Listen_Immer_pro_KW$$]
- Werden **LIVE am Onedrive Ordner bearbeitet** 💀
- SC-Leiter & BGO = **R,W,D-Rights** 💀
- Lösung für mich => **Local_Excel_File mit Extra Infos und Calculations für Lademenge etc**
- **Force Sync** => **SC_Leiter_Excel_File + Removal of extra Infos**
- Extras: **(WIP)**
  - **💡 Automatic Numbering of _KW$**
  - **💡 Auto Calc of WAP_Weights inkl. Untertouren** 
  - **💡 Auto Coloring for DIREKT Touren**
  - **💡 Auto Copy of WAP's (Letzte Zeilen)**

- **Hinterlegen mit Farbe** == DIREKT_BAUSTELLE == **Kein LAGER-WAB** -> **WAB direkt auf Baustelle!**
- Aufpassen auf richtiges Kopieren in untere Zeilen:
  - **Vorletzte == DIREKT WAB'S**
  - **Letzte == LAGER WAB'S**

- Bei Baustellen mit **Nächtigung** -> Nächtigung in Excel Liste eintragen **(Bis & nicht inkulsive Endtag)**
- Bei Baustellen mit **Trennwänden** -> Trennwand vermerken = **Special Montage Workers**
- Bei Baustellen mit **Küchen** -> **L&M Küchenmontage** oder **nach Gebiet haben Special Montage Workers**

## Tipps im Bearbeitungsfenster: [Nach der Auswahl der gewünschten bzw. zugeteilten Arbeitsbereiche bsp. Wien, Linz etc.]
- 🟢 = **Kunde wurde bereits Avisiert** || 🔴 => **Kunde hat altes Aviso** => **Neu senden** oder **FORCE_GREEN**
- **FORCE_GREEN_BUTTON** => Button: **Kunden_avis_bestätigen & Aktualisieren** => **Kein Avis versendet trotzdem 🟢**
- **[DIR | STK | PST]** -> **Alle DIREKT**
- **[Ausftragsnummer: 034]** -> **Internet bestellung -> DIREKT**
- Rechtsklick auf Datenbank-Row => **Transportauftrag** => Für Planung und **Calculation-Script**

- **Vor-Avisieren**
    - Gleich wie Avisieren nur im Vorfeld -> **Nicht Offizielles Aviso verwenden!**
    - Daten & Mail aus Profitour **"Aviso-Pdf"** ziehen und Mail erfassen!
    - Wichtige Daten: **Kunde, KW, Auftragsnummer**
    - Mail-Wichtigkeit auf "High"
    - **Transportauftrag muss nicht in der Mail anhängt werden**
    - _(NOTE1: Gesamter Prozess könnte **easy automatisiert werden**)_
    - _(NOTE2: Prozess wird **Lokal automatisiert** => **Nicht in Profitour** => **Native Script**)_
    - _(NOTE3: Laut Isabel nicht erwünscht => trotzdem Fragen zu **Persöhnlicher Verwendung!**) (UNSURE ASK BIG-BOSS 😕)_

- **Avisieren:**
    - **Alles 2x kontrollieren**
    - **Datum bei Touren** & **Ladereihenfolge WAB's 3x kontrollieren**
        - **Datum** kann sich aufgrund von Tagesarbeitszeit oder falschen $BUILD_TIMES from $HERSTELLER auf nächsten Tag rutschen!
        - **Fehler passieren hier leicht** und **keine Software-Kontrolle** für Fehler wie diese!
        - _NOTE: Probably a big reason that "AI" is not already taking Disponenten-Jobs (needs a sick Algorithm 😄)_
        - _NOTE: Bad for me but Probably good for Big_Boss => **Local Deepseek with Live Training here 👀👀**_

- **Datenbank Stuff:**
    - Import von Hersteller_H => Immer 06:30 & 14:00 Mo-Fr (Import von Hersteller_B und Hersteller_N sind auto.)
    - Für **Auslieferlisten**  => Abfrage von **[Prod & Lieferwoche] - [Mo. - Sa.] der gewünschten [KW]** auswählen!
    - Für **Anvisieren** und erstellen von Touren => Abfrage von **[Lieferwoche]**
    - Für **Transportbestellung** (Winkler, etc) => Abfrage von **[Touren]**

- **Fahrzeuge are completely messed up for some areas:**
    - **needs fixing !** => **Absprache mit SC-Leiter**
    - _Note: Isabel macht **extra Arbeit** => Eintragen von **3,5t | 7,5t** => Weil SC-Leiter Fahrzeuge nicht Ändern will (UNSURE ASK BIG-BOSS 😕)_

- **Fahrzeuge:**
    - Selten: **Sattel (Nicht Winkler)** => **~60m³** => **(2x WAP's pro Sattel)** (C-FS) [Quehenberger]
    - Jumbo_WAP (LKW) => **max. ~ 35m³ => NUR FÜR DIREKT** = PASST NICHT INS LAGER (C-FS)
    - WAP (LKW) **(Direkt | Lager_WAP) => 30m³ => EGAL** (C-FS)
    - 7,5t Fahrzeug => **max. ~ 15m³ & 1000kg** [LAGER-WAB] (C-FS)
    - 3,5t Fahrzeug => **max. ~ 600kg** [LAGER-WAB] (B-FS)

- **Tipps für erstellen von Linien:**
    
    - **2 Arten von Lager-WAB's (Immer ins Kommentarfeld des WAB's):**
        - [Rampe] bei Umladen in 7,5t bzw. 3,5t Fahrzeugen beim Lager **(eher = Bei vielen Kleinkunden)**
        - [Platz] Wenn mit LKW zu von Kunde zu Kunde gefahren wird **(eher = Bei wenig Großkunden)**
        - Wenn 1 WAP bereits Rampe nächster muss auf Platz **(max 1 Rampe pro Tag)**
        - **Verlade-Reihenfolge = 99 ==> EGAL**
    
    - **Naming-Scheme:**
        - **DIREKT** => PST, DIR, N:04 => **DIREKT_$ORT1_$ORT2_WOCHENTAG(TT)**
        - **_____(Leer)** => Direkt-LKW auf Baustelle => **LEER_$ORT1_$ORT2_WOCHENTAG(TT)**
        - **SC WAP für [LKW | 7,5t | 3,5t] Touren** => Items werden umgeladen in LKW oder 3,5t oder 7,5t => **SC_WAP_$ORT1_für_$Vehicle1/2/3_Touren_WOCHENTAG(TT)**

    - **Bei knappen/komischen Touren** => **Plant SC-Leiter** bzw. **Absprache mit SC-Leiter**
      - **❌ Nicht gewünscht** -> Suboptimal -> **Außnahme Voradelberg** (BIG-BOSS am 13.02.2025)
    
    - **LKW gewünscht:**
        - Manchmal ist es **teurer umzuladen** in **3,5t bzw 7,5t Fahrzeug**
        - In diesen Fällen mit LKW zu **kleinem Kunden zu fahren!**

    - **Voradelberg ist anders** => **Untertouren werden von ULGB (Oliver) Zusammengestellt**
        - **Untertouren werden von ULGB zusammengestellt** nach einer Liste von uns!
        - Filter in Datenbank nach **[Dornbirn + FL + CH + DE]**
        - Datenbank Ansicht auf **[Isabel-Voradelberg]**
        - **Schnittstelle => Export als Excel file (.csv)**
        - Autosumme pro WAB erstellen für **[Gewicht und m³]**
        - Text: **Anlieferung am $Datum zum Lager oder Direkt zum Kunden (Siehe Excel file oder Profitour)**
        - **Jumbo-WAP vermerken**
        - Als **E-Mail an Oliver** senden - er sendet die **Untertouren** zurück!

    - **TV immer für jeweilige KW__ erledigen** nachdem Untertouren fertiggestellt sind!
        - Filter nach **Auftragsnummer (Steht auf TV)**
        - Gehe zu **WAP der TV beinhaltet**
        - Im Bearbeitungsfenster (Mitte) => Button: **Aus Tour lösen und Rückgängig machen**
        - Wenn **WAP in der Zukunft** liegt -> **Verladereihenfolge neu richten**
        - Oben auf **Selection** => Sonst **Probleme** im **Bearbeitungsfenster & Sammelmappe**
        - Im Bearbeitungsfenster Auftrag auswählen => **Sammelmappe erstellen**
        - Name (Isabel) = **[$ORT_$KW_DER_TV]** **(Siehe Links unten auf TV)**
        - Filter nach **$KW_WO_TV_HINGEHÖRT** in **[Lieferwoche]**
        - **Sammelmappe => Übernahme in die Planung**
        - Auftrag ist nun im unteren Fenster **(Wie neu)** => Splitten, WAP, etc. => **behandeln wie neuen Auftag**

    - **Wochenauslatung des jeweiligen Herstelller beachten**
        - Mit Mitarbeitern und Herstellen gute Lösung finden (Isabell hat Schnittstelle vom Hersterller_H zum checken)
        - Hersteller NOS fragen => Wie Auslatungen gemssen werden => **Date am 04.03.2025 🌹** 

## Frachtbriefe (Bestehen aus 2-PDF's):
- **Auswahl der Tour im Oberen Fenster** -> Frachtbrief -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER**
- **Auswahl der Tour im Oberen Fenster** -> Tourenplan -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER_TB**
- Frachtbrief und Tourenplan für SC-Leiter immer **$Montags_Aktuelle_KW** für **%Nächste_KW** -> Bsp.: **Montag in KW7** -> **Ausdrücke für KW08 an SC-Leiter**
- Immer **Excel-Tabelle der Folge_KW$$** auf Papier am Tisch haben und Touren nach Senden der PDF abhaken! -> **2PDF's pro Touren [_NON-TB & _TB]**
- Ablage auf Onedrive 😨 Ordner that never syncs even 10MB's 😂

## Auslieferlisten Infos:
- Für **SC-Leiter == alle Touren außer [POST, Direkt, Lager-WAB's]**
- Für **Hersteller == Alle Touren außer [Lager-WAB's] -> %%Immer Freitags für Nächste KW**
- **Auslieferlisten_SC** kommen von **SC-Leiter** zurück mit **allen 3 Herstellern kombiniert**
- Haben **Infos** über genaue Touren, Mitarbeiter, Fahrzeuge etc. => Naming_Scheme: **Auslieferliste_$SC-Leiter_$KW__**

### Auslieferliste Guide:
- Single .csv Excel file -> Apply Makro -> **Save as .xlsx** save for **SC-Leiter** & **HERSTELLER**  = **receive it without Makros**
- Touren markieren -> **Auslieferliste** -> **Saved as .csv on Remote [Profi-Tour-Server]** -> Copy to [Local] and open in Excel
- Apply Excel ✨ **Magic-Makros** ✨ [Strg+Umschalt+A "For Austria + D for "Germany"] -> **[HARDCODED IN MAKRO]**
- Bei SC-Leiter Touren: **Lösche Colloums mit Nummer** und schreibe **"Plant SC-Leiter"** in **🔴 & Fett**
- Save as **.xlsx** => **(Will delete Makros)**
- Naming_Scheme: **ALL_$ORT[WIEN,LINZ,GRAZ,etc]_[KW$$].xlsx**

## Abgabe der Produktion (Lager-WAB's) für Hersteller:
- **Deadline verschieden für alle 3 Hersteller**
- Hersteller_H => 3 Wochen unterschied => **Bsp.: spät. Freitag KW7 für KW_11**

## Transportbestellung Infos:
- Filter -> **[Touren / Auflade Zeit]** -> **KW Mo - Sa, auswählen**
- **Schnittstelle -> Export in Excel** -> safe as .xlxs Name: **Transportbestellunhg_KW__**
- Alle Gebiete kontrollieren **(2 unteren Spalten in Excel zählen)** => **Direkt&Lager-WAP's**
- **Ladereihenfolge checken** => oft **35/36/35** => Delete **35**
- **m³ mit Fahrzeugen abglichen** bei => **Bsp.: 40m³ => 2 LKW's**
- Transportbestellung im richtigen **MS Teams** Ordner ablegen!
- **Letzter im Team** fügt die **Excel-Imports der Mitarbeiter zusammen** und sendet sie an **Spedition Winkler**
- **Sonderbestellungen** wie Transmato, Quehenberger(Sattel) **sofort** bei Auftrag an Spedition senden!

## Gebiete Erik:
- **Hersteller NOS 🟢**
- [Voradelberg(Dornbirn) + DE(S-W) + FL + CH] | **Kein Küchenmonteur** :o:
- [Tirol(Innsbruck)] | **Kein Küchenmonteur** :o:
- [Kärnten(Klagenfurt)] | **Küchenmonteur vorhanden** :heavy_check_mark:
- [Steiermark(Graz)] | **Kein Küchenmonteur aber gute Monteure(Außnahme)** :heavy_check_mark:
- [Deutschland(Gesamt)] - Noch nicht sicher!!

## Other Things I got told and are probably Useful:
- **❄️ Frozen Zone (Hali)❄️**
    - Ab **Folge_KW** der **Abgabewoche** !
    - Aufträge können von **Hersteller_H NICHT mehr bearbeitet werden.**
    - BGO kann noch Schieben aber **nur nach hinten (später)** - Nur bei **[Checkmark-Eingelastet]** ☑️

- Trennwände: **(Speical_Montage_Workers)**
    - Montage => pro 1 Laufmeter = 3h
    - Demontage => pro 1 Laufmeter = 1,5h
  
- **Konflikte** mit **BGO & SC-Leiter** (UNSURE ASK BIG-BOSS 😕)
    - Wer ruft Kunden bei welchen Problem an ? 💀
    - Abschieben von Sachen auf $Hersteller_X & SC-Leiter ==> **und Umgekehrt!**  💀
    - **WHO THE FUCK IS TO BLAME AND FOR WHAT 💀❌💀**
    - **Keine Verantwortung übernehmen :question: => Alles Problem von Hersteller** :question:

## Extra Notes:
- $HERSTELLER
    - NOS -  🟢 - Hersteller_N -> 🔵 Schrift
    - H**I - 🔵 - Hersteller_H -> 🟢 Schrift
    - B**E - 🔴 - Hersteller_B -> :black_circle: Schrift
