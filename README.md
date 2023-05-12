# cirrus-cli-example

<https://github.com/cirruslabs/cirrus-cli/>

## Example Commands

## Basics

Validate `.cirrus.yml` file:

```sh
cirrus validate
```

Print output normally to console:

```sh
cirrus run -o simple
```

Pass a value into `cirrus` as an environment variable:

```sh
cirrus run -e env_parameter="cmd-line"
```

## SOPS

Decrypt `sops.env` to a temporary file and make it available only for the duration of the `cirrus` child process:

```sh
sops exec-file sops.env 'cirrus run -o simple -e env_parameter="cmd-level" --env-file {}'
```

Decrypt `sops.env` and extract a single value which gets passed to `cirrus` as an environment variable:

```sh
cirrus run -o simple -e env_parameter=$(sops -d --extract '["password"]' sops.env)
```
