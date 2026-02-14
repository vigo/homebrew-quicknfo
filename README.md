# homebrew-quicknfo

Homebrew tap for [QuickNFO](https://github.com/vigo/QuickNFO) — macOS
QuickLook extension for previewing `.nfo` files.

## Installation

```bash
brew tap vigo/quicknfo
brew install --cask vigo/quicknfo/quicknfo
```

After installation, launch **QuickNFO.app** once from `/Applications` to
register the QuickLook extensions. Then select any `.nfo` file in Finder and
press **Space** to preview.

## Uninstallation

```bash
brew uninstall --cask vigo/quicknfo/quicknfo
brew untap vigo/quicknfo
```

## Requirements

- **macOS 15.0** (Sequoia) or later

## Troubleshooting

QuickNFO is not signed with an Apple Developer ID. The cask runs `xattr -cr`
automatically after installation. If QuickLook previews are not working:

1. Open **System Settings → Privacy & Security**
2. Look for a message about QuickNFO being blocked and click **Open Anyway**
3. Or run manually: `xattr -cr /Applications/QuickNFO.app`

## License

See [QuickNFO](https://github.com/vigo/QuickNFO) for license details.
