codeoceanR::rt_score()

# A1-5 ----
# Öffne das pdf-Grafikgerät mit der Datei iris_hist.
# Beachte, dass Dateinamen immer die richtige Dateierweiterung enthalten sollten.
# Die PDF soll im Format 10x6 (Inches=Zoll) querformatig sein.
# Hinweis: das Grafikgerät soll erst in Abschnitt t5 geschlossen werden.
# t1_start
pdf("iris_hist.pdf", width = 10, height = 6)  # 10x6 Inches, Querformat
# t1_ende
# Stelle die Device-parameter so ein, dass 2 Grafikpanels nebeneinander liegen.
# An dieser Stelle ist nur eine der beiden Optionen akzeptiert.
# So ist der Test einfach zu halten. In real life geht natürlich auch die andere.
# t2_start

par(mfrow = c(1, 2))  # Zwei Panels nebeneinander
# t2_ende
# Erstelle ein Histogramm von iris$Sepal.Length. Verschönere die Grafik nach Belieben.
# t3_start
hist(iris$Sepal.Length, breaks = 30, col = "lightblue", main = "Sepal Length Histogram",
     xlab = "Sepal Length", las = 1, border = "black")
# t3_ende
# Zeichne ein histogram von iris$Sepal.Width.
# t4_start

hist(iris$Sepal.Width, breaks = 30, col = "lightgreen", main = "Sepal Width Histogram",
     xlab = "Sepal Width", las = 1, border = "black")
# t4_ende
# Schließe das PDF-Gerät (Device).
# t5_start
dev.off()
# t5_ende


# Mache weiter in "R47_Exportieren_2.R"
