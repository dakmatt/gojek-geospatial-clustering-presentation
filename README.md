# Gojek X PyData SG

## Deploying the first python service in GOJEK: Geospatial clustering

### Setup

#### Installing pyenv for python

For Mac:
```
brew install pyenv
```

For Ubuntu, you need to clone the repo.
```
cd
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

Then, modify your environment variables.
```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/<.bash_profile/.zshrc>
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/<.bash_profile/.zshrc>
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/<.bash_profile/.zshrc>
```
Note for *Ubuntu*, modify your `~/.bashrc` instead of `~/.bash_profile`.

Lastly, restart your shell so the path changes take effect.
```
exec "$SHELL"
```
* Refer to [pyenv](https://github.com/pyenv/pyenv#installation) for more details
#### Setting up the environment

Install dependencies (python is preset to version 3):
```
make env
```

### To view presentation locally
```
make present
```
