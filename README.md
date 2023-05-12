# cirrus-example

## Workflow

```sh
# Decrypt `sops.env`
sops -d sops.env > .env
# Run cirrus in dirty mode so rsync (and .gitignore) is not used.
cirrus run -o simple -e env_parameter=hello --dirty
# Safely remove .env from disk
shred -z --remove .env
```

## Example commands

Validate `.cirrus.yml` file:

```sh
cirrus validate
```

Print output normally to console:

```sh
cirrus run -o simple
```

Decrypt `sops.env` and extract a single value which is passed into cirrus as an environment variable:

```sh
cirrus run -o simple -e password=$(sops -d --extract '["password"]' sops.env)
```
