# Hide CastBar

Hides the default player casting bar in World of Warcraft Mists of Pandaria Classic (5.5.x).

Nothing else.

## Install

Via the CurseForge addon downloader, or manually: drop the contents of this repo into `Interface/AddOns/HideCastBar/` so the path ends up at `Interface/AddOns/HideCastBar/HideCastBar.toc`.

The castbar is hidden by default on first install.

## Slash commands

| Command | What it does |
|---|---|
| `/hcb` | Toggle the castbar between hidden and shown |
| `/hidecastbar` | Same as `/hcb` |

State persists across sessions (saved per account).

## Compatibility

Targets MoP Classic 5.5.x. I'm not opposed to expanding to other client versions (Classic Era, Wrath Classic, retail, etc.), but I don't have a reliable way to test anything other than MoP Classic at the moment — ports would rely on user testing. PRs welcome; issues with reproduction info also welcome.

## Contributing

If something looks wrong, feel free to let me know via comment, issue, or PR, even for things like typos. Bug reports of any size are appreciated.

The addon is intentionally scoped to one job — hiding the default Blizzard castbar. Feature requests beyond that scope will probably be declined politely.

## Distribution

Releases are auto-packaged to CurseForge by CF's native packager on annotated tag push (`vX.Y.Z`). Lightweight tags are silently ignored.

## License

[Unlicense](UNLICENSE.txt) — public domain.
