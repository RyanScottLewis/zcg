const Metalsmith = require('metalsmith');
const concat = require('metalsmith-concat');
const rpad = require("underscore.string/rpad");
const path = require("path");

const defaults = {
  destination: './build',
  filename: 'zcg.zsh'
}
// TODO: Check if config file exists
const config = Object.assign(defaults, require('./config.json'));

Metalsmith(__dirname)
  .source('./source')
  .destination(defaults.destination)
  // .clean(false)
  .use(commentFilename({
    char: '-'
  }))
  .use(concat({
    files:  'exports/**/*',
    output: 'exports.zsh'
  }))
  .use(concat({
    files:  'initializers/**/*',
    output: 'initializers.zsh'
  }))
  .use(concat({
    files:  'functions/**/*',
    output: 'functions.zsh'
  }))
  .use(concat({
    files:  'widgets/**/*',
    output: 'widgets.zsh'
  }))
  .use(concat({
    files:  'bindings/**/*',
    output: 'bindings.zsh'
  }))
  .use(concat({
    files:  'aliases/**/*',
    output: 'aliases.zsh'
  }))
  .use(concat({
    files:  'finalizers/**/*',
    output: 'finalizers.zsh'
  }))
  .use(commentFilename({
    char: '='
  }))
  .use(concat({
    files:  '*',
    output: config.filename
  }))
  .build(function(err, files) {
    if (err) { throw err; }
  });

// Add a filename comment to the beginning of the file contents
function commentFilename(options){
  return function (files, metalsmith, done) {

    setImmediate(done);

    Object.keys(files).forEach(function(file){
      var data = files[file];
      var input = String(data.contents);

      var prefix = options.char.repeat(2);
      var name = path.basename(file, path.extname(file));

      var output = '';
      output += '# ' + prefix + ' ';
      output += name + ' ';
      output = rpad(output, 100, options.char);
      output += '\n' + input;

      data.contents = Buffer.from(output);
    });

  };
}
