http-server built/* -o index.html &
yarn chokidar '**/*.elm' '**/*.html' -c './scripts/build.sh {path}' --initial --ignore 'built/**'
trap 'kill $(jobs -p)' EXIT