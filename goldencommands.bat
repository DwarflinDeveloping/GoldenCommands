@ECHO OFF

:search

cls

echo.
echo Willkommen bei GoldenCommands!
echo Gebe einen Suchbegriff ein, oder schreibe 'exit' zum verlassen.
echo.

set /p Suchanfrage=

echo.
if %Suchanfrage% EQU /msg goto a_msg
if %Suchanfrage% EQU /tell goto a_msg
if %Suchanfrage% EQU /color goto a_color
if %Suchanfrage% EQU /egal goto a_egal
if %Suchanfrage% EQU /yes goto a_egal
if %Suchanfrage% EQU /no goto a_egal
if %Suchanfrage% EQU /hub goto a_hub
if %Suchanfrage% EQU /lobby goto a_hub
if %Suchanfrage% EQU /badge goto a_badge
if %Suchanfrage% EQU /badges goto a_badge
if %Suchanfrage% EQU exit goto a_exit
if %Suchanfrage% EQU quit goto a_exit
if %Suchanfrage% EQU q goto a_exit
if %Suchanfrage% EQU !version goto data_version
if %Suchanfrage% EQU !credits goto data_credits

echo Entschuldige bitte. Dein Wort konnte ich leider nicht finden.
goto ende

:data_version
echo ---------------------------------------------------------------------------
echo Meine Version: InDev - 0.0.1
echo ---------------------------------------------------------------------------
goto ende

:data_credits
echo ---------------------------------------------------------------------------
echo Programmierer: Dwarflin
echo ---------------------------------------------------------------------------
goto ende

:a_lobby
echo Diesen Befehl gibt es auf GoldenArmy nicht.
echo Meinst zu vlt. '/hub'?
goto ende

:a_msg
echo /msg <Spieler-Name> <Nachricht>
goto ende

:a_color
echo /color - Zeigt die Uebersicht mit den Chat-Farben
goto ende

:a_badge
echo '/badge' oder '/badges' - Zeigt die Uebersicht mit den Badges.
goto ende

:a_badge
echo '/badge' oder '/badges' - Zeigt die Uebersicht mit den Badges.
goto ende

:a_warps
echo '/warps' - Zeigt die Uebersicht mit den Warps. (siehe auch '/warp')
goto ende

:a_warp
echo '/warp <Warp-Name>' - Teleportiert dich zu dem angegebenen Warp-Punkt. (siehe auch '/warps')
goto ende

:a_er
echo '/er <Nachricht>' - Schreibt an deinen letzten Kontaktpartner per '/tell'.
goto ende

:a_agree
echo '/agree' - Akzeptiert die Datenschutzrichtlinien von GoldenArmy.
goto ende

:a_hub
echo '/hub' - Teleportiert dich in die GoldenArmy-Lobby.
goto ende

:a_bansystem
echo '/bansystem' - Zeigt die Ersteller-Credits des Ban-Systems von GoldenArmy.
goto ende

:a_bansystem
echo '/dsgvo' - Zeigt die Ersteller-Credits des DSGVO-Systems von GoldenArmy.
goto ende

:a_check
echo '/check' - Schreibt eine Leerzeile. Kann genutzt werden um die Verbindung zu ueberpruefen.
goto ende

:a_egal
echo '/egal' und '/yes' und '/no' - Hiermit kannst du bei Umfragen abstimmen.
goto ende

:a_check
echo '/check' - Schreibt eine Leerzeile. Kann genutzt werden um die Verbindung zu ueberpruefen.
goto ende

:a_vote
echo '/vote' - Oeffnet die Vote-Uebersicht.
goto ende

:a_exit
echo Programm wird abgebrochen
exit

:ende
echo.
echo Schreibe 'exit' um das Programm zu beenden oder 'again' um eine neue Suche zu starten.
echo.

:againrequest
set /p end=

if %end% EQU exit goto a_exit
if %end% EQU quit goto a_exit
if %end% EQU q goto a_exit
if %end% EQU again goto search
if %end% EQU nochmal goto search