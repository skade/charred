# Charred

An experimental campfire client in 35 lines. Needs TMUX. Splits your current pane. Kills your current window on exit.

## Installation

```
gem install charred
```

## Usage

```
charred <subdomain> <token>
```

Type ahead. Quit with "/exit".

## How it works

`charred` consists of 3 binaries: `charred`, `charred-input` and `charred-messages`. Each of those take the same argument list.

* `charred-messages` prints messages from a campfire room. It also displays them in your current tmux client.
* `charred-input` prints a simple line that lets you post messages to a campfire room.
* `charred` splits your current tmux pane vertically: 1 line at the bottom running `charred-input`. It then replaces itself by `charred-messages`.

## TODO

* Allow user to choose a room.
* Actually handles all messages

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
