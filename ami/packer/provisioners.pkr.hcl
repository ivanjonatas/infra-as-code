build {

  sources = ["source.amazon-ebs.ami_elk"]  
  provisioner "ansible" {
    playbook_file = "./ansible/stack-elk.yml"
    user = "ubuntu"
    ansible_env_vars = [ 
      "ANSIBLE_HOST_KEY_CHECKING=False"
    ]

  }
}

build {

  sources = ["source.amazon-ebs.metricbeat"]  
  provisioner "ansible" {
    playbook_file = "./ansible/metricbeat.yml"
    user = "ubuntu"
    ansible_env_vars = [ 
      "ANSIBLE_HOST_KEY_CHECKING=False"
    ]

  }
}