codeoceanR::rt_score()

# A4 ----
# Lese die Geburten-Daten in R ein. Beachte, dass NAs als 999 eingetragen sind.
geburten<- read.table("R39d_Geburten.txt", header=TRUE, sep="\t",dec = ",", na.strings="999", stringsAsFactors=FALSE, skip=8)


# A5 ----
# Schreibe den eingebauten Datensatz 'mtcars' in eine Textdatei names motor_trend.txt.
# Unterdrücke die Einbeziehung von rownames.
# Die Spaltennamen sollten nicht in Anführungszeichen gesetzt werden.
data(mtcars)
write.table(mtcars, file="motor_trend.txt", sep="\t", quote=FALSE, row.names=FALSE)

# Mache weiter in "R39_Tabellen_3.R"
