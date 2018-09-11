resource "azurerm_public_ip" "la_pip" {
  name                         = "LA-Terraform-PIP"
  location                     = "${var.location}"
  resource_group_name          = "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation = "static"

  tags {
    group = "DevOpsTeam"
  }
}

resource "azurerm_network_interface" "public_nic" {
  name                      = "LA-Terraform-Web"
  location                  = "${var.location}"
  resource_group_name       = "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_web.id}"

  ip_configuration {
    name                          = "LA-Terraform-WebPrivate"
    subnet_id                     = "${azurerm_subnet.la_subnet_1.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = "${azurerm_public_ip.la_pip.id}"
  }

  tags {
    group = "DevOpsTeam"
  }
}

