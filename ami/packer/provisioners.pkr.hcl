build {

  sources = ["source.amazon-ebs.ami_elk"]
  
  provisioner "ansible" {
    playbook_file = "./ansible/playbook.yml"
    user = "ubuntu"
    ansible_env_vars = [ 
      "ANSIBLE_HOST_KEY_CHECKING=False"
    ]

  }

}