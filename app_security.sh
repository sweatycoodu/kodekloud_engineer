# Open all incoming connections to the nginx port 8082 using iptables.
# Ensure the rules are permanent.

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Check if iptables is installed
if ! [ -x "$(command -v iptables)" ]; then
    echo "iptables is not installed. Please install it and try again." 1>&2
    exit 1
fi

# Check if the iptables rules are already in place
if iptables -C INPUT -p tcp --dport 8082 -j ACCEPT; then
    echo "The iptables rules are already in place."
    exit 0
fi

# Open the port 8082
iptables -I INPUT -p tcp --dport 8082 -j ACCEPT

# Save the iptables rules
iptables-save > /etc/iptables/rules.v4

# Check if the iptables rules are in place
if iptables -C INPUT -p tcp --dport 8082 -j ACCEPT; then
    echo "The iptables rules are in place."
    exit 0
else
    echo "The iptables rules are not in place." 1>&2
    exit 1
fi

# Run the script
sudo sh app_security.sh

