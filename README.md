# Terraform-vnet-deployment

This project builds an Azure networking lab using Terraform. The goal was to show that I can design cloud networks, automate deployments, and verify connectivity across isolated environments. Deployments were made using modules and a service principal with RBAC "Contributor" role for best practices.



## Azure lab environment using Terraform:

- One resource group (vnet-rg)
- Two virtual networks (peer1-vnet, peer2-vnet)
- One subnet in each VNet (peer1-sn, peer2-sn)
- One Linux VM in each subnet (peer1-vm, peer2-vm)
- NICs and OS disks for each VM (peer1-nic, peer2-nic)
- Bidirectional VNet peering (peer1to2, peer2to1)



## Modules

<img width="1365" height="90" alt="module files" src="https://github.com/user-attachments/assets/990c3d89-349e-45a4-aa5b-069649ac7b2d" />

<img width="551" height="67" alt="modules" src="https://github.com/user-attachments/assets/ba8b5a6c-c70a-44d1-9d09-cc96a74fbf9b" />



This screenshot shows the modules and configuration files used to organize deployments.




## Virtual network

<img width="942" height="380" alt="Terraform vnet plan" src="https://github.com/user-attachments/assets/2d0623a0-7e83-46c7-be3d-cb6f24dd0543" />



This screenshot shows the Terraform plan output right before deployment. It lists every resource that will be created — two virtual networks, two subnets, two network interfaces, two virtual machines, and one resource group. This step helps validate that your configuration is ready for deployment.

 

 <img width="850" height="161" alt="Terraform vnet confirm" src="https://github.com/user-attachments/assets/9dd562b2-68dd-44af-a169-f90862acbdd2" />



 Confirming deployment after running "terraform apply" command



<img width="1748" height="205" alt="terraform vnet output" src="https://github.com/user-attachments/assets/2b3b688e-0534-4b29-a162-1f46daed1198" />



 This screenshot shows the final output after the deployment completed. Each line lists the full Azure resource ID for every component created — VNets, subnets, NICs, and VMs. It’s Terraform’s way of confirming that all resources exist and are properly linked inside Azure. In short, this proves the infrastructure was successfully built and everything is connected exactly as planned. 





## Virtual network peering


Here is terraform creating two vnet peerings after running "terraform apply" command — one from peer1-vnet to peer2-vnet and another in the opposite direction. Each line shows the progress as Azure builds the connections. The message, “Apply complete! Resources: 2 added,” confirms both peerings were successfully created, linking the two networks so they can communicate seamlessly.



## All resources deployed in the portal including peerings

<img width="1615" height="580" alt="Terraform vnet rg deployed" src="https://github.com/user-attachments/assets/2c5d7a09-7087-461f-891f-a0ec02e7c40c" />

<img width="1491" height="791" alt="Terraform vnet rs deployed" src="https://github.com/user-attachments/assets/02ec17ea-1c44-46b9-933c-cbc25d139c27" />


<img width="1607" height="550" alt="Terraform vnet peering1" src="https://github.com/user-attachments/assets/f3d988d2-1610-4e5d-acac-b25398fc05ee" />

<img width="1607" height="567" alt="Terraform vnet peering2" src="https://github.com/user-attachments/assets/0cca87b5-2900-42c0-ab00-ff5dea6c7c66" />

#

### What I Built

**Resource Group:** 
- vnet-rg

**Virtual Networks:**

- peer1-vnet
- peer2-vnet

**Subnets:**

- peer1-sn
- peer2-sn

**Network Interfaces:**

- peer1-nic
- peer2-nic

**Virtual Machines:**

- peer1-vm
- peer2-vm

**VNet Peerings:**

peer1to2
peer2to1



## Resources being destroyed

<img width="842" height="52" alt="terraform destroy" src="https://github.com/user-attachments/assets/27199c99-231c-4373-a158-ac551599658d" />
