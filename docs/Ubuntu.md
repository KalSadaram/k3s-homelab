# How to install Ubuntu 20.04 LTS (Focal Fossa) Server

In this document we will perform Ubuntu 20.04 LTS (Focal Fossa) Server installation. I have used [VirtualBox](https://www.virtualbox.org/) as part of my learning and documented the same.

## Prerequisite
* [Ubuntu 20.04 LTS Focal Fossa ISO](https://cloud-images.ubuntu.com/focal/current/)

## Steps to Install Ubuntu 20.04 LTS Focal Fossa

I have allocated 4 GB ram and dynamic storage allocation, booted the machine with ISO downloaded. Following are screenshots step by step of installation

### Step 1 - Select Language

![Language Selection](./docs/img/ucoi/ucoi__01.png)

### Step 2 - Start Installer

I choose to update the new installer and continue

![Select Installer](./docs/img/ucoi/ucoi__02.png)

### Step 3 - Keyboard selection

![Select Keyboard](./docs/img/ucoi/ucoi__03.png)

### Step 4 - Select your network

![Network selection](./docs/img/ucoi/ucoi__04.png)

### Step 5 - Skip proxy unless you are using a proxy

![Proxy](./docs/img/ucoi/ucoi__05.png)

### Step 6 - Configure Mirror

![Mirror](./docs/img/ucoi/ucoi__06.png)

### Step 7 - Select Storage

![Storage](./docs/img/ucoi/ucoi__07.png)

### Step 8 - Confirm storage summary

![Storage](./docs/img/ucoi/ucoi__08.png)

### Step 9 - Confirm storage configuration

![Storage](./docs/img/ucoi/ucoi__09.png)

### Step 10 - Setup Profile

![Profile](./docs/img/ucoi/ucoi__10.png)

### Step 11 - Import Github SSH identify

![Github](./docs/img/ucoi/ucoi__11.png)

### Step 12 - Confirm SSH

![Confirm SSH](./docs/img/ucoi/ucoi__12.png)

### Step 13 - Do not select any packages

This is an important step, do not use microk8s or any other add-ons

![Microk8s](./docs/img/ucoi/ucoi__13.png)

### Step 14 - Rebooot

![Reboot](./docs/img/ucoi/ucoi__14.png)

End of installation.