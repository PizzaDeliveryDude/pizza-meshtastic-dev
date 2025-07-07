# pizza-meshtastic-dev
Pizza Delivery Dude's Meshtastic Development Repository

# Install python and pip
sudo apt install python3 python3-pip3

python -m venv ~/src/venv && source ~/src/venv/bin/activate

# Install Meshtastic
pip install -U pip meshtastic

# Backup config and nodedb
meshtastic --export-config > PizzaDeliveryDude_config.yaml

meshtastic --nodes › PizzaDeliveryDude_nodelist.yaml
