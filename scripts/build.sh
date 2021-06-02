echo $1

elm make src/Main.elm --output built/elm.js
cp index.html built/index.html