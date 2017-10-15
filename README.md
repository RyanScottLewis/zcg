# Zsh Configuration Generator

Combine all of your ZSH configurations into a single portable file.

## Install

```sh
git clone https://github.com/RyanScottLewis/zcg
cd zcg
npm install
```

## Usage

Place your ZSH configuration files into their respective directories under the `source/` directory:

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

## Configuration

You can configure the build within the `build.js` file.

### Output File

| Key           | Description                                    | Default         |
|---------------|------------------------------------------------|-----------------|
| `source`      | The directory containing the group directories | `./source`      |
| `destination` | The output file path                           | `./build/zshrc` |
| `groups`      | The list of group names                        | See below       |

The group names listed in the Usage section is the default. The names and order of these groups are arbitrary.

In the order listed, each file within the groups directory (within the `source` directory) is concatenated together to
generate the final file.
