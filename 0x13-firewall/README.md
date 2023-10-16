# Firewall Configuration

This repository contains the configuration files for setting up a firewall on the `web-01` server. It includes two sections: blocking all incoming traffic except for specific TCP ports and port forwarding.

## Block All Incoming Traffic

To block all incoming traffic on `web-01` except for the following TCP ports: 22 (SSH), 443 (HTTPS SSL), and 80 (HTTP), follow these steps:

1. Install `ufw` firewall on `web-01`:
   ````
   $ sudo apt-get install ufw
   ```

2. Configure `ufw` rules to allow the required ports:
   ````
   $ sudo ufw default deny incoming
   $ sudo ufw allow 22/tcp
   $ sudo ufw allow 443/tcp
   $ sudo ufw allow 80/tcp
   $ sudo ufw enable
   ```

Make sure to apply these rules to the appropriate server(s). You can find the complete `ufw` commands in the answer file [here](./0-block_all_incoming_traffic_but).

## Port Forwarding

In addition to filtering requests, firewalls can also forward them. To configure `web-01` to redirect port 8080/TCP to port 80/TCP, follow these steps:

1. Modify the `ufw` configuration file:
   ````
   $ sudo nano /etc/ufw/before.rules
   ```

2. Add the following lines before the `*filter` section:
   ````
   # Port forwarding
   *nat
   :PREROUTING ACCEPT [0:0]
   -A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
   COMMIT
   ```

Save the file and exit the editor. You can find a copy of the modified `ufw` configuration file [here](./100-port_forwarding).

Make sure to apply these changes to the appropriate server(s).

---

**Note:** It's important to follow the necessary security measures and customize the firewall configuration based on your specific requirements and network setup.

## Repository Details

- GitHub repository: [alx-system_engineering-devops](https://github.com/Barniva/alx-system_engineering-devops)
- Directory: 0x13-firewall

