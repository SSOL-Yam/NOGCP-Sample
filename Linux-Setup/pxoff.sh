export -n http_proxy
export -n https_proxy
export -n HTTP_PROXY
export -n HTTPS_PROXY

echo ====== Proxy OFF! ======
export -p | grep http
export -p | grep HTTP
echo ====== Proxy OFF! ======
