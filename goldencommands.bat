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
if %Suchanfrage% EQU /ah goto a_ah
if %Suchanfrage% EQU /auction goto a_ah
if %Suchanfrage% EQU /auctionhouse goto a_ah
if %Suchanfrage% EQU /p goto a_p
if %Suchanfrage% EQU /2 goto a_p
if %Suchanfrage% EQU /anfang goto a_anfang
if %Suchanfrage% EQU /start goto a_anfang
if %Suchanfrage% EQU /clan goto a_clan
if %Suchanfrage% EQU /craft goto a_craft
if %Suchanfrage% EQU /crafts goto a_crafts
if %Suchanfrage% EQU /fly goto a_crafts
if %Suchanfrage% EQU /bal goto a_balance
if %Suchanfrage% EQU /balance goto a_balance
if %Suchanfrage% EQU /boost goto a_boost
if %Suchanfrage% EQU /discord goto a_discord
if %Suchanfrage% EQU /ec goto a_ec
if %Suchanfrage% EQU /enderchest goto a_ec
if %Suchanfrage% EQU /enderchest2 goto a_ec2
if %Suchanfrage% EQU /ec2 goto a_ec2
if %Suchanfrage% EQU /enderchests goto a_enderchests
if %Suchanfrage% EQU /friend goto a_friend

if %Suchanfrage% EQU /fake goto a_permission_denied
if %Suchanfrage% EQU /aacgnotify goto a_permission_denied
if %Suchanfrage% EQU /fake goto a_permission_denied
if %Suchanfrage% EQU /bperm goto a_permission_denied
if %Suchanfrage% EQU /bpermission goto a_permission_denied
if %Suchanfrage% EQU /bpermissions goto a_permission_denied
if %Suchanfrage% EQU /baltop goto a_permission_denied

if %Suchanfrage% EQU exit goto a_exit
if %Suchanfrage% EQU quit goto a_exit
if %Suchanfrage% EQU q goto a_exit
if %Suchanfrage% EQU !version goto data_version
if %Suchanfrage% EQU !credits goto data_credits

echo Entschuldige bitte. Dein Wort konnte ich leider nicht finden.
goto ende

:data_version
echo ---------------------------------------------------------------------------
echo Meine Version: InDev - 0.1.0
echo ---------------------------------------------------------------------------
goto ende

:data_credits
echo ---------------------------------------------------------------------------
echo Programmierer: Dwarflin
echo ---------------------------------------------------------------------------
goto ende

:a_friend
echo '/friend'- Zeigt das Freunde-Menü des Nutzers an
goto ende

:a_ec2
echo '/enderchests'- Zeigt beide Enderkisten des Nutzers an
goto ende

:a_ec2
echo '/ec2' oder '/enderchest2'- Zeigt die zweite Enderkiste des Nutzers an
goto ende

:a_ec
echo '/ec' oder '/enderchest'- Zeigt die Enderkiste des Nutzers an
goto ende

:a_discord
echo '/discord' - Zeigt Information über den GoldenArmy-Discord an
goto ende

:a_boost
echo '/boost' - Öffnet das Booster-Menü
goto ende

:a_balance
echo '/bal' oder '/balance' - Zeigt den Kontostand des ausführenden Nutzers
goto ende

:a_fly
echo '/fly' - Versetzt den Spieler in den Flugmodus
goto ende

:a_crafts
echo '/crafts' - Zeigt alle Spezialrezepte von GoldenArmy
goto ende

:a_craft
echo '/craft' - Öffnet eine mobile Werkbank
goto ende

:a_clan
echo '/clan' - Zeigt das Clan-Menü
goto ende

:a_anfang
echo '/anfang' oder '/start' - Zeigt das Start-Menü
goto ende

:a_p
echo '/p' oder '/2' - Zeigt das PlotSquared-Menü
goto ende

:a_ah
echo '/ah', '/auction' oder '/auctionhouse' - Zeigt das Auktionshaus
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

:a_permission_denied
echo Dieser Befehl kann nicht ohne Administratorrechte ausgeführt werden.

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
if %end% EQU a goto search
if %end% EQU nochmal goto search
