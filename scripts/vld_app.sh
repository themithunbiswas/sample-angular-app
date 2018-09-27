status_code=$(curl -sL -w "%{http_code}\\n" "localhost/app" -o /dev/null)

if [[ $status_code == "200" ]]; then
    echo 'ok'
    exit 0
else
    echo 'err'
    exit 1
fi
