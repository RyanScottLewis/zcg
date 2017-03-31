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
      my_export.zsh
      ...
    initializers/
      my_initializer.zsh
      ...
    functions/
      my_function.zsh
      ...
    widgets/
      my_widget.zsh
      ...
    bindings/
      my_binding.zsh
      ...
    aliases/
      my_alias.zsh
      ...
    finalizers/
      my_finalizer.zsh
      ...
```

Now generate the configuration file to `build/zcg.conf`:

```sh
node build
```

The files are concatenated in the order listed above.  
All other files are copied directly to the build directory.

### Configure

You can configure the build within the `config.json` file.

| Key           | Description    |
|---------------|----------------|
| `destination` | The build path |
