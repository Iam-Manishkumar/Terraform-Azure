# ENVIRONMENT VARIABLES
# Define these secrets as environment variables

# ARM_CLIENT_ID
# ARM_CLIENT_SECRET
# ARM_SUBSCRIPTION_ID
# ARM_TENANT_ID

# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.

# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.

variable "disk_type" {
  description = "SKU of Managed Disks"
  type        = string
  default     = "Standard_LRS"
}

variable "location" {
  description = "The Azure DC location"
  type        = string
  default     = "East US"
}

variable "postfix" {
  description = "A postfix string to centrally mitigate resource name collisions"
  type        = string
  default     = "resource"
}

variable "private_ip" {
  description = "Static Private IP for the Internal NIC"
  type        = string
  default     = "10.0.17.4"
}

variable "subnet_prefix" {
  description = "Subnet range of IPs for the Virtual Network"
  type        = string
  default     = "10.0.17.0/24"
}

variable "user_name" {
  description = "Username to be provisioned into the vm"
  type        = string
  default     = "Admin123"
}

# Small Windows Server Image, available with Azure Free Account
variable "vm_image_publisher" {
  description = "Storage image reference Publisher from which the VM is created"
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "vm_image_offer" {
  description = "Storage image reference Offer from which the VM is created"
  type        = string
  default     = "WindowsServer"
}

variable "vm_image_sku" {
  description = "Storage image reference SKU from which the VM is created"
  type        = string
  default     = "2019-Datacenter-Core-smalldisk"
}

variable "vm_image_version" {
  description = "Storage image reference Version from which the VM is created"
  type        = string
  default     = "latest"
}

variable "vm_license_type" {
  description = "License Type from which the VM is created"
  type        = string
  default     = "Windows_Server"
}

variable "vm_size" {
  description = "Azure VM Size of the VM"
  type        = string
  default     = "Standard_B1s"
}
