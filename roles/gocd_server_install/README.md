Role Name
=========

This role can be used for go-server installation. 

Requirements
------------

NA

Role Variables
--------------

No variables have been defined for this role. Ports for go servers are default.

Dependencies
------------

NA

Example Playbook
----------------
We need to modify the main.yml in public folder and put the go-server role name as below:

---

- hosts:
    - lab
  roles:
    - gocd_server_install

Once updated, we can run the role as following:

ansible-playbook -i hosts main.yml

License
-------

BSD

Author Information
------------------

biharimukund@gmail.com
