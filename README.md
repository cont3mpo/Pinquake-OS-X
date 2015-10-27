# Pinquake (OS X)
Notificación de terremotos para OS X (Earthquakes notification for OS X)
<ul>
<li>pinquake_global.sh - Un bash script que notifica de los terrremotos a nivel global desde tres fuentes de medición (USGS, GEOFON, EMSC), todos los sismos que notifica son sobre los 4.0/4.5 grados de magnitud.</li>
<li>pinquake_chile.sh - Notifica de los nuevos sismos que ocurren en Chile, sobre los 3.0 grados de magnitud (Centro Sismológico de la Universidad de Chile).</li>
<li>pinquake_japon.sh - Notifica de los nuevos sismos en Japón (Japan Meteorological Agency).</li>
</ul>
Todos utilizan <code>terminal-notifier</code> para las notificaciones de escritorio (instalen terminal-notifier con <a href="http://brew.sh/index_es.html">Homebrew</a>). Las notificaciones se van acumulando en el Centro de notificaciones de OS X.
