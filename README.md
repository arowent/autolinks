# Autolinks

## Installation


```sh
git clone https://github.com/arowent/autolinks.git
```

## How It Works

When you want to create a symlink to a directory, specify two arguments to the python script:
`-k` - directory from where you want to create a symlink
`-s` - directory where you want to add a symlink

```sh
cd ~/<autolinks repository>/
python autolinks.py -s <source dir> -r <receive dir>
```
Example

```sh
python autolinks.py -s ~/<user>/documents -r ~/<user>/books
```

### Windows

Want to contribute? Great!

> Warning: If you are working in `Windows`, run the *cmd* as an administrator.

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!