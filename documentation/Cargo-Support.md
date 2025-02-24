# 🏢 BGO Mitschrift Erik Zellhofer 🏢

# 🚥 Cargo-Support for Dummies 🚥

## 💎 Infos Cargo-Support 

## Pros & Cons (Profi-Tour VS Cargo-Support)
- BIG PRO = Fahrzeuge / Datum / Container & mehr kann **alles aus der DB-Ansicht gemacht** werden!
- BIG PRO = Programm ist um einiges **Modularer** als Profi-Tour (Fenster-Settings brauchen noch Programmierarbeit)
- PRO = Gebiete sind viel deutlicher aufgeteilt => **Zonen >>> Bundesländer**
- PRO = Postaufträge werden komplett automatisch verarbeitet! => 0 User Input
- UNSURE = **Planungspool** - Maybe better maybe worse not sure yet. 

- BIG CON = Programm ist deutlich langsamer als Profi-Tour & Keine Ladeanzeige!
- BIG CON = Minimap is way worse than Profi-Tour => G-Maps API is perfect => But no Coloring of Dots is horrible & Loadingtimes are also horrible
- Tiny CON = Keinen "KW" Filter in DB-Ansicht 

## Programmstart & Filter der Aufträge
- Filter in der DB-Ansicht ist oben links => Keine "KW" => Montag bis Sonntag der gewünschten KW auswählen.
- Gebiete **ZONE** nach Karte Filter => Karte .pptx per Mail von Isabel
- Dispotrapl => Filter => **ZONE** Auswählen => Zone siehe .pptx Karte

## Planung von DIREKT_BAUSTELLE Touren (In DB-Ansicht möglich)
- Bei DIREKT_BAUSTELLE => In Datenbank-Ansicht => Tour markieren => **TOUR VERBINDEN**

- Neues Fenster öffnet sich => Fenster: **[Planungsdaten Ändern]()**
    - **Namens-Schema == Profitour**
    - Alle anderen Einträge **können leer gelassen** werden!

- Tour markieren => Button **[Planungsdaten Ändern]()**
    - **Bereitstellungsdatum** vergeben! => Wie im Profi-Tour (Freitag für Montag / 1 Tag vorher)
    - Container auswählen (NORMAL, EGAL,JUMBO)
    - Bei **2 Container auf 1 Tour** => 2. Container **händisch in DB-Ansicht** einstellen!
    - **Entladestart == 08:00** | Bereitstellungsdatum + 1 Werktag
    - **Spedition hinzufügen**

## Guide für das Erstellen von Lager-WAB's
- In DB-Ansicht gewünschte Datensätze markieren ==> Meist kleine Aufträge für Lager-WAB
- Rechtsclick => Button: In den **[Planungspool]()**
- Sobald Datensätze im **Planungspool** liegen werden sie auf **[Minimap]()** angezeigt!
- Nach Auswahl der Punkte auf **Minimap** => Rechtsclick => Button: **Hinzufügen**
- Ausgewählte Datensätze sind nun im **Virtuelle_Touren_Fenster**
- **Im Virtuellen_Touren_Fenster** => Tour nach **gewünschter Fahrt richten** => Button: **Tour erzeugen**
- Neues Fenster öffnet sich => Fenster: **[Planungsdaten Ändern]()** => Namen vergeben (Bsp.: SC WAB für 3,5t Touren)
- In der **DB-Ansicht** wird nun einen **generiete Tourennummer** vergen und in **gleicher Farbe** für die **Tour hinterlegt**
- Tipp: **Sortieren nach Tour-Nummer** => legt gewünschte **Tour-Stopps** untereinander!
- **Container-Nummer => WAB-Nr.**
- **Entladestart** ==> Auf **Stopp Nr.1 der Tour** stellen => **Anliefer_Datum** ausfüllen (Bereitstelldatum + 1 WKT)

## Virtuelle Touren Fenster
- Einfügen Vor / Nach ==> Wie im **BIOS** => **Höher/Tiefer** mit **ausgwählten Datensatz**
-  

## Minimap
- Steuerung ist **Invertiert** im vergleich mit Profi-Tour [STRG] [SHIFT]
- Farben sind ohne bedeutung ==> Should be fixed!

## Planungspool
- Find out if this is better or worse than in Profitour.

# Everything below this Heading is a Copy from Profi-Tour and will get changed along the Way

