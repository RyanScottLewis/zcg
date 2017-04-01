# Zsh Configuration Generator

Combine all of your ZSH configurations into a single portable file.

## Install

```sh
git clone https://github.com/RyanScottLewis/zcg
cd zcg
npm install
```

## Usage

Place your configuration files into their respective directories under the `source/` directory:

```
PROJECT_NAME/
  source/
    exports/
    initializers/
    functions/
    widgets/
    bindings/
    aliases/
    finalizers/
```

Now generate the configuration file to `build/zcg.conf`:

```sh
node build
```

The files are concatenated in the order listed above.  
All other files are copied directly to the build directory.

### Configure

You can configure the build within the `config.json` file.

| Key           | Description                      | Default     |
|---------------|----------------------------------|-------------|
| `destination` | The build path                   | `./build`   |
| `filename`    | The concatenated build file name | `./zcg.zsh` |
