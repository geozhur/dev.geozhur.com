ansible-vaults-encrypt:
	ansible-vault encrypt ansible/group_vars/all/vault.yml

ansible-vaults-decrypt:
	ansible-vault decrypt ansible/group_vars/all/vault.yml

ansible-vaults-edit:
    ansible-vault edit ansible/group_vars/all/vault.yml