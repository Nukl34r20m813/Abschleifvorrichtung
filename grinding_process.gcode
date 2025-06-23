; --- Initialisierung ---
G21                 ; mm-Einheiten
G90                 ; Absolut-Modus
M302 S0             ; Kaltextrusion erlauben
G92 Z0 X0           ; Z und X auf 0 setzen

; --- Homing Z-Achse ---
G28 Z               ; Nur Z-Achse homen
G92 Z0              ; Nullpunkt nach Homing setzen

M0 > Starte Schleifvorgang Stufe 1 (Z=40.0 mm)

; Z-Achse vorfahren, Rotation direkt starten
G1 X30 Z40 F800     ; Z und X gleichzeitig bewegen

; --- Stufe 1: Z = 40.0 mm ---
G91                 ; Relativmodus
G1 X70 F1000         ; Weiter schleifen
G1 Z-40 X30 F800    ; Rückfahrt mit Rotation

; --- Pause bis zur Bestätigung ---
M0 > Weiter mit Stufe 2 (Z=40.2 mm)

; --- Stufe 2: Z = 40.2 mm ---
G1 X30 Z40.2 F800   ; Z und X gleichzeitig vorfahren
G1 X70 F1000
G1 Z-40.2 X30 F800

; --- Pause bis zur Bestätigung ---
M0 > Weiter mit Stufe 3 (Z=40.4 mm)

; --- Stufe 3: Z = 40.4 mm ---
G1 X30 Z40.4 F800
G1 X70 F1000
G1 Z-40.4 X30 F800

; --- Pause bis zur Bestätigung ---
M0 > Weiter mit Stufe 4 (Z=40.6 mm)

; --- Stufe 4: Z = 40.6 mm ---
G1 X30 Z40.6 F800
G1 X70 F1000
G1 Z-40.6 X30 F800

; --- Z homen ---
G28 Z               ; Nur Z-Achse homen
