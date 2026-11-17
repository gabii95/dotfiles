#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$HOME}"

echo "==> Iniciando instalador de dotfiles (CachyOS + Hyprland + Noctalia)"

# Validar que GNU Stow este disponible
if ! command -v stow >/dev/null 2>&1; then
    echo "GNU Stow no se encuentra instalado. Instalalo con: sudo pacman -S stow"
    exit 1
fi

# Preguntar por instalacion de paquetes opcional
read -rp "Deseas instalar los paquetes del sistema ahora? [s/N]: " RESP_PKGS
if [[ "${RESP_PKGS,,}" =~ ^(s|si|y|yes)$ ]]; then
    if [ -f "$BASE_DIR/pkglist-native.txt" ]; then
        echo "==> Instalando paquetes oficiales..."
        sudo pacman -S --needed --noconfirm - < "$BASE_DIR/pkglist-native.txt"
    fi

    AUR_CMD=""
    if command -v paru >/dev/null 2>&1; then
        AUR_CMD="paru"
    elif command -v yay >/dev/null 2>&1; then
        AUR_CMD="yay"
    fi

    if [ -n "$AUR_CMD" ] && [ -f "$BASE_DIR/pkglist-aur.txt" ]; then
        echo "==> Instalando paquetes AUR con $AUR_CMD..."
        "$AUR_CMD" -S --needed --noconfirm - < "$BASE_DIR/pkglist-aur.txt"
    fi
fi

# Modulos disponibles para enlazar con Stow
MODULOS=(
    "alacritty"
    "btop"
    "fish"
    "glow"
    "gtk"
    "hypr"
    "kitty"
    "libinput"
    "noctalia"
    "qt"
    "scripts"
    "swash"
    "systemd"
    "uwsm"
    "wallpapers"
    "zed"
    "zsh"
)

echo "==> Creando carpetas de destino base..."
mkdir -p "$TARGET_DIR/.config" "$TARGET_DIR/.local/bin" "$TARGET_DIR/.local/state/noctalia" "$TARGET_DIR/Imágenes"

cd "$BASE_DIR"
for mod in "${MODULOS[@]}"; do
    if [ -d "$BASE_DIR/$mod" ]; then
        echo "  [stow] Enlazando modulo: $mod"
        stow -v -R --adopt -t "$TARGET_DIR" "$mod"
    fi
done

echo "==> Enlaces simbolicos creados correctamente con GNU Stow."
