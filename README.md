# Bluenoc

Minimal [Fedora Silverblue](https://silverblue.fedoraproject.org/) image with [Niri](https://github.com/YaLTeR/niri) + [Noctalia Shell](https://docs.noctalia.dev/), built with [BlueBuild](https://blue-build.org/) for a [Framework 13](https://frame.work/).

Set it up once, don't worry about it again. The [Universal Blue](https://universal-blue.org/) base updates automatically; the recipe just adds [Niri](https://github.com/YaLTeR/niri), [Noctalia](https://github.com/noctalia-dev/noctalia-shell), [Kitty](https://sw.kovidgoyal.net/kitty/), and some Flatpak defaults. Noctalia and dependencies come from [Terra](https://terra.fyralabs.com/).

## Usage

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/frodew/bluenoc:latest
# reboot, then:
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/frodew/bluenoc:latest
```

## Maintenance

OS updates are automatic. Just reboot. Bump `image-version` in `recipe.yml` when a new Fedora releases.
While Niri + Noctalia on Fedora Atomic is niche and I expect occasional rough edges in the shell, I'm looking forward to this journey :)
