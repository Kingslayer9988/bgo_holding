# PROFI TOUR MITSCHRIFT 03.02.2025 - 07.02.2025

## Number One LAW ⚖️ => Don't mess with Profi-Tour-Profile from Isabel 😄 -> Copy & make "Erik"

## Tipps für Excel-Listen: [Excel_Listen_Immer_pro_KW$$]
- Werden LIVE am Onedrive Ordner bearbeitet 💀
- SC-Leiter & BGO = R,W,D-Rights 💀

- **Hinterlegen mit Farbe** == DIREKT_BAUSTELLE == **Kein LAGER-WAB** -> **WAB direkt auf Baustelle!**
- Aufpassen auf richtiges Kopieren in untere Zeilen:
  - Vorletzte == DIREKT WAB'S
  - Letzte == LAGER WAB'S

- Bei Baustellen mit **Nächtigung** -> Nächtigung in Excel Liste eintragen (Bis zum Endtag)
- Bei Baustellen mit **Trennwänden** -> Trennwand vermerken = Special Montage Workers
- Bei Baustellen mit **Küchen** -> L&M Küchenmontage => **Einige Sachen??** (UNSURE ASK ISABEL 😕)

## Tipps im Bearbeitungsfenster: [Nach der Auswahl der gewünschten bzw. zugeteilten Arbeitsbereiche bsp. Wien, Linz etc.]
- Grün = Kunde wurde bereits Avisiert.
- **FORCE_GREEN_BUTTON** => $Kunden_avis_bestätigen & $Aktualisieren => Kein Avis versendet trotzdem GRÜN!
- **[DIR | STK | PST]** -> Alle DIREKT
- **[Ausftragsnummer: 034]** -> Internet bestellung -> DIREKT
- Rechtsklick auf Datenbank-Row => **Transportauftrag** => Für Planung und Calculation-Script

- Vor-Avisieren (Gesamter Prozess könnte easy automatisiert werden)
    - Gleich wie Avisieren nur im Vorfeld -> **Nicht Offizielles Aviso verwenden!**
    - Daten & Mail aus Profitour "Aviso-Pdf" ziehen und Mail erfassen!
    - Wichtige Daten: **Kunde, KW, Auftragsnummer**
    - Mail-Wichtigkeit auf "High"
    - **Transportauftrag in der Mail anhängen!**

- Avisieren:
    - **Alles 2x kontrollieren**
    - Datum bei Touren & **Ladereihenfolge der WAB's 3x kontrollieren**
        - **Datum** kann sich aufgrund von Tagesarbeitszeit oder falschen $BUILD_TIMES from $HERSTELLER auf nächsten Tag rutschen!
        - Fehler passieren hier leicht und **keine Software-Kontrolle** für Fehler wie diese!
        - _NOTE: Probably a big reason that "AI" is not already taking Disponenten-Jobs (needs a sick Algorithm 😄)_

- Datenbank Stuff:
    - Import von Hersteller_H => Immer 06:30 & 14:00 Mo-Fr (AUCH Import von Hersteller_B und Hersteller_N ???) (UNSURE ASK ISABEL 😕)
    - Für **Auslieferlisten**  => Abfrage von **[Prod & Lieferwoche] - [Mo. - Sa.] der gewünschten [KW]** auswählen!
    - Für **Anvisieren** und erstellen von Touren => Abfrage von **[Lieferwoche]**
    - Für **Transportbestellung** (Winkler, etc) => Abfrage von **[Touren]**

- Fahrzeuge are completely messed up for some areas - Needs fixing but probably low priority! (UNSURE ASK BIG-BOSS 😕)

- Fahrzeuge:
    - Jumbo_WAP (LKW) => **max. ~ 35m³ => NUR FÜR DIREKT** = PASST NICHT INS LAGER (C-FS)
    - WAP (LKW) **(Direkt | Lager_WAP) => 30m³ => EGAL** (C-FS)
    - 7,5t Fahrzeug => **max. ~ 15m³ & 1000kg** [LAGER-WAB] (C-FS)
    - 3,5t Fahrzeug => **max. ~ 600kg** [LAGER-WAB] (B-FS)

- Tipps für erstellen von Linien:
    - LKW gewünscht - Komische Mitschrift (UNSURE ASK ISABEL 😕)
    - 2 Arten von Lager-WAB's **(Immer ins Kommentarfeld des WAB's)**
        - [Rampe] bei Umladen in 7,5t bzw. 3,5t Fahrzeugen beim Lager **(eher = Bei vielen Kleinkunden)**
        - [Platz] Wenn mit LKW zu von Kunde zu Kunde gefahren wird **(eher = Bei wenig Großkunden)**
        - Wenn 1 WAP bereits Rampe nächster muss auf Platz **(max 1 Rampe pro Tag)**
        - Nochmal mit Isabel durchgehen [Platz] macht irgendwie keinen Sinn (DIREKT?) (UNSURE ASK ISABEL 😕)
        - **Verlade-Reihenfolge = 99 ==> EGAL**

    - Bei knappen/komischen Touren => Plant SC-Leiter bzw. Absprache mit SC-Leiter (UNSURE ASK BIG-BOSS 😕)

## Frachtbriefe (Bestehen aus 2-PDF's):
- **Auswahl der Tour im Oberen Fenster** -> Frachtbrief -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER**
- **Auswahl der Tour im Oberen Fenster** -> Tourenplan -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER_TB**
- Frachtbrief und Tourenplan für SC-Leiter immer **$Montags_Aktuelle_KW** für **%Nächste_KW** -> Bsp.: **Montag in KW7** -> **Ausdrücke für KW08 an SC-Leiter**
- Immer Excel-Tabelle der Folge-KW auf Papier am Tisch haben und Touren nach Senden der PDF abhaken! -> **2PDF's pro Touren [_NON-TB & _TB]**
- Ablage auf Onedrive 😨 Ordner that never syncs even 10MB's 😂

## Auslieferlisten Infos:
- Für **SC-Leiter == alle Touren außer [POST, Direkt, Lager-WAB's]**
- Für **Hersteller == Alle Touren außer [Lager-WAB's] -> %%Immer Freitags für Nächste KW** (UNSURE ASK ISABEL 😕)

### Auslieferliste Guide:
- Single .csv Excel file -> Apply Makro -> **Save as .xlsx** save for **SC-Leiter** & **HERSTELLER**  = **receive it without Makros**
- Touren markieren -> **Auslieferliste** -> Saved as .csv on Remote [Profi-Tour-Server] -> Copy to [Local] and open in Excel
- Apply Excel ✨ **Magic-Makros** ✨ [Strg+Umschalt+A "For Austria + D for "Germany"] -> **[HARDCODED IN MAKRO]**
- Save as **.xlsx** => **(Will delete Makros)**
- Naming_Scheme: ALL_$ORT[WIEN,LINZ,GRAZ,etc]_[KW$$].xlsx 

## Other Things I got told and are probably Useful:
- Trennwände: (Speical_Montage_Workers)
    - Montage => pro 1 Laufmeter = 3h
    - Demontage => pro 1 Laufmeter = 1,5h

## Weird Notes
- $HERSTELLER
    - NOS - GRÜN - Hersteller_N
    - H**I - BLAU - Hersteller_H
    - B**E - ROT - Hersteller_B
