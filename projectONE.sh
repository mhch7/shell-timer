echo "Select Blink Timer 👁 "
echo "----------------------"                                             

function tenTimer(){
  echo "Alert you in 5 seconds ⏰"
  sleep 5
countdown=5
until [ $countdown -le "0" ];
do
    echo "$countdown"
    (( countdown -= 1 ))
    if [ $countdown ];
    then
        sleep 1
    fi
done
  echo "Blink"
  say "Open Eyes"
}

function thirtyTimer(){
  echo "Alert you in 10 seconds ⏰"
  sleep 10
  countdown=10
until [ $countdown -le "0" ];
do
    echo "$countdown"
    (( countdown -= 1 ))
    if [ $countdown ];
    then
        sleep 1
    fi
done
  echo "Blink"
  say "Open Eyes"
}

function inputTimer(){
 echo "Input Amount of Time Til You Blink ⏰"
  read num
  sleep $num
countdown=$num
until [ $countdown -le "0" ];
do
    echo "$countdown"
    (( countdown -= 1 ))
    if [ $countdown ];
    then
        sleep 1
    fi
done
 echo "Blink"
 say  "Open Eyes"
}

select opt in five ten input quit; do

  case $opt in
    five)
      tenTimer
      ;;
    ten)
      thirtyTimer
      ;;
    input)
      inputTimer
      ;;
    quit)
      exit
      ;;
esac
done
