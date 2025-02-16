# BGO Mitschrift 03.02.2025 - 14.02.2025

## Chronologischer Ablauf (Will Still have Mistakes - Aktuell für $Hersteller_H)

- **Montag:** 
    - Frachtbrief & Tourenplan für SC-Leiter _(Siehe Punkt 420)_
- **Dienstag:**
    - Daily Quests
- **Mittwoch:**
    - Daily Quests
- **Donnerstag:**
    - Daily Quests + Something i keep forgetting!
- **Freitag:** 
    - **Produktions-Export _(WAB's-Export)_**  => Für **MINDESTENDS $Folge_KW_4** (Bsp: **Freitag_KW7 für KW_11**) _(Siehe 420)_
    - **Transportbestellung** => Für **$Folge_KW_2** (Bsp: **Freitag_KW_07 für KW_09**) _(Siehe 420)_
    - **Auslieferliste für Hersteller** => Für **$Folge_KW** (Bsp: **Freitag_KW_07 für KW_08**) _(Siehe 420)_

- **Daily Quests**
    - Bei jedem Import von Hersteller_H **06:30 & 14:00 Täglich**
        - **Alle neuen Aufträge** wieder verplanen für **$Aktuelle_KW & $Folge_KW_1 & $Folge_KW_2**
        - Außnahme **Freitags 14:00: Nur DIREKT/POST** Lieferungen verplanen **(Runde der Mitarbeiter)** 
    - **TV's** machen die Anfallen!

# Profi-Tour for absolute Dummys

### Number One ⚖️ LAW => Don't mess with Profi-Tour-Profile from Isabel ✅
### Number Two ⚖️ LAW => Bei jeder Änderung -> Export für Hersteller ✅
### Number Three ⚖️ LAW => Dont even try SPECIAL_LETTERS(§$%_-) in Profitour ✅
### Number Four ⚖️ LAW => Dont open to many Instances because you will double Import ✅

## Profi Tour besteht aus 2-Teilen bzw. Ansichten


### Ansicht_1 = Datenbank_Ansicht
- Direkt nach dem **Start des Programms** sichtbar!
- Import und **Auswahl der Gebiete** findet hier statt! **(Bsp.: Wien, Linz, Steiermark, etc.)**
- Import von **Hersteller_H** => Immer 06:30 & 14:00 Mo-Fr (Import von Hersteller_B und Hersteller_N sind anders)
- Tipps:
    - Für **Auslieferlisten**  => Abfrage von **[Prod & Lieferwoche] - [Mo. - Sa.] der gewünschten [KW]** auswählen!
    - Für **Anvisieren** und erstellen von Touren => Abfrage von **[Lieferwoche]**
    - Für **Transportbestellung** (Winkler, etc) => Abfrage von **[Touren]**

### Nach der Auswahl der richtigen Datenbank-Einträge (Zeilen) => Klicke: "Übernahme in Planung"

### Ansicht_2 = Planungs_Ansicht
- Nach **Übernahme in Planung sichtbar**
- Besteht aus **3 Fenstern**

## Fenster_1 => TOP => **Touren-Fenster**

- Hier findest du deine **Zusammengestellten Touren** (Lager-WAB's, Untertouren, Post-Tour)

- Der Inhalt dieses Fensters wird **Exportiert zum Hersteller** (Produktions_Abgabe)

- **Tipps:**
    - Rechtsklick auf Tour (Datenbank-Row) => **Transportauftrag** => Für **Zeit-Planung bzw. Calculation-Script**
    - Bei "Plant SC-Leiter Touren" die Anzahl der Kunden dazuschreiben => Bsp-Name: **Plant_SC_Leiter_6_Kunden**
    
    - Kommentar_Felder:
        - **Bemerkung Montage** ==> Infos für **Montage Arbeiter** => **Bsp.: (kleine Änderungen | Hinweise | Adresseänderung/Zufahrt)**
            - Bei **Adress-Änderungen/Fehler** => **Mail an Hersteller** um weitere Fehler zu vermeiden!
            - Falls **Plant-SC-Leiter-Tour** => SC-Leiter anrufen!
        
        - **Bemerkung Transport** => Infos für die Spedition => **Bsp.: (Ladereihenfolge, Sonderliche-Ladegüter, Zoll)**
        
        - **Bemerkung Versand** => Infos für den **$Hersteller** => **Bsp.: (???)** _(UNSURE ASK ISABEL 😕)_

- **Fahrzeuge**
    - Fahrzeuge müssen den **Touren richtig zugeordnet** werden (Fahrzeuge sind **Links oben** im Vehice-Sub-Window)
    
    - Richtige Spedition auf Tour ziehen! 
        - Spedition ist **NOTWENDIG** für **alle Touren** => Bsp. **Spedition_Winkler**
        
    - **Richtigen Container auf Touren ziehen!**
        - Container ist **NOTWENDIG** für **Lager-WAB's** && **Direkt_Baustelle** => Bsp. **Winkler_Egal|Normal|Jumbo**
            - **NORMAL** = Bei LagerWAB's (Umladen)
            - **EGAL** = Bei Direkt_Baustelle (Kein Umladen)
            - **JUMBO** = Bei über 35m³ => **Immer_Direkt** (KEIN UMLADEN MÖGLICH)
            - **Extra:** **Sattel** = 60m³ => **KEINEN CONTAINER AUF TOUR ZIEHEN!**
    
    - **Richtiges Fahrezug auf Touren ziehen!**
        - 3,5t Fahrzeug für Touren <= 3,5t Tonnen Fahrzeuge
        - 7,5t Fahrzeug für Touren <= 7,5t Tonnen Fahrzeuge
        - $LKW_$SPED für Touren <= LKW Fahrzeuge
        - Bei Touren wo Bsp. 7,5t und 3,5t Fahrzeuge eingesetzt werden => **7,5t Fahrzeug nehmen!!**

    - **Fahrzeuge are completely messed up for some areas => needs fixing!** => **Absprache mit SC-Leiter**
        - _Note: Isabel macht **extra Arbeit** => Eintragen von **3,5t | 7,5t** => Weil SC-Leiter Fahrzeuge nicht Ändern will (UNSURE ASK BIG-BOSS 😕)_
    
    - **Fahrzeug_Tabelle:**
        - Selten: **Sattel (Nicht Winkler)** => **~60m³** => **(2x WAB's pro Sattel)** (C-FS) [Quehenberger]
        - Jumbo_WAB (LKW) => **max. ~ 35m³ => NUR FÜR DIREKT** = PASST NICHT INS LAGER (C-FS)
        - WAB (LKW) **(Direkt | Lager_WAB) => 30m³ => EGAL** (C-FS)
        - 7,5t Fahrzeug => **max. ~ 15m³ & 1000kg** [LAGER-WAB] (C-FS)
        - 3,5t Fahrzeug => **max. ~ 600kg** [LAGER-WAB] (B-FS)


## Fenster_2 = MIDDLE = **Bearbeitungs-Fenster**
- Hier findet meiste **Arbeit** statt!

- 🟢 => **Kunde wurde bereits Avisiert**
- 🔴 => **Kunde hat altes Aviso = Zeiten können nicht gehalten werden!** => **Neu senden** oder **FORCE_GREEN**

- **FORCE_GREEN_BUTTON** => Button: **Kunden_avis_bestätigen & Aktualisieren** => **Kein Avis versendet trotzdem 🟢**

- **Tipps für erstellen von Linien:**
    
    - **2 Arten von WAB's** => Eintragen in **Kommentar-Feld**  => **Bemerkung Transport**) _(UNSURE ASK ISABEL 😕)_
        - [Rampe] (Lager-WAB) => bei Umladen in 7,5t bzw. 3,5t Fahrzeugen beim Lager **(eher = Bei vielen Kleinkunden)**
            - Fahrzeug: **$Spedition_NORMAL**
            - **Niemals** einem **Jumbo-WAB** zur **Rampe**

        - [Platz] (Direkt-WAB)  => Wenn mit LKW zu von Kunde zu Kunde gefahren wird **(eher = Bei wenig Großkunden)**
            - Fahrzeug: **$Spedition_EGAL**
            - Aufpassen auf **Zufahrten etc.** oft ist es **nicht möglich** mit **LKW zur Baustelle** zu kommen!
            - Aufpassen im Normalfall **nicht mehr als 2 Kunden** => **Spedition** kann normal **nicht mehr als 2h auf Baustelle** warten
        
        - Wenn 1 WAB bereits Rampe nächster muss auf Platz **(max 1 Rampe pro Tag)**

        - **Automatische Verlade-Reihenfolge** (Meinst Segen manchmal Fluch)
            - **Auto-Button** berücksichtigt **keine Manuellen Änderungen** => **[Reset]**
            - Bei **Manuelle-Ladereihenfolge** verwendet wurde => Im **Kommentarfeld "Bemerkung Montage"** vermerken _(UNSURE ASK ISABEL 😕)_
                - Wieso überhaupt Manuell ? => **Wenn 2 Touren** an **1 Tag** aus **1 WAB geladen** werden.
                - _NOTE: **Excel-Makro** zum Fehlerschutz erstellen_

        - **Verlade-Reihenfolge = 99** == Verlade-Reihenfolge = **EGAL**

        - **Vorproduktion:** => **WAB in Produktionswoche** anlegen & Bei **Unter-Tour** => Button: **Datum fixieren** => **Lieferdatum auswählen**

        - **Lager-WAB's** sind von **Seite BGO günstiger** wenn sie **zusammen gefahren** das heißt:
            - **2 WAB's** mit **LKW + Anhäger** am Dienstag ist **billiger** als **1 WAP** mit LKW am Dienstag **+ 1 WAP** mit LKW am Donnerstag
            - Aufpassen teilweise **Spedition und SC-Leiter** aufgrund von **Auslastung** nicht Happy 

        - **WAB-Nummern Vergabe** = Siehe **Nummern-Keis** auf **Ausdruck**
            - Aufpassen: Bei **Vorproduktionen** gibt es einen eigenen **Nummern-Kreis**
    
    - **Transportauftragslisten:** NAME _(UNSURE ASK ISABEL 😕)_
        - Rechtsklick auf Auftrag (SQL-Datensatz) => **Transportauftrag** => Für **Zeit-Planung bzw. Calculation-Script**
        - Sollte bei **jedem Auftrag** kontrolliert bzw. **nachgerrechnet** werden. => Für Kalkulation - **Skript zur Abhilfe** siehe README.md!
        - Bei **kleinen Küchen** mit **SC-Leiter abklären** ob wir sie selbst machen können!

    
    - **Naming-Scheme für Touren/WAB's:**
        - **DIREKT** => PST, DIR, N:043 => **DIREKT $ORT1 $ORT2 WOCHENTAG(TT)**
        - **_____(Leer)** => Direkt-LKW auf Baustelle => **__LEER $ORT1 $ORT2 WOCHENTAG(TT)**
        - **SC WAB für [LKW | 7,5t | 3,5t] Touren** => Items werden umgeladen in LKW oder 3,5t oder 7,5t => **SC WAB $ORT1 für $Vehicle1|2|3 Touren WOCHENTAG(TT)**
        - Beispiele:
            - Direkt|Post_Versand | Innsbruck - Landeck | DI ==> (Direkt/Postversand am Dienstag)
            - SC WAB | Innsbruck | für 7,5t & 3,5t | MI ==> (Lager-WAB für 7,5t & 3,5t Touren)
                - SC Touren für 7,5t & 3,5t | Innsbruck - Wörgl | | DO ==> (Untertouren 7,5t & 3,5t Fahrzeuge -> Von Lager-WAB)
            - Seefeld | DO  ==> (Direkt-LKW Tour zur Baustelle)
            - Plant SC Leiter | Imst - Reutte | 6 Kunden ==> (Untertour die SC-Leiter Plant) [Siehe 420]

    - **Bei knappen/komischen Touren** => **Plant SC-Leiter** bzw. **Absprache mit SC-Leiter**
        - **❌ Nicht gewünscht** -> Suboptimal -> **Außnahme Voradelberg**
    
     - **Voradelberg ist anders** => **Untertouren werden von ULGB (Oliver) Zusammengestellt**
        - **Untertouren werden von ULGB zusammengestellt** nach einer Liste von uns!
        - Filter in Datenbank nach **[Dornbirn + FL + CH + DE]**
        - Datenbank Ansicht auf **[Isabel-Voradelberg]**
        - **Schnittstelle => Export als Excel file (.csv)**
        - Autosumme pro WAB erstellen für **[Gewicht und m³]**
        - Text: **Anlieferung am $Datum zum Lager oder Direkt zum Kunden (Siehe Excel file oder Profitour)**
        - **Jumbo-WAB vermerken**
        - Als **E-Mail an Oliver** senden - er sendet die **Untertouren** zurück!
    
    - **LKW gewünscht:**
        - Manchmal ist es **teurer umzuladen** in **3,5t bzw 7,5t Fahrzeug**
        - In diesen Fällen mit LKW zu **kleinem Kunden zu fahren!**

    - **TV immer für jeweilige KW__ erledigen** nachdem Untertouren fertiggestellt sind!
        - TV = Termin-Verspätung
        - Filter nach **Auftragsnummer** **(Steht auf TV)**
        - Im Touren-Fenster => Gehe zu **WAB-Tour die TV beinhaltet**
        - Im Bearbeitungs-Fenster:
            - Gehe zur genauen Position der TV
            - Falls nur **ein Teil einer Position fehlt** => Button: **(UNSURE ASK ISABEL 😕)**
            - Beim teilen zuerst die **Anzahl der Teilstücke** dann die **Stückzahl** => (Bsp.: 3/7 Sessel in TV => Teilen 2 Teilstücke mit 4 Rest)
            - Button: **Aus Tour lösen und Rückgängig machen** (Nach Teilung nicht notwendig (UNSURE ASK ISABEL 😕))
        - Wenn **WAB-Tour in der Zukunft** => **Verladereihenfolge neu richten**
        - Anschließend oben Button: **Selection** (Sonst Probleme im Bearbeitungsfenster)
        - Im Bearbeitungsfenster **Auftrag auswählen** => **Sammelmappe erstellen**
        - Name => Keine Gesetze => Isabel-Naming: **[$ORT + $KW_DER_TV]** => (KW: Siehe Links unten auf TV)
        - Filter nach **$KW_WO_TV_HINGEHÖRT** in **[Lieferwoche]**
        - Öffne **Sammelmappe** => Button: **Übernahme in die Planung**
        - Auftrag ist nun im **Unbearbeitet-Fenster** => Splitten, WAB, etc. => **behandeln wie neuen Auftag**

    - **Avisieren:**
        - **Alles 2x kontrollieren**
        - **Datum bei Touren** & **Ladereihenfolge WAB's 3x kontrollieren**
            - **Datum** kann sich aufgrund von Tagesarbeitszeit oder falschen $BUILD_TIMES from $HERSTELLER auf nächsten Tag rutschen!
            - **Fehler passieren hier leicht** und **keine Software-Kontrolle** für Fehler wie diese!
            - _NOTE: Probably a big reason that "AI" is not already taking Disponenten-Jobs (needs a sick Algorithm 😄)_
            - _NOTE: Bad for me but Probably good for Big_Boss => **Local Deepseek with Live Training here 👀👀**_

    - **Vor-Avisieren**
        - Gleich wie Avisieren nur im Vorfeld -> **Nicht Offizielles Aviso verwenden!**
        - Daten & Mail aus Profitour **"Aviso-Pdf"** ziehen und Mail erfassen!
        - Wichtige Daten: **Kunde, KW, Auftragsnummer**
        - Mail-Wichtigkeit auf "High"
        - **Transportauftrag muss nicht in der Mail anhängt werden**
        - _(NOTE1: Gesamter Prozess könnte **easy automatisiert werden**)_
        - _(NOTE2: Prozess wird **Lokal automatisiert** => **Keine Anbindung an Profitour** => **Native Script**)_
        - _(NOTE3: Laut Isabel nicht erwünscht => trotzdem Fragen zu **Persöhnlicher Verwendung!**) (UNSURE ASK BIG-BOSS 😕)_

    - **Wochen-Auslatung des jeweiligen Herstelller berücksichtigen**
        - Mit **Mitarbeitern und Herstellen gute Lösung finden** (Isabell hat Schnittstelle vom Hersterller_H zum checken)
        - Hersteller_NOS fragen => Wie Auslatungen gemssen werden => **Date am 04.03.2025 & 11-12.03.2025 🌹** 

## Fenster_3 = BOTTOM = **Unbearbeitet-Fenster** + Minimap (Gleich wie Datenbank_Ansicht)
- Hier starten wir nachdem wir in der **Datenbank-Ansicht unser Gebiet ausgewählt** haben!

- Wichtige Infos zu den Ausgewählten Datensätzen: 
    - **[DIR | STK | PST]** => **Alle DIREKT** => **Kein LAGER-WAB**
        - **[PST]** Aufträge mit über **5m³** ==> **Falsche Eingabe** von **Hersteller**
    - **[ABH]** => Selbstabhholung der Ware durch Kunden **(Er hat Fahrzeug/LKW)**
    - **[Ausftragsnummer: 034]** -> **Internet bestellung -> DIREKT**

- **Minimap** => Kleine Karte **links unten** => Enthält **ausgewählte Datensätze**
    - Blau => **Unverplant** oder nur am WAB
    - Rot => Baustelle mit **Trennwand**
    - Orange => **Verplant WAB + Untertour**
    - Pfeile => Zeigen die **Tour von Kunde zu Kunde** (Luftlinie)
    - Je **größer der Punkt** auf der Karte => **mehr 💵 💵 💵**

- Auf der **Minimap** oder im **Unbearbeitet-Fenster** **Datensätze/Punkte** markieren => **Button: In Auswahl** => Datensätze nun im **Bearbeitungs-Fenster**

- Zuerst immer **DIREKT & POST - Linien** erstellen!
    - Maximal **1 Postversand_SC(ORT) Linie** pro KW [900]

- Anschließend dann **Wunschtermine & Fixtermine** bzw. **größere Baustellen**

- Als nächstes **Lager-WAB's** erstellen!

- **========================= An diesem Punkt kann fur Produktion Abgegeben/Exportiert werden =========================** (Siehe Punkt 420)

- **Untertouren** sind für die **Produktion nicht relevant**.

## Frachtbriefe (Bestehen aus 2-PDF's):
- **Auswahl der Tour im Oberen Fenster** -> Frachtbrief -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER**
- **Auswahl der Tour im Oberen Fenster** -> Tourenplan -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER_TB**
- Frachtbrief und Tourenplan für SC-Leiter immer **$Montags_Aktuelle_KW** für **%Nächste_KW** -> Bsp.: **Montag in KW7** -> **Ausdrücke für KW08 an SC-Leiter**
- Immer **Excel-Tabelle der Folge_KW$$** auf Papier am Tisch haben und Touren nach Senden der PDF abhaken! -> **2PDF's pro Touren [_NON-TB & _TB]**
- Ablage auf Onedrive 😨 Ordner that never syncs even 10MB's 😂

## Auslieferlisten Infos:
- Für **Hersteller == Alle Touren außer [Lager-WAB's] -> %%Immer Freitags für Nächste KW**

- Für **SC-Leiter == alle Touren außer [POST, Direkt, Lager-WAB's]**
- **Auslieferlisten_SC** kommen von **SC-Leiter** zurück mit **allen 3 Herstellern kombiniert**
- Haben **Infos** über genaue Touren, Mitarbeiter, Fahrzeuge etc. => Naming_Scheme: **Auslieferliste_$SC-Leiter_$KW__**

### Auslieferliste Guide:
- Single .csv Excel file -> Apply Makro -> **Save as .xlsx** save for **SC-Leiter** & **HERSTELLER**  = **receive it without Makros**
- Touren markieren -> **Auslieferliste** -> **Saved as .csv on Remote [Profi-Tour-Server]** -> Copy to [Local] and open in Excel
- Apply Excel ✨ **Magic-Makros** ✨ [Strg+Umschalt+A "For Austria + D for "Germany"] -> **[HARDCODED IN MAKRO]**
- Bei SC-Leiter Touren: **Lösche Inhalt der Zellen mit Touren-Nummer** und schreibe **"Plant SC-Leiter"** in **🔴 & Fett**
- Save as **.xlsx** => **(Will delete Makros)**
- Naming_Scheme: **ALL_$ORT[WIEN,LINZ,GRAZ,etc]_[KW$$].xlsx**

## Abgabe der Produktion (Lager-WAB's) für Hersteller:
- Filter **$Folge_KW1 & $Folge_KW2 & $Folge_KW3 & $Folge_KW4**
- Im **Touren-Reiter** makiere alle Aufträge => **Checke Gewicht und m³**
- Erstelle immer als erstes **DIREKT & POST** Touren.
- Als nächstes Kontrolle auf **$FIXTERMIN & $WUNSCHDATUM**
- Lege als nächstes **DIREKT_BAUSTELLEN** an!
- Als Abschluss die **Lager-WAB's** ohne **Unter-Touren**
- **KONTROLLE !!! (Schnellschüsse || Liefer_KW =! Prod_KW || etc.)**
- Links oben auf Export ==> **Produktion des Herstelles wird eingelastet!!**
- **Deadline verschieden für alle 3 Hersteller**
- Hersteller_H => 3 Wochen unterschied => **Bsp.: spät. Freitag KW7 für KW_11**

## Transportbestellung Infos:
- Immer **Freitags $Aktulle_KW** für **$Folge_KW_2** ==> **(Bsp.: Fr, KW7 für KW9)**
- Filter -> **[Touren / Auflade Zeit]** -> **KW Mo - Sa, auswählen**
- **Schnittstelle -> Export in Excel** -> safe as .xlxs Name: **Transportbestellunhg_KW__**
- Alle Gebiete kontrollieren **(2 unteren Spalten in Excel zählen)** => **Direkt & Lager-WAB's**
- **Ladereihenfolge checken** => oft **35/36/35** => Delete **35**
- **m³ mit Fahrzeugen abglichen** bei => **Bsp.: 40m³ => 2 LKW's**
- Transportbestellung im richtigen **MS Teams** Ordner ablegen!
- **Letzter im Team** fügt die **Excel-Imports der Mitarbeiter zusammen** und sendet sie an **Spedition Winkler**
- **Sonderbestellungen** wie Transmato, Quehenberger(Sattel) **sofort** bei Auftrag an Spedition senden!

## Tipps für Excel-Listen: [Excel_Listen_Immer_pro_KW$$]
- Werden **LIVE am Onedrive Ordner bearbeitet** 💀
- SC-Leiter & BGO = **R,W,D-Rights** 💀

- **Hinterlegen mit Farbe** == DIREKT_BAUSTELLE == **Kein LAGER-WAB** -> **WAB direkt auf Baustelle!**

- Aufpassen auf richtiges Kopieren in untere Zeilen:
  - **Vorletzte == DIREKT WAB'S**
  - **Letzte == LAGER WAB'S**

- Bei Touren mit **Vorproduktionen** diese vermerken! => Bsp: **Prod. aus KW_06**
- **Sonderfälle** wie **(Leerer-WAB wird mitgenommen)** auch vermerken!
- Bei "Plant SC-Leiter Touren" die Anzahl der Kunden dazuschreiben => Bsp-Name: **Plant_SC_Leiter_6_Kunden**
- Bei Baustellen mit **Nächtigung** -> Nächtigung in Excel Liste eintragen **(Bis & nicht inkulsive Endtag)**
- Bei Baustellen mit **Trennwänden** -> Trennwand vermerken = **Special Montage Workers**
- Bei Baustellen mit **Küchen** -> **L&M Küchenmontage** oder **nach Gebiet gibt es Special Montage Workers**

- Lösung für mich => **Local_Excel_File mit Extra Infos und Calculations für Lademenge etc**
- **Force Sync** => **SC_Leiter_Excel_File + Removal of extra Infos**
- Extras: **(Work in Progress)**
  - **💡 Automatic Numbering of _KW$**
  - **💡 Auto Calc of WAB_Gewicht inkl. auto. zuordnung zu Untertouren** 
  - **💡 Auto Coloring for DIREKT Touren**
  - **💡 Auto Copy of WAB's (Letzte Zeilen)**

## Gebiete Erik - Hersteller NOS 🟢
- **Voradelberg(SC Dornbirn) + DE(S-W) + FL + CH**
    - Kein Küchenmonteur :o:
- **Tirol (SC Innsbruck)**
    - Kein Küchenmonteur :o:
- **Kärnten (SC Klagenfurt) + ITA**
    - Küchenmonteur vorhanden :heavy_check_mark:
    - Kleines SC => Max 2 LKW pro Tag (1x Platz & 1x Rampe)
- **Steiermark(SC Graz)** 
    - Kein Küchenmonteur **aber gute Monteure(Außnahme)** :heavy_check_mark:
- **Deutschland Gesamt (SC ?? | Relock-Partner)**  _(UNSURE ASK ISABEL 😕)_
    - Noch nicht sicher :question: :question: :question:
    - Ähnlich wie Voradelberg **(Relock ~ ULGB)**

## Other Things I got told and are probably Useful:
- **❄️ Frozen Zone (Hali)❄️**
    - Ab **Folge_KW** der **Abgabewoche** !
    - Aufträge können von **Hersteller_H NICHT mehr bearbeitet werden.**
    - BGO kann noch Schieben aber **nur nach hinten (später)** - Nur bei **[Checkmark-Eingelastet]** ☑️

- Trennwände: **(Speical_Montage_Workers)**
    - Montage => pro 1 Laufmeter = 3h
    - Demontage => pro 1 Laufmeter = 1,5h

- Microsoft Teams
    - Aufpassen beim **Download von PDF's** => Downloaded gerne altes File! => **Teams is great Software**
  
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
