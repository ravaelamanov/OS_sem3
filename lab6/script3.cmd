@echo off
sc \\DESKTOP-15ITPF1 query > out1.txt
sc stop dnscache
timeout /t 10 /nobreak
sc \\DESKTOP-15ITPF1 query > out2.txt
mdiff.cmd out1.txt out2.txt
sc start dnscache