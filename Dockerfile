FROM hashicorp/vault:1.15

# Install git python3
RUN apk add --no-cache git python3 py3-pip jq

# Install docker
RUN apk add --no-cache docker openrc

# Install cloud CLIs
RUN apk add --no-cache aws-cli

# Install npm
RUN apk add --no-cache nodejs-current npm
RUN npm install -g serverless

# Install tfswitch
RUN wget -q -O - https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | sh

# Install tgswitch
RUN wget -q -O - https://raw.githubusercontent.com/warrensbox/tgswitch/release/install.sh | sh

ENTRYPOINT [ "/bin/sh" ]
