const colors = {
  background: "#222",
  activeBackground: "#282828",
  elevatedBackground: "#333",
  text: "#ccc",
  mutedText: "#aaa",
  extraMutedText: "#666",
  red: "#ea3c65",
  lightGreen: "#d5f5d9",
  green: "#64d970",
  lightYellow: "#fff5d8",
  yellow: "#fedf7b",
  darkYellow: "#876c06",
  lightBlue: "#ccdefc",
  blue: "#3984f2",
  accent: "#ff732e",
  transparent: "#0000",
} as const;

const terminalColors = {
  black: "#1c1c1e",
  red: "#ff4245",
  green: "#30d158",
  yellow: "#ffd600",
  blue: "#0091ff",
  magenta: "#db34f2",
  cyan: "#3cd3fe",
  white: "#f2f2f7",
  brightBlack: "#000",
  brightRed: "#f00",
  brightGreen: "#0f0",
  brightYellow: "#ff0",
  brightBlue: "#00f",
  brightMagenta: "#f0f",
  brightCyan: "#0ff",
  brightWhite: "#fff",
} as const;

const syntaxColors = {
  accent: "#ff732e",
  red: "#ff6b68",
  orange: "#ff9f5b",
  green: "#83d288",
  blue: "#3984f2",
  lightBlue: "#99c7ff",
  purple: "#bf89ff",
  grey: "#666",
  lightGrey: "#aaa",
  white: "#ccc",
};

const terminal = {
  // Terminal
  "terminal.background": colors.background,
  "terminal.foreground": colors.text,
  "terminal.ansi.background": colors.background,
  "terminal.ansi.black": terminalColors.black,
  "terminal.ansi.red": terminalColors.red,
  "terminal.ansi.green": terminalColors.green,
  "terminal.ansi.yellow": terminalColors.yellow,
  "terminal.ansi.blue": terminalColors.blue,
  "terminal.ansi.magenta": terminalColors.magenta,
  "terminal.ansi.cyan": terminalColors.cyan,
  "terminal.ansi.white": terminalColors.white,
  "terminal.bright_foreground": colors.text,
  "terminal.ansi.bright_black": terminalColors.brightBlack,
  "terminal.ansi.bright_red": terminalColors.brightRed,
  "terminal.ansi.bright_green": terminalColors.brightGreen,
  "terminal.ansi.bright_yellow": terminalColors.brightYellow,
  "terminal.ansi.bright_blue": terminalColors.brightBlue,
  "terminal.ansi.bright_magenta": terminalColors.brightMagenta,
  "terminal.ansi.bright_cyan": terminalColors.brightCyan,
  "terminal.ansi.bright_white": terminalColors.brightWhite,
  "terminal.dim_foreground": colors.text,
  "terminal.ansi.dim_black": terminalColors.black,
  "terminal.ansi.dim_red": terminalColors.red,
  "terminal.ansi.dim_green": terminalColors.green,
  "terminal.ansi.dim_yellow": terminalColors.yellow,
  "terminal.ansi.dim_blue": terminalColors.blue,
  "terminal.ansi.dim_magenta": terminalColors.magenta,
  "terminal.ansi.dim_cyan": terminalColors.cyan,
  "terminal.ansi.dim_white": terminalColors.white,
};

const syntax = {
  attribute: { color: syntaxColors.green },
  boolean: { color: syntaxColors.accent },
  comment: { color: syntaxColors.grey },
  constant: { color: syntaxColors.lightBlue },
  constructor: { color: syntaxColors.orange },
  emphasis: { font_style: "italic" },
  "emphasis.strong": { font_weight: 700 },
  enum: { color: syntaxColors.orange },
  function: { color: syntaxColors.purple },
  keyword: { color: syntaxColors.red },
  label: { color: syntaxColors.lightBlue },
  link_text: { color: syntaxColors.accent },
  link_uri: { color: syntaxColors.blue },
  number: { color: syntaxColors.accent },
  operator: { color: syntaxColors.lightGrey },
  preproc: { color: syntaxColors.red },
  property: { color: syntaxColors.green },
  punctuation: { color: syntaxColors.grey },
  "punctuation.bracket": { color: syntaxColors.grey },
  "punctuation.delimiter": { color: syntaxColors.grey },
  "punctuation.list_marker": { color: syntaxColors.grey },
  string: { color: syntaxColors.orange },
  "string.escape": { color: syntaxColors.lightGrey },
  tag: { color: syntaxColors.red },
  "text.literal": { color: syntaxColors.white },
  title: { font_weight: 700 },
  type: { color: syntaxColors.orange },
  variable: { color: syntaxColors.white },
};

