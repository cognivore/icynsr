set -e

echo "rsync -Pave ssh . "$(cat DEPLOY_USER)"@"$(basename "$(cat DEPLOY_TO)")":/var/www/"$(basename "$(cat DEPLOY_TO)")""
rsync -Pave ssh . "$(cat DEPLOY_USER)"@"$(basename "$(cat DEPLOY_TO)")":/var/www/"$(basename "$(cat DEPLOY_TO)")"