---
---
---
---
### ⚖️ LAW Number One ➡️ 
### ⚖️ LAW Number Two ➡️ 
### ⚖️ LAW Number Three ➡️ 
### ⚖️ LAW Number Four ➡️ 
---

## 💎 General Infos: 
- **[DIR | STK | PST]** => **Alle DIREKT** => **Kein LAGER-WAB**
    - **[PST]** Aufträge mit über **5m³** ==> Höchstwarscheindlich **Falsche Eingabe** von **Hersteller**
- **[ABH]** => Selbstabholung der Ware durch Kunden **(Er hat Fahrzeug/LKW)**
- **[Auftragsnummer: 034XXX]** -> **Internet Bestellung -> DIREKT**
- **[Auftragsnummer: 04XXXX]** -> **Neutrale Bestellung -> Für Tischer [UNBESCHRIFTET] -> DIREKT**
    - **Fahrer & Montagepersonal** muss extra **instruiert** werden!

- 🟢 => **Kunde wurde bereits Avisiert**
- 🔴 => **Kunde hat altes Aviso = Zeiten können nicht gehalten werden!** => **FORCE_GREEN** oder **Neu Avisieren** **[Guide](#-avisieren)**
- **FORCE_GREEN_BUTTON** => Button: **Kunden_avis_bestätigen & Aktualisieren** => **Kein Avis versendet trotzdem 🟢**
    - **Tournummer** mitschreiben bei denen **FORCE_GREEN_BUTTON** benutzt wurde!

- **Kommentar_Felder:**
    - **Bemerkung Transport** => Infos für die **Spedition** => **Bsp.: (PLATZ, RAMPE)**
    - **Bemerkung Versand** => Infos für **Verladung** => **Bsp.: (Manuelle Ladereihenfolge)**
    - **Bemerkung Montage** ==> Infos für **Montage Arbeiter** => **Bsp.: (FIXTERMIN | Hinweise | Adresseänderung/Zufahrt)**
        - Bei **Adress-Änderungen/Fehler** => **Mail an Hersteller** um weitere Fehler zu vermeiden!
        - Falls **Plant-SC-Leiter-Tour** => SC-Leiter anrufen!

- **Spedition**
    - Fahrzeuge müssen den **Touren richtig zugeordnet** werden (Fahrzeuge sind **Links oben** im Vehice-Sub-Window)
    - Spedition ist **NOTWENDIG** für **alle Touren** => Bsp. **Spedition_Winkler**

- **Container**
    - Container ist **NOTWENDIG** für **Lager-WAB's** && **Direkt_Baustelle** => Bsp. **Winkler_Egal|Normal|Jumbo**
    - **NORMAL** = Bei Lager-WAB's (Umladen)
    - **EGAL** = Bei Direkt_Baustelle (Kein Umladen)
    - **JUMBO** = Bei über 35m³ => **Immer Direkt_Baustelle** (KEIN UMLADEN MÖGLICH)
    - **Sattel** = 60m³ => **KEINEN CONTAINER AUF TOUR ZIEHEN!** (Eher Selten)

- **Fahrzeuge Infos**
    - **LKW Touren-Fahrzeug => 30m³ => DIREKT & LAGER** (C-FS) [WINKLER_EGAL|NORMAL]
    - **7,5t Touren-Fahrzeug => max. ~ 15m³ & 1000kg** [LAGER-WAB] (C-FS) [GRAZ_DIREKT|BUS]
    - **3,5t Touren-Fahrzeug => max. ~ 600kg** [LAGER-WAB] (B-FS) [GRAZ_DIREKT|BUS]
        - **Sattel** => **max. ~ 60m³** => **(2x WAB's pro Sattel)** (C-FS) [Bsp.: Quehenberger]
            - Haben **keinen eigenen Sattel** => Transportbestellung machen **[Guide](#-guide-für-die-transportbestellung)**

- **Fahrzeuge:**
    - Bei: **SC 3,5t & 7,5t Tour** => **$ORT_Bus**
    - Bei **Direkt_Baustelle Tour** => **$ORT_Direkt**
    - Bei **Plant SC LEITER Tour** => **$ORT_Direkt**
    - Bei **SC LKW Tour** => **$SPEDITION_LKW**
    - Es kann immer nur **1 Fahrzeug pro Tour** zugeteilt werden!
        - Bei Touren mit verschiednen Fahrzeugtypen => **größtes Fahrzeug nehmen** => (Bsp.: 3,5t + 7,5t Tour => 7,5t Fahrzeug)

- **Fahrzeuge are completely messed up for some areas => needs fixing - Absprache mit SC-Leiter**
    - Isabel macht **extra Arbeit** => Eintragen von **3,5t | 7,5t**
    - **Excel & Profitour & Realität** == STIMMEN **NICHT** ÜBEREIN 💀

- **Wochen-Auslatung des jeweiligen Herstelller berücksichtigen**
    - Mit **Mitarbeitern und Herstellen gute Lösung finden** (Isabell hat Schnittstelle vom Hersterller_H zum checken)

## 🗺️ Minimap - Kleine Karte links unten - Enthält ausgewählte Datensätze/Aufträge
- 🔵 Blau => **Unverplant** oder nur am **WAB**
- 🔴 Rot => Baustelle mit **Trennwand**
- 🟠 Orange => **Verplant WAB + Untertour**
- ➡️ Pfeile => Zeigen die **Tour von Kunde zu Kunde** (Luftlinie ✈️)
- 💹 Je **größer der Punkt desto mehr 💵💶💴**
- Hold **[STRG]** für **Neue Auswahl**
- Hold **[SHIFT]** für **Zur Auswahl hinzufügen**

## 💣 Guide für das erstellen von WAB-Touren:
- Bei **2 Containeren(WAB's) auf einem LKW + Hänger** bei **Verladereihenfolge** auch **2 WAB-Nummern vergeben** und auf **Hänger** stellen!
- **2 Arten von WAB's** => Eintragen von **[Rampe oder Platz]** in **Kommentar-Feld**  => **Bemerkung Transport**)
- **Maximal 1 WAB auf Rampe** pro Tag => **2ter WAB** muss auf **Platz**
    
    - **↗️ [Rampe]** (Lager-WAB) => bei Umladen in 7,5t bzw. 3,5t Fahrzeugen beim Lager **(eher = Bei vielen Kleinkunden)**
        - Container: **$Spedition_NORMAL**
        - **Niemals** einem **Jumbo-WAB** zur **Rampe**

    - **🅿️ [Platz] (Lager & Direkt-WAB)**  => Zuerst ins Lager & mit LKW zu Kunden gefahren wird **(eher = Bei wenig Großkunden)**
        - Container: **$Spedition_EGAL**
        - Aufpassen auf **Zufahrten etc.** oft ist es **nicht möglich** mit **LKW zur Baustelle** zu kommen!
        - Aufpassen im Normalfall **nicht mehr als 2 Kunden** => **Spedition** kann normal **nicht mehr als 2h auf Baustelle** warten
        
    - **🔁 Automatische Verlade-Reihenfolge**
        - **Auto-Button** berücksichtigt **keine Manuellen Änderungen** => **[Reset]**
        - Bei **Manuelle-Ladereihenfolge** verwendet wurde => Im **Kommentarfeld "Bemerkung Versamd"** vermerken!
            - Wieso Manuell-Ladereihenfolge ? => **Wenn 2 Unter-Touren** an **1 Tag** aus **1 WAB geladen** werden.

- **Verlade-Reihenfolge = 99** = Reihenfolge = **EGAL**

- **Vorproduktion:** => **WAB in Produktionswoche** anlegen & Bei **Unter-Tour** => Button: **Datum fixieren** => **Lieferdatum auswählen**

- **WAB-Nummern Vergabe** = Siehe **Nummern-Kreis** auf **Ausdruck**
    - Aufpassen: Bei **Vorproduktionen** gibt es einen eigenen **Nummern-Kreis**

- **💸 Tipps um Geld zu sparen**
    - **2 WAB's** mit **LKW + Anhänger an 1 Tag** ist **billiger** als **2 WAB's** an **2 verschiedenen Tagen**
    - Aufpassen teilweise **Spedition & SC-Leiter** aufgrund von **Auslastung** nicht Happy
    - **LKW gewünscht:** - Manchmal ist es **teurer umzuladen** in **3,5t bzw 7,5t Fahrzeug** - In diesen Fällen mit LKW zu **kleinem Kunden zu fahren!**

> [!NOTE]
> **Excel-Makro** für KW_$$ zur **Fehlererkennung** erstellen => Sobald **2 Touren aus 1 WAB** laden!

## 🚀 Guide für das erstellen von Unter-Touren:

- **📰 Transportauftragsreport checken** bzw. **Nachkalkulieren** von Aufträgen
    - Im **Unbearbeitet-Fenster** => Rechtsklick auf Datensatz=> **Transportauftragsreport** => Für **Zeit-Berrechnung & Calc.sh**
    - Auch möglich im **Bearbeitungs-Fenster** unter **Positionen**
    - Sollte bei **jedem Datensatz** kontrolliert bzw. **nachgerechnet** werden. => Für Kalkulation - **Skript => [See Here](../README.md#working-still-needs-adoption-for-hersteller)**
    - Bei **Kleinen Küchen** mit **SC-Leiter abklären**
        - **Küchenmonteure teilweise** selbst vorhanden! **[See Here](#gebiete-erik---hersteller-nos-)**

- Auf der **Minimap** oder im **Unbearbeitet-Fenster** **Datensätze/Punkte** markieren => **Button: In Auswahl** => Datensätze nun im **Bearbeitungs-Fenster**
    - Infos über Minimap **[See Here](#%EF%B8%8F-minimap---kleine-karte-links-unten---enthält-ausgewählte-datensätzeaufträge)**

- Zuerst immer **DIREKT & POST - Linien** erstellen!
    - Datensatz bei **DIREKT | POST | DIREKT_Baustelle** => **NICHT TEILEN**
    - Maximal **1 Postversand_ORT Linie pro KW** (Außnahme PST mit Fixtermin) 
    - Bei **Postversand-Linie** auch **Verlade-Reihenfolge** richten **[WAB-Nr.: 900]**

- Anschließend dann **Wunschtermine & Fixtermine** bzw. **größere Baustellen**

- 📝 **Naming-Scheme für Touren/WAB's:**
    - **DIREKT** => **DIR, Nr:043** => **DIREKT $Kunden_Name $Kunden_ORT WOCHENTAG(TT)**
        - Bei **[DIR]** Fixtermin **WICHTIG**
        - Bei **Internet-Order(Nr.: 043)** => Fixtermin **EGAL**
    - **FIXTERMIN** => Im **Tourennamen** und in **Bemerkung Montage vermerken** (Außnahme Internet-Order)
    - **Postversand ohne Fixtermin** => **PST** => **Postversand KW_$$ WOCHENTAG(TT)** => Alle **PST-Aufträge ohne FIXTERMIN** in diese **Tour!**
    - **Postversand mit Fixtermin** => **PST** => **Postversand $ORT FIXTERMIN**
    - **Bei Direkt-LKW zur Baustelle (Ohne Lager)** => **____(LEER) $Kunden_Name $Kunden_ORT WOCHENTAG(TT)** => In **Excel** mit **Farbe hinterlegen!**
    - **Lager-WAB für jeweiliges Fahrzeug(oder Mehrere) Tour** => **SC WAB für [LKW | 7,5t | 3,5t] Touren** 
    - **Untertouren die von Lager-WAB laden** => **SC [LKW | 7,5t | 3,5t] Tour $Start_ORT - $End_ORT WOCHENTAG(TT)**

| NAMESFELD | INFO |
| --- | --- |
| Postversand - Innsbruck - KW$$ | Direkt/Postversand am Dienstag |
| Postversand - $ORT - FIXTERMIN | Postversand mit Fixtermin ==> "FIXTERMIN" in "Bemerkung Montage" |
| $Kunden_Name $Kunden_ORT - DO | Direkt-LKW Tour zur Baustelle |
| SC WAB für 7,5t und 3,5t Touren - MI | Lager-WAB für 7,5t & 3,5t Touren |
| SC 7,5t Tour $Start_ORT - $End_ORT - MI | Untertour 7,5t Fahrzeug -> Laden von Lager-WAB |
| SC 3,5t Tour $Start_ORT - $End_ORT - MI | Untertour 3,5t Fahrzeug -> Laden von Lager-WAB |
| SC WAB für LKW Touren - DI | Lager-WAB für LKW Touren am Dienstag) ==> "RAMPE" in "Bemerkung Transport" |
| SC LKW Tour $Start_ORT - $End_ORT - DI | Untertour LKW Fahrzeug -> Laden von Lager-WAB => Lager-WAB=Rampe |
| Plant SC Leiter / 6 Kunden | Untertour mit 6 Kunden die SC-Leiter Plant |
| ULGB $Start_ORT - $End_ORT - FR | Untertour VORADELBERG(ULBG) am Freitag |

- **Bei knappen/komischen Touren** => **Plant SC-Leiter** bzw. **Absprache mit SC-Leiter**
    - **❌ Nicht gewünscht** -> Suboptimal -> **Ausnahme Voradelberg**
    
- **Voradelberg ist anders** => **Untertouren werden von ULGB (Oliver) Zusammengestellt**
    - **Untertouren werden von ULGB zusammengestellt** nach einer Liste von uns!
    - Filter in Datenbank nach **[Dornbirn + FL + CH + DE]**
    - Datenbank Ansicht auf **[Isabel-Voradelberg]**
    - **Schnittstelle => Export als Excel file (.csv)**
    - Autosumme pro WAB erstellen für **[Gewicht und m³]**
    - Text: **Anlieferung am $Datum zum Lager oder Direkt zum Kunden (Siehe Excel file oder Profitour)**
    - **Jumbo-WAB vermerken**
    - Als **E-Mail an Oliver** senden - er sendet die **Untertouren** zurück!
    - **Unter-Touren** wieder in **Profi-Tour** eingeben!
        - Oliver sendet **PDF via Mail** - **auf "A3" ausdrucken!** => **Untertouren** stehen unter der **Excel-Tabelle**
        - Alle Touren nach Oliver anlegen **(Naming: ULGB $Start_ORT $End_ORT Wochentag[TT])**
        - Alle **Stopps(Kunden)** Richtien & richtige **Ankunft fixieren!**
        - Alle Touren **Nachkalkulieren** & **Standzeit fixieren!** **[Siehe Hier](#-guide-für-das-erstellen-von-unter-touren)**
            - Aufpassen auf **Küchen** => **Montagezeit** stimmt im **Transportauftragsreport** teilen durch **Personen**
            - Aufpassen bei **Trennwänden(RS/RG)**, **Glaswänden** etc.

 - **Ändernen von Touren** => **Löst Stopp aus WAB & Stopp aus Tour**
    - Im Bearbeitungs-Fenster: **Aus Tour lösen und Teilung Rückgängig machen**
    - Im Unbearbeitet-Fenster: **Teilung Rückgängig machen**

> [!TIP]
> **Schnelles Übernnahme in die Planung** - Planung Reiter offen lassen & Tour aus Planung Entfernen\
> **Schnelles Verplanen von Änderungen** - Teilen von Aufträgen auch im Unbearbeitet-Fenster gemacht werden\
> **Auswahl in Verladeplanung+ nicht verlieren** - Nach Auswahl zuerst Bereitstell_Datum dannach Produktions_Datum klicken

## 📗 Avisieren
- Filter in **Datenbank-Ansicht** nach **[Prod + Lieferwoche] & [MO-SA]**
- **Avisieren** immer im **Touren-Fenster** => **[OBEN]**
- **Alles 2x kontrollieren**
- **Datum bei Touren** & **Ladereihenfolge WAB's 3x kontrollieren**
    - **Datum** immer in dem **Bearbeitungs-Fenster** unter **Stopps** kontrollieren!
    - **Datum** kann sich aufgrund von Tagesarbeitszeit oder **falschen $BUILD_TIMES from $HERSTELLER** auf nächsten Tag rutschen!
    - **Fehler passieren hier leicht** und **keine Software-Kontrolle** für Fehler wie diese!
> [!NOTE]
> Probably a big reason that "AI" is not already taking Disponenten-Jobs (needs a sick Algorithm 😄)\
> Bad for me but  => **Local Deepseek with Live Training here 👀👀**

## 📙 Vorraus Avisieren (Vor-Avisieren)
- Kann auch **Telefonisch** gemacht werden => Gut für **Stammkunden**
- **E-Mail & Kontakt & Datum** aus Profitour (Datenbank-Ansicht) nehmen und **E-Mail** erfassen!
- Wichtige Daten: **Kunde, KW, Auftragsnummer**
- Mail-Wichtigkeit auf **"High" 🍄**
- Vorlage:
````
Sehr geehrte Damen und Herren! [Oder Persöhnliche Anrede]

In der KW_$$/KW_$$ bekommen sie von der Firma [Hersteller_$] die neuen Büromöbel geliefert und montiert.
Wir würden die Montage gerne am [TTTT], [DATUM] um [UHRZEIT] Uhr beginnen.
Die Montagearbeiten wären am [DATUM]-[Tageszeit] abgeschlossen.

Bitte um eine kurze Antwort, ob der Termin für sie in Ordnung ist.

Danke im Voraus.
````
> [!NOTE]
> Gesamter Prozess könnte **easy automatisiert werden**)\
> Alle nötigen Daten könnten aus **Aviso PDF** (Richtes Avisieren) gezogen werden => Much ⏰ safed here\
> Prozess wird **Lokal automatisiert** => **Keine Anbindung an Profitour** => **Windwos_Contextmenu_PS_Script**)\
> Nicht erwünscht ‼️ => **Persöhnlicher Verwendung!**)\

## 📄 Guide für Frachtbriefe & Tourenpläne (2-PDF's):
- Filter -> **[Transportaufträge & Prod + Lieferwoche]** => **TT.MM.JJ - TT.MM.JJ** der gewünschten **KW auswählen**
- Für **Hersteller** == Alle Touren außer **[Lager-WAB's] => Immer Freitags für $Folge_KW_1**
- Für **SC-Leiter** == Alle Touren außer **[POST, Direkt, Lager-WAB's]**
- **Auswahl der Tour im Oberen Fenster** -> Frachtbrief -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER**
- **Auswahl der Tour im Oberen Fenster** -> Tourenplan -> Print as PDF -> Naming_Scheme: **[TT]_TOURNUMMER_TB**
- Frachtbrief und Tourenplan für SC-Leiter immer **$Montags_Aktuelle_KW** für **%Nächste_KW** -> Bsp.: **Montag in KW7** -> **Ausdrücke für KW08 an SC-Leiter**
- Immer **Excel-Tabelle der Folge_KW$$** auf Papier am Tisch haben und Touren nach Senden der PDF abhaken! -> **2PDF's pro Touren [_NON-TB & _TB]**
- Bei **Unklaren Anfahrten 🔮** für **Baustellen** => Mit **Hilfe** von SC-Leiter **Anfahrts-PDF** erstellen
    - Enthält **Pläne & Bilder vor Ort** oder **Google-Maps**
- Ablage auf Onedrive 📁 that never syncs even 10MB's 😨😂

## 📑 Guide für Auslieferlisten:
- Filter -> **[Transportaufträge & Prod + Lieferwoche]** => **TT.MM.JJ - TT.MM.JJ** der gewünschten **KW auswählen**
- Für **Hersteller** == Alle Touren außer **[Lager-WAB's] => Immer Freitags für $Folge_KW_1**
- Für **SC-Leiter** == Alle Touren außer **[POST, Direkt, Lager-WAB's]**
    - Auslieferlisten werden von **SC-Leiter** bearbeitet und **alle 3 Herstellern kombiniert**
    - Haben dann **Infos** über genaue Touren, Mitarbeiter, Fahrzeuge etc.
- **Touren** markieren => **Export** => Wähle **Auslieferliste** -> **Saved as .csv on Remote [Profi-Tour-Server]** -> Copy to **[Work-PC]** and open in Excel
- Apply Excel ✨ **Magic-Makros** ✨ **[Strg+Umschalt+A]** = Austria || **[Strg+Umschalt+D]** for "Germany"
- Bei **Plant-SC-Leiter-Touren:** => **Lösche Inhalt der Zellen in Grün** und schreibe **"Plant SC-Leiter"** in **🔴 & Fett**
- Save as **.xlsx**
- Naming-Scheme: **ALL_$ORT[WIEN,LINZ,GRAZ,etc]_[KW$$].xlsx**

> [!NOTE]
> Upgrade Makro to do the last 3 Steps in One

## 📦 Guide für die Abgabe der Produktion:
- Filter -> **[Transportaufträge & Hali: Lieferwoche]** => **[JJJJ/KW] auswählen**
- Es gibt eine **Liste mit Abgabedaten** für **Hersteller_H**
- Filter **$Folge_KW4** => Alle Orte
- Im **Unbearbeitet-Fenster** makiere alle Aufträge => **Checke Gewicht und m³**
- Erstelle immer als erstes **DIREKT & POST** Touren.
- Als nächstes Kontrolle auf **$FIXTERMIN & $WUNSCHDATUM**
- Lege als nächstes **DIREKT_BAUSTELLEN** an!
- Als Abschluss die **Lager-WAB's** ohne **Unter-Touren**
- **KONTROLLE !!! (Schnellschüsse || Liefer_KW =! Prod_KW || etc.)**
- Links oben auf Export ==> **Produktion des Herstelles wird eingelastet!!**
- Deadline verschieden für alle 3 Hersteller => **[Siehe Hier](#nos-)**
- Hersteller_H => 3 Wochen unterschied => **Bsp.: spät. Freitag KW7 für KW_11**

## 🔨 Guide für die Glättung der Produktion:
- im **Team abklären** wer **WAB's** leicht **verschieben kann um Auslastung** zu richten!
- Auf **Fixtermine** und **Montage-Auslatung** achten!
- Mit **SC-Leiter abklären** ob mann die Tage scheiben kann!
- Bei **$Hersteller_KW =! $Wirkliche_KW** auf Tage achten (Bsp.: $Hersteller_KW = DI-DI) => **NOS 💚 sollte das nicht zutreffen!**
- Öffne **Verladeplanung+** der **Lager-WAB's** die **geschoben** werden sollen => **Ändere Datum => Fertig**

## 🚚 Guide für die Transportbestellung:
- Filter -> **[Touren & Aufladestelle/Zeitraum]** => **[MO -SA] der gewünschten KW** auswählen!
- Nach dem Filter Alle Gebiete kontrollieren **(2 unteren Spalten in Excel zählen)** => **Direkt & Lager-WAB's**
- **Schnittstelle -> Export in Excel** -> safe as .xlxs Name: **Transportbestellunhg_KW__**
- **Container-Nummer & Container Anzahl & Ladeeinheiten kontrollieren!**
- **Ladereihenfolge checken** => oft **35/36/35** => Delete **35**
- **m³ mit Fahrzeugen abglichen** bei => (Bsp.: **40m³** => **LKW + Hänger** oder **2 LKW's**)
- Transportbestellung im richtigen **MS-Teams** Ordner ablegen!
- **Letzter im Team** fügt die **Excel-Imports der Mitarbeiter zusammen** und sendet sie an **Spedition Winkler**
- **Sonderbestellungen** wie Transmato, Quehenberger(Sattel) **sofort** bei Auftrag an Spedition senden!

## 📺 Guide für TV (TV = Termin-Verspätung)
- Nur möglich wenn **Untertouren fertiggestellt** sind! 
- Filter -> **[Transportaufträge & Auftrag]** => **Auftragsnummer der TV** (Siehe TV)
    - Tipp: **Enter = Zeile hinzufügen** (Filter nach mehreren Aufträge)
- Im **Touren-Fenster** **Tour die TV beinhaltet** auswählen
- Im **Bearbeitungs-Fenster** wähle **Transport_Aufträge** => **Positionen**
- Es gibt **4 verschiedene Fälle von TV's**
---
* 1️⃣ **Wenn Ganzer Transportauftrag (AB-Nummer)** Verzögert ist:
    * Gehe zu **WAB der TV-Tour** beinhaltet => Button: **Aus Tour lösen und Teilung Rückgängig machen**
---
* 2️⃣ Wenn nur **eine Postion im Auftrag** verzögert ist:
    * **Checken** ob bei der **Verzögerten Position Montagestunden** dabei sind und **keine weiteren Produkte**
    * Wenn ❌ **NEIN** => Button: Im **Bearbeitungs-Fenster** => **Neuen Transportauftrag erzeugen**
    * Wenn ✅ **JA** => Gehe zu **WAB der TV-Tour** beinhaltet => Button: **Aus Tour lösen und Teilung Rückgängig machen**
    * Wenn 🔐 die **Verzögerte Position Montagestunden** und andere **nicht verzögerte Produkte** beinhaltet
    * Löse die **Verzögerte Postition & Inklusive Montagestunden aus der Tour**
---
* 3️⃣ Wenn **ein Teil einer Position** verzögert ist:
    * Beim Teilen zuerst die **Anzahl der Teilstücke** dann die **Stückzahl** => (Bsp.: 3/7 Sessel in TV => Teilen 2 Teilstücke mit 4 Rest)
    * Button: Im **Bearbeitungs-Fenster** => **Neuen Transportauftrag erzeugen**
---
* 4️⃣ Wenn **die TV eine Postversendung** ist => **Verladeplanung+** auf neues Datum richten!!
---
- Wenn **WAB-Tour in der Zukunft** => **Verladereihenfolge neu richten**
- Anschließend oben Button: **Selection** (Falls Vergessen = Probleme im Bearbeitungs-Fenster) => Button: **In Auswahl**
- Im Bearbeitungsfenster **Auftrag auswählen** => **Sammelmappe erstellen**
- Naming-Scheme: **[$ORT_$KW_DER_TV_KUNDE]** => (KW: Siehe Links unten auf TV)
- Filter nach **$KW_WO_TV_HINGEHÖRT** in **[Lieferwoche]**
- Öffne **Sammelmappe** => Button: **Übernahme in die Planung**
- Auftrag ist nun im **Unbearbeitet-Fenster** => Splitten, WAB, etc. => **behandeln wie neuen Auftag**

## Profi-Tour besteht aus 2-Teilen bzw. Ansichten (Datenbank & Planungs - Ansicht)

### Ansicht_1 = Datenbank_Ansicht
- Direkt nach dem **Start des Programms** sichtbar!
- Import und **Auswahl der Gebiete** findet hier statt! **(Bsp.: Wien, Linz, Steiermark, etc.)**

### Ansicht_2 = Planungs_Ansicht => Besteht aus 3 Fenstern:

#### Fenster_1 => TOP => **Touren-Fenster**
- Hier findest du deine **Zusammengestellten Touren** (Lager-WAB's, Untertouren, Post-Tour)
- Der Inhalt dieses Fensters wird **Exportiert zum Hersteller** (Produktions_Abgabe)

#### Fenster_2 = MIDDLE = **Bearbeitungs-Fenster**
- Hier findet meiste **Arbeit** statt!

#### Fenster_3 = BOTTOM = **Unbearbeitet-Fenster** + Minimap (Gleich wie Datenbank_Ansicht)
- Hier starten wir nachdem wir in der **Datenbank-Ansicht unser Gebiet ausgewählt** haben!

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
> [!NOTE]
> **Automations & Fixes (Work in Progress):**
> 
> **💡 Make Hersteller_KW visable if its not MO - SO | Bsp.: DI - DI**\
> **💡 Automatic Numbering of _KW$ in File & creating of Files**\
> **💡 Auto Calc of WAB_Gewicht inkl. auto. zuordnung zu Untertouren**\
> **💡 Auto Coloring for DIREKT Touren**\
> **💡 Auto Copy of WAB's (Letzte Zeilen)**

## Gebiete Erik - Hersteller NOS 💚
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
- Isabel Gebiete => **SC Dornbirn + (DE+CH+FL)** | **SC Graz + Selten (SLO)** | **SC Innsbruck + (ITA)** | SC Klagenfurt

## Other Things I got told and are probably Useful:
- **❄️ Frozen Zone (Hali)❄️**
    - Ab **Folge_KW** der **Abgabewoche** !
    - Aufträge können von **Hersteller_H NICHT mehr bearbeitet werden.**
    - BGO kann noch Schieben aber **nur nach hinten (später)** - Nur bei **[Checkmark-Eingelastet]** ☑️

- Trennwände: **(Speical_Montage_Workers)**
    - Montage => pro 1 Laufmeter = 3h
    - Demontage => pro 1 Laufmeter = 1,5h
    - [RG] **Glaswand** => Kommt aktuell nur von **$Hersteller_B** => Bei anderen Hersteller => **Falsche Eingabe**

- Microsoft Teams
    - Aufpassen beim **Download von PDF's** => Downloaded gerne altes File! => **Teams is great Software**
  
- **Konflikte** mit **BGO & SC-Leiter** (UNSURE ASK BIG-BOSS 😕)
    - Wer ruft Kunden bei welchen Problem an ? 💀
    - Abschieben auf $Hersteller & $SC-Leiter ==> **und Umgekehrt!**  💀
    - **WHO THE FUCK IS TO BLAME AND FOR WHAT 💀**
    - **Keine Verantwortung übernehmen :question: => Alles Problem von Hersteller** :question:
    - Maybe ask all the Colleges ?

## Extra Notes:
- Excel Makros für Auslieferliste:
    - Werden nur Lokal in Excel gespeichert - (New to me i always put them in the actual file) 
    - Will only work local - thats where the weird keycombo comes from.

- $HERSTELLER
    - NOS -  🟢 - Hersteller_N -> 🔵 Schrift
    - HALI - 🔵 - Hersteller_H -> 🟢 Schrift
    - BENE - 🔴 - Hersteller_B -> ⚫ Schrift
> [!NOTE]
> Later make Guides switchable per $_Hersteller and Color them accordingly 🌈
