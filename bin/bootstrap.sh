source ./init-venv.sh

pip install -r ./../requirements.txt

### Prepare Assistant modules, working on MY-MEMORY
cd assisstent
git submodule add https://github.com/kamir/opi-bot-poc ./../assistent/opi-bot-poc
git submodule update --init --recursive

### Prepare MY-MEMORY
git submodule add https://github.com/kamir/my-memories-mk-v1-001 ./../data-stage
git submodule update --init --recursive

#
# We use some of the OPI-BOT-COMPONENTS
#
source ./../assisstent/opi-bot-poc/components/asynch-event-api/bootstrap.sh true