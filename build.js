const Metalsmith = require('metalsmith');
const concat = require('metalsmith-concat');
const rpad = require("underscore.string/rpad");
const _ = require("underscore");
const path = require("path");
const fs = require('fs');


// Default configuration
// Custom JSON configuration file can be merged into this with:
//   node build my_config.json
var config = {
  source:      path.join('.', 'source'),
  destination: path.join('.', 'build', 'zshrc'),
  groups: [
    'exports',
    'initializers',
    'functions',
    'widgets',
    'bindings',
    'aliases',
    'finalizers',
  ]
}

// Adds a filename comment to the beginning of the file contents
function commentFilename(options){
  return function (files, metalsmith, done) {

    var regex = /^(exports|initializers|functions|widgets|bindings|aliases|finalizers)/;

    setImmediate(done);

    Object.keys(files).forEach(function(file){
      if (regex.test(file)) {
        var data = files[file];
        var input = String(data.contents);

        var prefix = options.char.repeat(2);
        var name = path.basename(file, path.extname(file));

        var output = '';
        output += '# ' + prefix + ' ';
        output += name + ' ';
        output = rpad(output, 80, options.char);
        output += '\n\n' + input;

        data.contents = Buffer.from(output);
      }
    });

  };
}

if (process.argv.length > 3) throw new Error('ERROR: Invalid number of arguments (expected 0..1)');
if (process.argv[2] != null) _.extend(config, JSON.parse(fs.readFileSync(process.argv[2], 'utf8')));

var metalsmith = Metalsmith(__dirname);

// Source & destination
metalsmith.source(config.source);
metalsmith.destination(path.dirname(config.destination));
// Every single file gets a comment banner
metalsmith.use(commentFilename({ char: '-' }))
// Begin concatenation of files into their respective group files
for (var i = 0; i < config.groups.length; i++) { // TODO: Could probably use forEach
  var name = config.groups[i];
  metalsmith.use(concat({ files: path.join(name, '**', '*'), output: name + '.zsh' }))
}
  // // You may edit the order in which they are concatenated here:
  // .use(concat({ files: 'exports/**/*',      output: 'exports.zsh' }))
  // .use(concat({ files: 'initializers/**/*', output: 'initializers.zsh' }))
  // .use(concat({ files: 'functions/**/*',    output: 'functions.zsh' }))
  // .use(concat({ files: 'widgets/**/*',      output: 'widgets.zsh' }))
  // .use(concat({ files: 'bindings/**/*',     output: 'bindings.zsh' }))
  // .use(concat({ files: 'aliases/**/*',      output: 'aliases.zsh' }))
  // .use(concat({ files: 'finalizers/**/*',   output: 'finalizers.zsh' }))
// Every group file gets a comment banner
metalsmith.use(commentFilename({ char: '=' }))
// Concatenate all group files into final file
metalsmith.use(concat({ files: '*', output: path.basename(config.destination) }))
// Run the build
metalsmith.build(function(err, files) { if (err) { throw err; } });
