#!/usr/bin/env bash
set -Eeuo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TARGET_DIR="${REPO_ROOT}/build/iso"

mkdir -p "${TARGET_DIR}/config/package-lists" "${TARGET_DIR}/config/bootloaders" "${TARGET_DIR}/config/includes.chroot/etc/skel/.config" "${TARGET_DIR}/output"

cat > "${TARGET_DIR}/config/package-lists/desktop.list" <<'EOF'
# Base desktop packages for a Windows 7–inspired KDE environment
kde-plasma-desktop
kde-standard
plasma-workspace
plasma-nm
plasma-pa
konsole
dolphin
ark
kcalc
okular
firefox-esr
network-manager
sudo
git
curl
wget
vim
strace
htop
nala
EOF

cat > "${TARGET_DIR}/config/package-lists/win7e.list" <<'EOF'
# Windows 7e project packages
wine
wine64
winetricks
libreoffice-calc
libreoffice-writer
gwenview
vlc
p7zip-full
unzip
zip
dos2unix
gnome-disk-utility
calamares
EOF

cat > "${TARGET_DIR}/config/includes.chroot/etc/skel/.config/kdeglobals" <<'EOF'
[General]
Name=Windows 7e

[KDE]
WidgetStyle=Breeze

[Icons]
Theme=breeze
EOF

cat > "${TARGET_DIR}/config/includes.chroot/etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc" <<'EOF'
[Containments][1]
geometry=0,0,1920,1080

[General]
ToolBoxStyle=Desktop
EOF

cat > "${TARGET_DIR}/config/bootloaders/grub-pc.cfg" <<'EOF'
# Placeholder grub configuration for the Windows 7e live image.
# This will be customized for the final design.
EOF

echo "[OK] Windows 7e ISO config initialized under ${TARGET_DIR}"
