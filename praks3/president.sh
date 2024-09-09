#!/bin/bash
# Skript, mis ühendab muutujad lauseks

# Muutujate loomine
aasta=2016
president="Kersti Kaljulaid"
lause_keskosa=". aastal valiti Eesti presidendiks "

# Muutujate ühendamine lauseks
lause="$aasta$lause_keskosa$president"

# Lause väljund ekraanile
echo "$lause"
