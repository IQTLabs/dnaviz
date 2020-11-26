const fc = require('fast-check');

module.exports = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  { minLength: 1, maxLength: 10000 },
);
