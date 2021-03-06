#!/usr/bin/env bash
if ! type dirname > /dev/null 2>&1; then
    echo "Not even a linux or macOS, Windoze? We don't support it. Abort."
    exit 1
fi

. "$(dirname "$0")"/../../../common/common.sh

init_with_root_or_sudo "$0"

begin_banner "project-m36" "deploy deploy"

sudo sg docker -c "docker-compose -f /var/project-m36/docker-compose-project-m36.yml up -d"

done_banner "project-m36" "deploy deploy"
