codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Wie gehabt sind die Grafiktests deutlich strenger als ich gerne hätte.
# Schönere Alternativen darfst du gerne außerhalb der Code Abschnitte entwickeln.


# A1 ----
# Zeichne 'rate' über 'conc' aus dem 'Puromycin' Datensatz.
# Setze große (doppelt so groß wie normal) gefüllte Punkte.
# Drehe die Achsenbeschriftungen aufrecht.
# Färbe die Punkte nach 'state' mit den benutzerdefinierten Farben in puroCol.
# Hinweis: Lektion 4.1 Punktdiagramme Folie "Vektor mit selbst definierten Farben"
# A1 ----
# Definiere den Farbvektor
puroCol <- c("orange", "mediumpurple2") 

# Zeichne 'rate' über 'conc' aus dem 'Puromycin' Datensatz
# t1_start

plot(rate ~ conc, data = Puromycin, 
     pch = 16,                     # Gefüllte Punkte
     cex = 2,                      # Doppelt so große Punkte
     col = puroCol[as.numeric(Puromycin$state)],  # Farbe der Punkte entsprechend 'state'
     bg = puroCol[as.numeric(Puromycin$state)],  # Füllfarbe nach 'state'
     las = 1,                      # Achsenbeschriftungen aufrecht
     xlab = "Substratkonzentration", 
     ylab = "Reaktionsrate",
     main = "Puromycin Reaktionsraten")

# t1_ende

#Aufgabe 2:
# t2_start

legend("bottomright", legend = levels(Puromycin$state), 
       pch = 16, pt.bg = puroCol, col = puroCol, pt.cex = 2, cex = 1.2)

# t2_ende



# Mache weiter in "R44_Hinzufuegen_2.R"
codeoceanR::rt_plot2() 
