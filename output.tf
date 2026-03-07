output "public_ip" {
  description = "Public IP of the web server"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_private_key" {
  description = "SSH private key used to access the VM"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}