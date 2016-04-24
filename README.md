#QR Codes

To generate QR codes from artist names, for use during installations.

### Usage

Get a recent-ish Ruby version installed, and then do:

```
bundle install
ruby make_qr_codes.rb artists.txt
```

where `artists.txt` is a text file containing the last part of the url for
the artists (e.g. `steve_g`), one per line, url-safe characters only. The
output will be in the same directory, one `.png` file per artist.
