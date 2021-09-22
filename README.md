[![CircleCI](https://circleci.com/gh/GSA/datagov-deploy-wordpress.svg?style=svg)](https://circleci.com/gh/GSA/datagov-deploy-wordpress)


# datagov-deploy-wordpress

Ansible role to deploy [WordPress](https://www.data.gov/) on the Data.gov
platform. This project is part of
[GSA/datagov-deploy](https://github.com/GSA/datagov-deploy).


## Usage

This role assumes you've already installed git, nginx, php, php-fpm, and
composer. Add this role and its dependencies to your requirements.yml file.

```yaml
---
- src: https://github.com/GSA/datagov-deploy-wordpress
  version: v1.0.0
  name: gsa.datagov-deploy-wordpress
- src: geerlingguy.composer
- src: geerlingguy.git
- src: geerlingguy.php
- src: geerlingguy.php-versions
- src: nginxinc.nginx

```

Install with ansible-galaxy.

    $ ansible-galaxy install -r requirements.yml

Example playbook.

```yaml
---
- name: Deploy wordpress
  hosts: all
  roles:
    - role: geerlingguy.git
    - role: geerlingguy.php-versions
    - role: geerlingguy.php
    - role: geerlingguy.php-mysql
    - role: geerlingguy.php-memcached
    - role: nginxinc.nginx
    - role: software/common/php-fixes
    - role: geerlingguy.composer
    - role: gsa.datagov-deploy-wordpress
      datagov_team_email: team@example.com
```


### Variables

#### `datagov_team_email` **required**

Email address for the Data.gov team. Reports are sent to this address.


## Development

### Prerequisites

- [Docker](https://www.docker.com/)
- [Python](https://www.python.org/) 3.6+
- [pipenv](https://docs.pipenv.org/en/latest/)


### Setup

Install dependencies.

    $ pipenv install --dev

Run the tests.

    $ pipenv run molecule test --all

For more information on how to use
[Molecule](https://molecule.readthedocs.io/en/latest/) for development, see [our
wiki](https://github.com/GSA/datagov-deploy/wiki/Developing-Ansible-roles-with-Molecule).


## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.


## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in
[CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright
> and related rights in the work worldwide are waived through the [CC0 1.0
> Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication.
> By submitting a pull request, you are agreeing to comply with this waiver of
> copyright interest.
