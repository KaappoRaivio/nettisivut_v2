http-server ./built -o index.html -c-1 &
yarn chokidar '**/*.elm' '**/*.html' 'src/css/**/*.css' -c './scripts/build.sh {path}' --initial --ignore 'built/**'
trap 'kill $(jobs -p)' EXIT