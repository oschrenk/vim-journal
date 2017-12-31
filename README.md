# TASKS

![example](https://raw.githubusercontent.com/irrationalistic/atom-tasks/master/images/tasks_example.png)

Enhances capabilities and formatting for `.md` files. Allows you to easily add, complete, and archive your tasks.

Adjust the settings to match your ideal style. Change all the markers to '-' to match taskpaper.

Any line that ends with `:` will be considered a header (like `My Things:`)

Add tags to tasks by starting them with an `@`, such as `@important` or setting a value like `@due(tuesday)`.

This uses utf characters, so it is still valid as a plain text document.

## Installation

### VimPlug
Place this in your `.vimrc`:

    Plug 'oschrenk/vim-tasks'

... then run the following in Vim:

    :source %
    :PlugInstall

## Settings Defaults

```
let g:TasksMarkerBase = '☐'
let g:TasksMarkerDone = '✔'
let g:TasksMarkerCancelled = '✘'
let g:TasksDateFormat = '%Y-%m-%d %H:%M'
let g:TasksAttributeMarker = '@'
let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'
let g:TasksProjectMarker = ':'
```

Run `:help Tasks` to view the full documentation.

## Preset Bindings
* `<leader> n` - new task below
* `<leader> N` - new task above
* `<leader> d` - toggle current task complete
* `<leader> x` - toggle current task cancelled
* `<leader> a` - send completed tasks to the archive
