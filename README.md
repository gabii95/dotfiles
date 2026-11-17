# Dotfiles - CachyOS Hyprland & Noctalia

Configuración personal y ricing para **CachyOS** en **ASUS Zenbook 14 OLED (UM3406HA)**, gestionado modularmente con **GNU Stow**.

## 💻 Especificaciones del Setup

* **Sistema Operativo:** CachyOS x86_64
* **Gestor de Ventanas:** Hyprland (Wayland / UWSM)
* **Shell Desktop / Widgets:** Noctalia (Barra, Lanzadores, Lockscreen, Notificaciones)
* **Terminal:** Kitty (principal) / Alacritty
* **Shell:** Fish / Zsh
* **Visor Markdown:** Glow (`md-open`)
* **Gestor de Archivos:** Dolphin (GUI) y Yazi (TUI)
* **Temas e Iconos:** `adw-gtk3-dark` + CSS Noctalia / Qt Fusion (`qt6ct`) / Cursor `Bibata-Modern-Ice`

## 📁 Módulos de GNU Stow

* `hypr/`: Configuración modular en Lua de Hyprland.
* `noctalia/`: Ajustes de barra, paneles, widgets y paletas de color.
* `kitty/` y `alacritty/`: Configuraciones de terminales y esquemas de color.
* `fish/` y `zsh/`: Configuraciones de shell, alias y funciones.
* `gtk/` y `qt/`: Estilos CSS, esquemas de color Qt y cursores.
* `libinput/`: Gestos táctiles del touchpad para la ASUS Zenbook.
* `scripts/`: Utilidades en `~/.local/bin` (`auto-refresh-rate`, `obsidian-sync`, `md-open`).
* `systemd/`: Servicios y timers de usuario (tasa de refresco, sincronización).
* `wallpapers/`: Fondo de pantalla activo.
* `zed/`: Configuración del editor Zed.

## ⌨️ Atajos de Teclado Principales

| Combinación | Acción |
| :--- | :--- |
| `SUPER + Enter` | Abrir terminal Kitty |
| `SUPER + Espacio` | Lanzador de aplicaciones Noctalia |
| `SUPER + Tab` | Selector de ventanas abiertas |
| `SUPER + X` | Panel de Control de Noctalia |
| `SUPER + Z` | Ajustes de Noctalia |
| `SUPER + L` | Bloquear pantalla |
| `SUPER + Q` | Cerrar ventana activa |
| `SUPER + F` | Pantalla completa |
| `SUPER + Y` | Explorador Yazi (en Kitty) |
| `SUPER + E` | Explorador Dolphin |
| `SUPER + Shift + S` | Captura de pantalla de región |
| `Ctrl + Shift + Esc` | Monitor del sistema (`btop`) |

## 🚀 Instalación y Despliegue

```bash
git clone git@github.com:gabii95/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## 📄 Licencia
Distribuido bajo licencia MIT.
