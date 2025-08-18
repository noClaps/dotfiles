const chevrons = [
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/chevron-up.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/chevron-down.svg",
];

await Promise.all(chevrons.map((f) => fetch(f)))
  .then((responses) => Promise.all(responses.map((r) => r.text())))
  .then((svgs) => {
    for (const i in chevrons) {
      const filename = chevrons[i].split("/").at(-1);
      console.log("Writing", filename);
      // @ts-ignore
      Bun.write(
        // @ts-ignore
        `${import.meta.dir}/../icons/chevron/${filename}`,
        svgs[i].replaceAll(`stroke="currentColor"`, `stroke="#aaa"`),
      );
    }
  });

const directories = [
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/folder.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/folder-open.svg",
];

await Promise.all(directories.map((f) => fetch(f)))
  .then((responses) => Promise.all(responses.map((r) => r.text())))
  .then((svgs) => {
    for (const i in directories) {
      const filename = directories[i].split("/").at(-1);
      console.log("Writing", filename);
      // @ts-ignore
      Bun.write(
        // @ts-ignore
        `${import.meta.dir}/../icons/directory/${filename}`,
        svgs[i].replaceAll(`stroke="currentColor"`, `stroke="#aaa"`),
      );
    }
  });

const files = [
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/astro.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/astro-config.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/bun.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/c.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/changelog.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/container.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/copyright.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/cpp.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/csharp.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/css.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/docker.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/favicon.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/file-text.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/git.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/go.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/go-mod.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/h.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/haskell.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/html.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/image.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/java.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/javascript.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/json.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/library.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/makefile.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/markdown.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/nodejs.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/ocaml.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/php.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/python.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/react.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/react_ts.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/readme.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/rss.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/ruby.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/rust.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/scala.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/scheme.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/scroll.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/shield.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/square-terminal.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/svg.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/swift.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/text.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/toml.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/tsconfig.svg",
  "https://github.com/lucide-icons/lucide/raw/refs/heads/main/icons/type.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/typescript.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/vue.svg",
  "https://github.com/material-extensions/vscode-material-icon-theme/raw/refs/heads/main/icons/yaml.svg",
];

await Promise.all(files.map((f) => fetch(f)))
  .then((responses) => Promise.all(responses.map((r) => r.text())))
  .then((svgs) => {
    for (const i in files) {
      const filename = files[i].split("/").at(-1);
      console.log("Writing", filename);
      // @ts-ignore
      Bun.write(
        // @ts-ignore
        `${import.meta.dir}/../icons/file/${filename}`,
        svgs[i].replaceAll(`stroke="currentColor"`, `stroke="#ff732e"`),
      );
    }
  });

export {};
