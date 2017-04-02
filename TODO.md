# TODO

* Use a `library/` directory and symlink to source
  * Maybe copy so they are more modifiable by end users, then if it is disabled, it'll say
    "Hey you made changes, here's the diff, are you sure?"
* External sources
  * A Git repo holding only the contents of `source/` can me cloned and used as a source
  * Maybe `source/`
* Command line executable
  ```sh
  zcg list # List all enabled plugins and files
  zcg enable plugin # Enable all of a plugin's files
  zcg enable plugin/initializers # Enable all of a plugin's initializer files
  zcg enable plugin/initializers/foo # Enable a single plugin file
  zcg disable plugin # Disable all of a plugin's files
  zcg build # Build the project
  zcg help # Help
  zcg --help # Help
  zcg help list # Help for list command
  zcg list --help # Help for list command
  ```
