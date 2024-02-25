# nmap
[![Build Status](http://img.shields.io/travis/mohayonao/nmap.svg?style=flat-square)](https://travis-ci.org/mohayonao/nmap)
[![NPM Version](http://img.shields.io/npm/v/nmap.svg?style=flat-square)](https://www.npmjs.org/package/nmap)
[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://mohayonao.mit-license.org/)

> (n, map) => Array.from({ length: n }, map)

## Installation

```
npm install nmap
```

## API

- `nmap(n: length, map: function): any[]`

## Examples

```js
const nmap = require("nmap");

nmap(4, () => 0);
// → [ 0, 0, 0, 0 ]

nmap(4, i => i);
// → [ 0, 1, 2, 3 ];
```

## License

MIT
