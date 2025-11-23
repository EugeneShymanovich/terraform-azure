output "vm_public_ip" {
  description = "External IP of the virtual machine"
  value       = azurerm_public_ip.pip.ip_address
}
