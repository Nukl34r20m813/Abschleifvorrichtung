; --- Initialisierung ---
G21                 ; mm-Einheiten
G90                 ; Absolut-Modus
M302 S0             ; Kaltextrusion erlauben
G92 Z0 X0           ; Z und X auf 0 setzen

; --- Homing Z-Achse ---
G28 Z               ; Nur Z-Achse homen
G92 Z0              ; Nullpunkt nach Homing setzen

; Z-Achse vorfahren, kurz vor Ziel Rotation starten
G1 Z39 F600         ; fast komplette Z-Verfahrt
G1 X20 Z40 F800     ; letzte 1 mm in Z, X rotiert bereits

; === Schleifvorgang in 3 Stufen ===

; --- Stufe 1: Z = 40.0 mm ---
M0 > Starte Schleifvorgang Stufe 1 (Z=40.0 mm)
G91                 ; Relativmodus
G1 X60 F300         ; Weiter schleifen
G1 Z-40 X30 F600    ; Rückfahrt mit Rotation

; --- Pause bis zur Bestätigung ---
M0 > Weiter mit Stufe 2 (Z=40.2 mm)

; --- Stufe 2: Z = 40.2 mm ---
G90                 ; Absolutmodus
G1 Z39.2 F600       ; Z vorfahren
G1 X20 Z40.2 F800   ; Rotation während letzter Z-Verfahrt
G91
G1 X60 F300
G1 Z-40.2 X30 F600

; --- Pause bis zur Bestätigung ---
M0 > Weiter mit Stufe 3 (Z=40.4 mm)

; --- Stufe 3: Z = 40.4 mm ---
G90
G1 Z39.4 F600
G1 X20 Z40.4 F800
G91
G1 X60 F300
G1 Z-40.4 X30 F600

; --- Abschalten ---
M18                 ; Motoren aus
