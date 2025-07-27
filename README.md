# ignis-gvc

A standalone [libgvc](https://gitlab.gnome.org/GNOME/libgnome-volume-control) for Ignis.

## Installing

### Arch Linux

ignis-gvc is available in AUR:
- [ignis-gvc](https://aur.archlinux.org/packages/ignis-gvc) 
- [ignis-gvc-git](https://aur.archlinux.org/packages/ignis-gvc-git)

### Nix

Should be installed together with Ignis.

## Building

```bash
git clone https://github.com/ignis-sh/ignis-gvc
cd ignis-gvc
meson setup build --prefix=/usr
meson compile -C build
meson install -C build
```

## Output files

```
{prefix}/  # typically: /usr
├── lib
│   └── ignis-gvc
│       ├── Gvc-1.0.typelib
│       └── libgvc.so
└── share
    └── ignis-gvc
        └── Gvc-1.0.gir
```
