# sePro
Costumer relationship Manager for Service provider ind 

Sepro, kurz für Service Provider ist eine Idee für ein Managementsystem, welches für Dienstleister des Mittelstandes aller Art den Arbeitsalltag durch innovative Technologien erleichtern soll.

Dieses Projekt basiert auf der Cloud-Technologie des Spring-Frameworks. Das Ziel ist es eine Software zu implementieren, die durch ihre Vertikalisierung eine modulare Bauweise aufweist.

Module sind im Sepro eigene unabhängige, einzeln deploybare Syteme, die als Bausteine zusammen ein Customer Relationship System ergeben.

Unterschieden wird hierbei zwischen 3 Typen von Servern:
  
            - Authentifizierungsserver
            - Verwaltungsserver
            - Ressourcenserver
            
Zusätzlich dient ein, auf Angular basierendes Frontend zur tatsächlichen Benutzung des Management Tools.

Innerhalb der Server und zwischen diesen und dem Frontend agieren REST-Schnittstellen, die den Datenaustausch regelt.
            
Zum Authenfizierungsserver-Typ gehört der "sepro-authorization-server". Dieser implementiert den neusten Standard der zustandslosen Authentifizierung ( openID ) durch OAuth2.

Zu den Verwaltungsserver gehören:
  - sepro-registry-service 
  - sepro-api-getway-service

Der Registry Service ist ein EUReKA-Service von Netflix-Cloud Systems.
Dabei werden registrierte Services bei Anfrage automatisiert ausfindig gemacht und jeweils zum Austausch weitergeleitet. Dies wird ausschließlich zur internen Kommunikation verwendet.

Der API-Getway-Service dient als Proxy für alle REST-Schnittstellen. Er leitet externe Anfragen zu entsprechenden Entry-Points weiter.

Zu den Ressourcenserver gehören:

- sepro-partner-service
- sepro-customer-service 
- sepro-appointment-service
- sePro-employee-service
- hairdresser-module 
- sepro-user-service 

Diese Services bilden Buisnesslogik der Software. Dabei werden die Anfragen verarbeitet und der Datenaustausch zwischen dem Backend und der Datenbank geregelt.

Die sepro-ui stellt einen Prototypen eines User-Interfaces dieses Management-Tools dar.

sePro_docker dient der Auftstellung der Produktions- und Entwicklungssysteme, sowie der Datenbank.
