# Bgo Holding:

## Number One LAW => Dont fuck with Profi-Tour-Profile from Isabel -> Copy and make "Erik"

## Tipps für Excel-Listen: [Excel_Listen_Immer_pro_KW$$]
- Werden LIVE am Onedrive Ordner bearbeitet == WEIRD :O
- SC-Leiter & BGO = R,W,D-Rights == WEIRD x 2 :O

- Hinterlegen mit Farbe == DIREKT_BAUSTELLE == Kein LAGER-WAB -> WAB direkt auf Baustelle!
- Aufpassen auf richtiges Kopieren in untere Zeilen:
  - Vorletzte == DIREKT WAB'S
  - Letzte == LAGER WAB'S

- Bei Baustellen mit Nächtigung -> Nächtigung in Excel Liste eintragen (Bis zum Endtag)
- Bei Baustellen mit Trennwänden -> Trennwand vermerken braucht spezille Montage Boys
- Bei Baustellen mit Küchen -> L&M Küchenmontage => Einige sachen (UNSURE ASK ISABEL)

## Frachtbriefe & Auslieferlisten: (Unterschiedlich für SC-Leiter und Produktion)
- Immer bei der Abfrage [Prod & Lieferwoche auswählen]
- Immer bei der Abfrage [Mo. - Sa.] der gewünschten [KW] auswählen!

## Tipps im Bearbeitungsfenster: [Nach der Auswahl der gewünschten bzw. zugeteilten Arbeitsbereiche bsp. Wien, Linz etc.]
- Grün = Kunde wurde bereits Avisiert.
- FORCE_GREEN_BUTTON => $Kunden_avis_bestätigen & $Aktualisieren => Kein Avis versendet trotzdem GRÜN!
- [DIR | STK | PST] -> Alle DIREKT
- [Ausftragsnummer: 034] -> Internet bestellung -> DIREKT
- Rechtsklick auf Datenbank-Row => Transportauftrag => Für Planung und Calculation-Script

- Vor-Avisieren
    - Gleich wie Avisieren nur im Vorfeld -> Nicht Offizeles Aviso verwenden!
    - Daten & Mail auß Profitour "Aviso-Pdf" ziehen und Mail erfassen!
    - Wichtige Daten: Kunde, KW, Auftragsnummer
    - Mail-Wichtigkeit auf "High"
    - Nicht notwendig laut Isabel - Scheint aber wichtig persöhnliche Meinung!
    - Transportauftrag in der Mail anhängen!

- Avisieren:
    - Alles 2x kontrollieren -> Kein Spaß wenn Kunde Böse!
    - Datum bei Touren & Ladereihenfolge der WAB's 3x kontrollieren -> Kein Spaß wenn Montage Boys & SC-Leiter Böse!
        - Datum kann sich aufgrund von Tagesarbeitszeit oder fucked build_times from $HERSTELLER auf nächsten Tag rutschen!
        - Fehler passieren hier leicht und keine Software-Kontrolle für Fehler wie diese!
        - NOTE: Probably a big reason that "AI" is not already taking Disponenten-Jobs :D (I get sick imagining a Algorithm getting this shit right :O )

- Datenbank Stuff:
    - Import von Hersteller_H => Immer 06:30 & 14:00 Mo-Fr (AUCH Import von Hersteller_B und Hersteller_N ???) (UNSURE ASK ISABEL)
    - Für Auslieferlisten  => Abfrage von [Prod & Lieferwoche]
    - Für Anvisieren und erstellen von Touren => Abfrage von [Lieferwoche]

- Fahrzeuge are completly fucked for some Areas - Needs fixing but probably low priority! [UNSURE ASK BIG-BOSS]

- Fahrzeuge:
    - Jumbo_WAP (LKW) => BIG BOY bis zu 35 m³ => NUR FÜR DIREKT - PASST NICHT INS LAGER (C-FS)
    - LKW (Direkt) => 30m³ & Gewicht = EGAL (C-FS)
    - 7,5t Tonnen Fahrzeug => around 15m³ & Gewicht = 1000kg [LAGER-WAB] (C-FS)
    - 3,5t Tonnen Fahrzeug => bis zu 600kg [LAGER-WAB] (B-FS)

- Tipps für erstellen von Linien:
    - LKW gewünscht - Komische Mitschrift von mir und Vergessen :) (UNSURE ASK ISABEL)
    - 2 Arten von Lager-WAB's (Immer ins Kommentarfeld des WAB's)
        - [Rampe] bei Umladen in 7,5t bzw 3,5t Fahrzeugen beim Lager (eher = Bei vielen Kleinkunden)
        - [Platz] Wenn mit LKW zu von Kunde zu Kunde gefahren wird (eher = Bei wenig Großkunden)
        - Wenn 1 WAP bereits Rampe nächster muss auf Platz (max 1 Rampe pro Tag)
        - Nochmal mit Isabel durchgehen [Platz] macht irgendwie keinen Sinn (DIREKT?) (UNSURE ASK ISABEL)
        - Verlade-Reihenfolge = 99 ==> EGAL

    - Bei knappen/komischen Touren => Plant SC-Leiter bzw. Absprache mit SC-Leiter [UNSURE ASK BIG-BOSS]

## Frachtbriefe (Bestehen aus 2-PDF's):
- Auswahl der Tour -> Frachtbrief -> Print as PDF -> Naming_Scheme: TT_TOURNUMMER
- Auswahl der Tour -> Tourenplan -> Print as PDF -> Naming_Scheme: TT_TOURNUMMER_TB
- Frachtbrief und Tourenplan für SC-Leiter immer $Montags_Aktuelle_KW für %Nächste_KW -> Bsp.: Montag in KW7 -> Ausdrücke für KW08 an SC-Leiter
- Immer Excel-Tabelle der Folge-KW auf Papier am Tisch haben und Touren nach Senden der PDF abhaken! -> 2PDF's pro Touren [_NON-TB & _TB]
- Ablage auf Onedrive[PUKE] Ordner that never syncs even 10MB's :)

## Auslieferlisten Infos:
- Für SC-Leiter == alle Touren außer [POST, Direkt, Lager-WAB's]
- Für Hersteller == Alle Touren außer [Lager-WAB's] -> %%Immer Freitags für Nächste KW (UNSURE ASK ISABEL)

### Auslieferliste Guide:
- Single .csv Excel file -> Apply Makro -> Save as .xlsx so $SC-Leiter_ and $HERSTELLER_ receives it without Makros
- Touren markieren -> Auslieferliste -> Saved as .csv on Remote [Profi-Tour-Server] -> Copy to [Local] and open in Excel
- Apply Excel "MAGIC" Makros :DD [Strg+Umschalt+A "For Austria + D for "Germany"] -> [HARDCODED IN MAKRO]
- Save as .xlsx -> So Anti-Virus doesn't cry because of Makros in File :D
- Naming_Scheme: ALL_$ORT[WIEN,LINZ,GRAZ,etc]_[KW$$].xlsx

## Other Things I got told and is probably Useful:
- Trennwände: (Speical_Montage_Workers)
    - Aufbau => pro 1 Laufmeter = 3h
    - Abbau => pro 1 Laufmeter = 1,5 Zeit

