Git Workspace Extension
=

Track repositories as collections for advanced handling
-

`git-workspace` adds configuration settings to your global Git configuration

* How do I use this extension?

The command's syntax is kept as simple as possible, exposing a few properties
through OOP-style getters and setters along with appropriate verbs to act on
those properties (much like OOP-style methods).

Note that the workspace name parameter (denoted below as `WORKSPACE`) is
optional for all commands exposed by `git-workspace`. When `WORKSPACE` is
omitted from the command line, it resolves to `default`.

Use

```
git workspace add [WORKSPACE]
```
to create a new default workspace `WORKSPACE` (you'll need to add your own
settings after creation!).

Use

```
git workspace [WORKSPACE] root [get|set]
```
to get or set the root directory associated with `WORKSPACE`. For the purposes
of `git-workspace`, all Git repositories under the workspace's root directory,
are considered to belong to the workspace.

Use
```
git workspace [WORKSPACE] cache [get|set]
```
to get or set the location of the cache file associated with `WORKSPACE`. This
file is used to list all repositories which belong to the workspace.

Use
```
git workspace [WORKSPACE] cache update
```
to regenerate the cache file associated with `WORKSPACE`.

* How does this plugin interact with other Git commands/extensions?

This plugin is intended for use as a `git` command in accordance with its
custom command shell completion capabilities, but it does not forward to other
`git` commands.

* What's on the roadmap?

The following:
* Makefile support (e.g., to enable build-time configuration of script-internal
variables)
* * I _may_ go with Meson support for easier maintainability, but that seems
hard to justify for such a small project
* documented example use cases
