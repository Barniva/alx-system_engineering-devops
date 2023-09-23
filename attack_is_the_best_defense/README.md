# Network Security Projects

This repository contains two projects focused on network security techniques. The projects are part of the ALX System Engineering & DevOps curriculum.

## Project 0: ARP Spoofing and Sniffing Unencrypted Traffic

### Task Description
In this project, we explore the concept of sniffing unencrypted network traffic. By intercepting network packets, an attacker can gain access to sensitive information transmitted over the network. Although modern network security measures have improved, legacy systems still rely on unencrypted communication, which can be exploited.

The project does not cover ARP spoofing but focuses on sniffing unencrypted traffic and extracting information from it. The target scenario involves using Sendgrid, an email service that supports both secure and unsecured communication methods. The provided script, `user_authenticating_into_server`, performs authentication steps using telnet. The objective is to execute the script locally, sniff the network using tcpdump, and find the password used in the authentication process. Please note that the script is not compatible with Docker containers or macOS; an Ubuntu or Linux machine is required.

### Repository Details
- GitHub repository: [alx-system_engineering-devops](https://github.com/Barniva/alx-system_engineering-devops)
- Directory: attack_is_the_best_defense
- File: 0-sniffing

## Project 1: Dictionary Attack

### Task Description
This project explores the vulnerability of password-based authentication systems to dictionary attacks. A dictionary attack involves attempting to crack passwords by systematically trying a list of words or commonly used passwords. The target for this task is an SSH account.

To complete the project, follow these steps:
1. Install Docker on your Ubuntu machine.
2. Pull and run the Docker image `sylvainkalache/264-1` using the command `docker run -p 2222:22 -d -ti sylvainkalache/264-1`.
3. Obtain a password dictionary (you may need multiple dictionaries).
4. Install and utilize Hydra, a tool for brute-forcing accounts, to carry out the dictionary attack on the SSH account named "sylvain" within the Docker container.
5. Since the Docker container is running locally, Hydra should access the SSH account via IP address 127.0.0.1 and port 2222.
6. Keep in mind that the password is 11 characters long.

Once you have successfully found the password, include it in your answer file.

### Repository Details
- GitHub repository: [alx-system_engineering-devops](https://github.com/Barniva/alx-system_engineering-devops)
- Directory: attack_is_the_best_defense
- File: 1-dictionary_attack

**Note:** Ensure that you update the repository URL with your GitHub username or organization name when accessing the provided links.

Have fun exploring network security techniques and enhancing your understanding of vulnerabilities and countermeasures!
