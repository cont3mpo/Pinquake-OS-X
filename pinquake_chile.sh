#!/bin/bash
terminal-notifier -title "Pinquake (Chile)" -message "Esperando sismo para notificar..."
echo "Pinquake (Chile) - Esperando sismo para notificar..."
touch /tmp/nuevo_chile /tmp/viejo_chile
while sleep 1m; (curl -s http://sismologia.cl/links/tabla.html | sed -n '26,40p' | cut -d '>' -f 4,7,9 | sed 's|</a>| - |g ; s|</td>| - |g ; s|Ml[^>]*||g' > /tmp/nuevo_chile); do diff /tmp/nuevo_chile /tmp/viejo_chile | head -n 1; done | while read line; do terminal-notifier -title "Pinquake (Chile)" -message "`head -n 1 /tmp/nuevo_chile`" ; echo "`head -n 1 /tmp/nuevo_chile`" ; cp /tmp/nuevo_chile /tmp/viejo_chile; done
