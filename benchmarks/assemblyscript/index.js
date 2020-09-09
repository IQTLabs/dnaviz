const fs = require("fs");
const compiled = new WebAssembly.Module(
  fs.readFileSync(__dirname + "/build/optimized.wasm")
);
const memory = new WebAssembly.Memory({ initial: 4900 })
const imports = {
  env: {
    memory,
    abort(_msg, _file, line, column) {
      console.error("abort called at index.ts:" + line + ":" + column);
    },
  },
};
Object.defineProperty(module, "exports", {
  get: () => new WebAssembly.Instance(compiled, imports).exports,
});
