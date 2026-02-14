# personal-log
A command-line tool to jot things down. Use it for notes, journaling, anything you'd use a plain text file for.

## Note
This project was built and tested on Arch Linux, so your mileage may vary on other platforms. It should work on any Unix-like system with dependencies listed in the installation section, but I haven't tested it on anything else. You might need to manually install the scripts and set the `PERSONAL_LOG` environment variable if you're not on Arch Linux.

## Installation

#### Arch Linux

Clone the repo and install the package using `makepkg`:

```bash
git clone https://github.com/DanielWeiner/personal-log.git
cd personal-log
makepkg -si .
```

#### Other distros
Ensure the following dependencies are installed:

- [less](https://www.gnu.org/software/less/)
- [perl](https://www.perl.org/)
- [vim](https://www.vim.org/)

Then clone the repo an install the scripts using the provided `Makefile`:
```
git clone https://github.com/DanielWeiner/personal-log.git
cd personal-log
make install
```

## Usage
### Adding a log entry
```bash
personal-log [optional-text]
```

This opens up an instance of `vim` in easy (evim) mode with the `optional-text` prefilled for convenience. Type in the rest of your log, and then hit `Ctrl + Q` to exit and save or discard. The log is saved in a file specified by the `PERSONAL_LOG` environment variable, which defaults to `~/Documents/personal-log.txt` if not set. Each entry is automatically prefixed with a timestamp; additionally, the first entry of each day is prefixed with the date.

### Searching through logs
```bash
searchlog [search-term]
```

This runs a simple `grep` against the personal log file. No bells and whistles. You may also append `grep` arguments to the command.

### Reading logs
```bash
readlog
```

This opens the personal log file in `less`, scrolled to the end. You may also append `less` arguments to the command.

## Uninstallation
To uninstall, run the following command:
```bash
personal-log --uninstall
```

## Disclaimer

#### **personal-log**: A command-line tool to jot things down.
Copyright (C) 2026  Daniel Weiner

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
