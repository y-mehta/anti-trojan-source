FROM node:slim

LABEL "com.github.actions.name"="anti-trojan-source"
LABEL "com.github.actions.description"="Detect trojan source attacks that employ unicode bidi attacks to inject malicious code"
LABEL "version"="1.0"
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="blue"
LABEL "repository"="https://github.com/lirantal/anti-trojan-source"
LABEL "homepage"="https://github.com/lirantal/anti-trojan-source"

RUN npm install -g anti-trojan-source

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
