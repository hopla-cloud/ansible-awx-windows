Ansible platform (AWX) Windows hopla.cloud
=========

Hopla.cloud roles for awx to manage windows servers

Requirements
------------

- AWX 9.1.0.0
- Ansible 2.8.5

Role Variables
--------------

System variables
- private_key: "RSA PRIVATE KEY"
- mikrotik_admin_password: "password"
- instance_name: "name"

Active Directory variables
- ad_domain_name: "domain.ext"
- ad_language: "EN"
- ad_netbios_name: "NAME"
- ad_safe_password: "password"
- administrator_password: "password"

<<<<<<< HEAD
=======
Memcached variables
- session_save_handler: "files"
- session_save_path: "/var/lib/php/sessions"
>>>>>>> 977e6fac3360e3871465a7d54eb9d271c94bf133

Dependencies
------------

- Openstack public cloud
- Openstack inventory


License
-------

GPLv3

Author Information
------------------

Joffrey Skandera for [hopla.cloud](https://hopla.cloud)
