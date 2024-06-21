# m169-cls
Projektarbeit aus dem Modul 169

## Setup
Um die Anwendungen zum Laufen zu bringen, müssen folgende Bedingungen erfüllt sein:
- Docker ist entweder lokal oder in einer VM installiert

Wenn die Vorausseztungen gegeben sind, müssen folgende Befehle ausgeführt werden:\
**1. git clone** \
```git clone https://github.com/sean-mcguinness/m169-cls.git``` \
**2. cd** \
```cd m169-cls``` \
**3. docker compose up** \
```docker compose up -d```

## Website
Die Webpage lässt sich nun auf Port 80 mit der IP-Adresse des Hosts (bei lokaler Docker Installation: localhost, bei Docker Installation in einer VM: IP-Adresse der VM) \
Von da aus lassen sich die drei Spiele erreichen.

![image](https://github.com/sean-mcguinness/m169-cls/assets/112271964/a2a4251b-e89b-415e-83f7-f34f032e5f13)

## Pong
![image](https://github.com/sean-mcguinness/m169-cls/assets/112271964/e59fb2c2-e373-482c-9288-753261a7227d)

## Snake
![image](https://github.com/sean-mcguinness/m169-cls/assets/112271964/5755009c-0e8b-4559-997d-f7f1b4ed4f1b)

## Tic Tac Toe
![image](https://github.com/sean-mcguinness/m169-cls/assets/112271964/577fdf77-a0ad-4424-9524-c89620ff43df)

## Monitoring
Die Überwachung kann in Grafana angesehen werden.
Das Web-Interface ist auf Port 3000 erreichbar. Auch hier wieder mit der IP-Adresse des Hosts (bei lokaler Docker Installation: localhost, bei Docker Installation in einer VM: IP-Adresse der VM) \
Die standard Logindaten sind: \
username: admin \
password: grafana

![image](https://github.com/sean-mcguinness/m169-cls/assets/112271964/03345fc8-a2d6-4c2b-9061-55c7179ddbdf)

Diese Daten finden sich auch im docker-compose.yml im Block für Grafana als Umgebungsvariablen.
GF_SECURITY_ADMIN_USER=admin
GF_SECURITY_ADMIN_PASSWORD=grafana

Wir empfehlen die Standardlogins umgehend nach dem Setup zu ändern.

## Quellen
Der Quellcode für die Spiele wurde von folgendem GitHub Repository übernommen und containerisiert: \
https://github.com/maxwihlborg/youtube-tutorials

Die Vorlage für das Dashboard wurde von folgender Quelle heruntergeladen und angepasst: \
https://grafana.com/grafana/dashboards/10619-docker-host-container-overview/
