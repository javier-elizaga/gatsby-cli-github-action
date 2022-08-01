FROM node:18.7-slim

LABEL version="1.0.0"

LABEL "com.github.actions.name"="Github Action for Gatsby CLI"
LABEL "com.github.actions.description"="Wraps the Gatsby CLI to enable common Gatsby commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

RUN yarn global add gatsby-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["help"]