const theme = {
  // Accents
  accents: [colors.accent],

  // Background
  background: colors.background,
  "background.appearance": "opaque",

  // Border
  border: colors.elevatedBackground,
  "border.disabled": colors.elevatedBackground,
  "border.focused": colors.elevatedBackground,
  "border.selected": colors.elevatedBackground,
  "border.transparent": colors.background,
  "border.variant": colors.elevatedBackground,

  // Conflict
  conflict: colors.yellow,
  "conflict.background": colors.darkYellow,
  "conflict.border": colors.yellow,

  // Created
  created: colors.green,
  "created.background": colors.lightGreen,
  "created.border": colors.green,

  // Debugger
  "debugger.accent": colors.accent,

  // Deleted
  deleted: colors.red,
  "deleted.background": colors.red,
  "deleted.border": colors.red,

  // Drop target
  "drop_target.background": colors.elevatedBackground,

  // Editor
  "editor.active_line.background": colors.activeBackground,
  "editor.active_line_number": colors.text,
  "editor.active_wrap_guide": colors.text,
  "editor.background": colors.background,
  "editor.debugger_active_line.background": colors.elevatedBackground,
  "editor.document_highlight.bracket_background": colors.elevatedBackground,
  "editor.document_highlight.read_background": colors.elevatedBackground,
  "editor.document_highlight.write_background": colors.elevatedBackground,
  "editor.foreground": colors.text,
  "editor.gutter.background": colors.background,
  "editor.highlighted_line.background": colors.elevatedBackground,
  "editor.hover_line_number": colors.mutedText,
  "editor.line_number": colors.extraMutedText,
  "editor.indent_guide": colors.extraMutedText,
  "editor.indent_guide_active": colors.mutedText,
  "editor.invisible": colors.extraMutedText,
  "editor.subheader.background": colors.activeBackground,
  "editor.wrap_guide": colors.extraMutedText,

  // Element
  "element.active": colors.elevatedBackground,
  "element.background": colors.activeBackground,
  "element.disabled": colors.activeBackground,
  "element.hover": colors.elevatedBackground,
  "element.selected": colors.elevatedBackground,

  // Elevated surface
  "elevated_surface.background": colors.activeBackground,

  // Error
  error: colors.red,
  "error.background": colors.red,
  "error.border": colors.red,

  // Ghost element
  "ghost_element.active": colors.elevatedBackground,
  "ghost_element.background": colors.transparent,
  "ghost_element.disabled": colors.transparent,
  "ghost_element.hover": colors.activeBackground,
  "ghost_element.selected": colors.elevatedBackground,

  // Hidden
  hidden: colors.extraMutedText,
  "hidden.background": colors.background,
  "hidden.border": colors.elevatedBackground,

  // Hint
  hint: colors.extraMutedText,
  "hint.background": colors.background,
  "hint.border": colors.elevatedBackground,

  // Icon
  icon: colors.text,
  "icon.accent": colors.accent,
  "icon.disabled": colors.extraMutedText,
  "icon.muted": colors.mutedText,
  "icon.placeholder": colors.mutedText,

  // Ignored
  ignored: colors.extraMutedText,
  "ignored.background": colors.background,
  "ignored.border": colors.elevatedBackground,

  // Info
  info: colors.blue,
  "info.background": colors.lightBlue,
  "info.border": colors.blue,

  // Link text
  "link_text.hover": colors.accent,

  // Minimap
  "minimap.thumb.active_background": colors.elevatedBackground,
  "minimap.thumb.background": colors.activeBackground,
  "minimap.thumb.border": colors.elevatedBackground,
  "minimap.thumb.hover_background": colors.elevatedBackground,

  // Modified
  modified: colors.yellow,
  "modified.background": colors.darkYellow,
  "modified.border": colors.yellow,

  // Pane
  "pane.focused_border": colors.elevatedBackground,

  // Pane group
  "pane_group.border": colors.elevatedBackground,

  // Panel
  "panel.background": colors.background,
  "panel.focused_border": colors.elevatedBackground,
  "panel.indent_guide": colors.extraMutedText,
  "panel.indent_guide_active": colors.activeBackground,
  "panel.indent_guide_hover": colors.activeBackground,

  // Players
  players: [
    {
      background: colors.elevatedBackground,
      selection: colors.elevatedBackground,
      cursor: colors.accent,
    },
  ],

  // Predictive
  predictive: colors.extraMutedText,
  "predictive.background": colors.background,
  "predictive.border": colors.elevatedBackground,

  // Renamed
  renamed: colors.blue,
  "renamed.background": colors.lightBlue,
  "renamed.border": colors.blue,

  // Scrollbar
  "scrollbar.thumb.active_background": colors.elevatedBackground,
  "scrollbar.thumb.background": colors.elevatedBackground,
  "scrollbar.thumb.border": colors.elevatedBackground,
  "scrollbar.thumb.hover_background": colors.elevatedBackground,
  "scrollbar.track.background": colors.background,
  "scrollbar.track.border": colors.elevatedBackground,

  // Search
  "search.match_background": colors.activeBackground,

  // Status bar
  "status_bar.background": colors.background,

  // Success
  success: colors.green,
  "success.background": colors.lightGreen,
  "success.border": colors.green,

  // Surface
  "surface.background": colors.background,

  // Tab
  "tab.active_background": colors.activeBackground,
  "tab.inactive_background": colors.background,

  // Tab bar
  "tab_bar.background": colors.background,

  // Terminal
  ...terminal,

  // Text
  text: colors.text,
  "text.accent": colors.accent,
  "text.disabled": colors.extraMutedText,
  "text.muted": colors.mutedText,
  "text.placeholder": colors.mutedText,

  // Title bar
  "title_bar.background": colors.background,
  "title_bar.inactive_background": colors.background,

  // Toolbar
  "toolbar.background": colors.activeBackground,

  // Unreachable
  unreachable: colors.extraMutedText,
  "unreachable.background": colors.background,
  "unreachable.border": colors.elevatedBackground,

  // Version control
  "version_control.added": colors.green,
  "version_control.deleted": colors.red,
  "version_control.ignored": colors.extraMutedText,
  "version_control.renamed": colors.blue,
  "version_control.conflict": colors.yellow,
  "version_control.modified": colors.yellow,
  "version_control.conflict.divider_background": colors.activeBackground,
  "version_control.conflict.ours_background": colors.lightGreen,
  "version_control.conflict.ours_marker_background": colors.green,
  "version_control.conflict.theirs_background": colors.lightYellow,
  "version_control.conflict.theirs_marker_background": colors.yellow,

  // Warning
  warning: colors.yellow,
  "warning.background": colors.darkYellow,
  "warning.border": colors.yellow,

  syntax: syntax,
};

const zerolimits = {
  $schema: "https://zed.dev/schema/themes/v0.2.0.json",
  name: "ZeroLimits",
  author: "noClaps",
  themes: [{ name: "ZeroLimits", appearance: "dark", style: theme }],
};
// @ts-ignore
Bun.write(
  // @ts-ignore
  `${import.meta.dir}/../themes/zerolimits.json`,
  JSON.stringify(zerolimits),
);
