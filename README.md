## Explain
silly :3

There's an "Oops! all snaps" system in the form of Ubuntu Core, but I'm wondering how close one could get with Flatpak instead, which unlike Snap was not at all designed to do this.

## Name
Flatpak is named after how IKEA packages their furniture.

## Building
You will likely need an Arch Linux build environment.

Create `mkosi.local.conf` with relevant options for your target system.
See `mkosi.local.conf.example` for a minimal configuration.

Run `mkosi`.

`dd` the resulting `furniture_<YYYYMMDDhhmmss>.raw` to the target device.
systemd-repart will resize partitions on first boot.

## Updating
`systemd-sysupdate` will periodically check `http://furniture-update-server.lan/` for updates to the base system.

See `autobuild.sh`, which may be run daily to populate such a server with new updates.

Updates will never affect the running system, and will apply on a reboot. You will be notified when one is pending.

## Using
The default compositor is [Niri](https://github.com/YaLTeR/niri?tab=readme-ov-file#niri).

First step would likely be to open up the terminal with Super+T and `flatpak install Warehouse` (full package name is `io.github.flattool.Warehouse`). Then use Warehouse to install new Flatpaks.

Super+D brings up Fuzzel, which is the application launcher.

**Note: There is no way to lock the system.**
