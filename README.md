# cl-cwd
###### Portable current-working-directory lookups and changes

This library aims to be a portable (cross-implementation and cross-platform) implementation of three things:

- show the current-working-directory
- change the current-working-directory
- temporarily change the current working directory for a few operations, then change back

### Usage

Once you've got it loaded you have access to three primitives:

#### `cl-cwd:get-cwd`

- Takes no arguments.
- Returns the absolute `pathname` representing the current-working directory in a platform-independand way.

#### `cl-cwd:cwd`

- Takes one argument; the directory to change to (this can be given in relative, or absolute `pathname` or `string` formats)
- Returns the new current-working-directory
- Errors if it can't `cd` into the target for some reason (for example if it doesn't exist, or if you have insufficient permissions)

#### `cl-cwd:with-cwd`

- Takes a directory (in the same formats as `cl-cwd:cwd`), and a body argument
- Runs the body forms in the context of the specified directory, then returns to the original directory. `unwind-protect` is present, so it'll return in case of errors too.
