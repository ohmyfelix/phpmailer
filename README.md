# PHPMAILER

Dump emails sent via PHP native function `mail()`.

<p align=center>
  <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
  <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

## Install

Download this simple script and place to your path.

```
curl -o /usr/local/bin/phpmailer https://raw.githubusercontent.com/dockette/phpmailer/master/phpmailer
chmod +x /usr/local/bin/phpmailer
```

## Configuration

Default path for storing emails is `/var/log/mail`, but you can change it by environment variable `PHPMAILER_PATH`.

### Environment

```
export PHPMAILER_PATH=/srv
```

### PHP

```
; Mailer
sendmail_path = /usr/local/bin/phpmailer
```

### PHP-FPM

```
php_admin_value[sendmail_path] = /usr/local/bin/phpmailer
```

## Checks

Run `make test` to validate PHP syntax and verify that the script writes a captured `.eml` file to `PHPMAILER_PATH`.

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
