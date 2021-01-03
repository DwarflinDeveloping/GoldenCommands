declare -A lexicon_word_search=(
  ["/color"]="'/color' zeigt die Farben-Übersicht an"
  ["/msg"]="'/msg' oder '/tell <Name> <Nachricht>' - Schreibt den angegebenen Spieler eine Nachricht."

)

check_input()
{
  param="$1"
  if [ "${param}" == "" ]; then
    echo ""
    exit 0
  fi
}

parameter_gefunden=""

for parameter in $@ ; do
  case "${parameter}" in
    "--help"|"-h")
      echo "+---------------------------------------------------------------------------------+"
      echo "|                                                                                 |"
      echo "|  Dieses Programm gibt Auskunft über Befehle von GoldenArmy.                     |"
      echo "|                                                                                 |"
      echo "+---------------------------------------------------------------------------------+"
      ;;
    "--version"|"-v")
      echo "+-------------------------------------------------+"
      echo "| Aktuell ${#lexicon_word_search[@]} Begriffe vorhanden.                   |"
      echo "+-------------------------------------------------+"
	    ;;
    *)
      echo
      echo "Es wurde kein Parameter gefunden."
  esac
  parameter_gefunden+="#"
done

if [ "${parameter_gefunden}" != "" ]; then
  echo
  echo "es wurden ${#parameter_gefunden} Parameter verarbeitet."
  exit 0
fi

echo 
echo "+---------------------------------------------+"
echo "| Gib ein Kommando ein, das du suchen willst, |"
echo "| oder ein 'q', um das Programm zu beenden.   |"
echo "+---------------------------------------------+"
echo
read input
lexicon_word="$(echo ${input} | tr '[:upper:]' '[:lower:]')"
if [ "${lexicon_word}" == "q" ]; then
echo
echo "Das Programmm wird beendet"
echo
exit 0
fi

if [ "${lexicon_word}" == "exit" ]; then
echo
echo "Das Programmm wird beendet"
echo
  exit 0
fi

check_input ${lexicon_word}
echo
echo "Es wird nach möglichen Antworten gesucht..."
echo 
answer=${lexicon_word_search[${lexicon_word}]}
if [ "${answer}" == "" ]; then
  echo "Dieses Kommando habe ich leider nicht gefunden."
  echo "Falls es dieses Kommando gibt, bitte kontaktiere 'Dwarflin'."
else
  echo "${answer}"
fi

echo
echo "Gib ein 'q' ein, wenn Du fertig gelesen hast."
echo
read dummy
  case "${dummy}" in
    "q"|"Q"|"quit"|"Quit")
      echo
      echo "Das Programm wird beendet"
      echo
      exit 0
      ;;
    *)
      echo
      echo "Die Eingabe war ungültig! Verwende nächstes"
      echo "mal bitte eine gültige Antwort.!"
      echo
      exit 0

  esac
