# Project Single Sign On

Over the past months, Onestein has sponsored the development of a set of
Ansible playbooks to configure Single Sign On (SSO) for several popular open
source applications.

Currently it contains playbooks for the following applications:

- Bitwarden
- CMDBuild is being worked on
- Jenkins
- Gitlab
- Keycloak (not SSO, but identity provider)
- Nextcloud
- Odoo 14
- Odoo 15
- Xwiki
- Zabbix

These Ansible playbooks do not use roles or other advanced stuff.
They are as 'flat' as possible so that a sysadmin can easily read how they work and what they do.
This way it should be relatively easy to adapt they playbooks for your own organization.

If you like to add your work to this repo, please do so and send us a pull request.

We hope that in this way a large set of open source applications can get SSO functionality
and that this helps to grow the usage of such applications.

If you run into errors, please open an issue.

# Documentation

All applications should have their own [wiki page](https://github.com/onesteinbv/Project_Single_Sign_On/wiki) describing possible pitfalls.

This is work in progress. We hope you will find it useful.
If you like it, tell others. If you don't like it, tell us.

Jeroen "Kwoot" Baten
