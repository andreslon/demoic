output "public_ip" {
  value = "${azurerm_public_ip.la_pip.ip_address}"
}
