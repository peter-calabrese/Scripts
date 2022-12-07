#!/bin/zsh

unset FILENAME
TS=false

while getopts ":t" opt; do
  case $opt in
  t)
    TS=true
    echo "Project using TypeScript"
		;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    exit 1
    ;;
  esac
done


if [ $TS = true ]; then
  FILENAME=$2
  npm create vite@latest "$FILENAME" -- --template react-ts
  cd "$FILENAME" || exit
  npm install
  npm run dev
else
  FILENAME=$1
  npm create vite@latest "$FILENAME" -- --template react
  cd "$FILENAME" || exit
  npm install
  npm run dev
fi

