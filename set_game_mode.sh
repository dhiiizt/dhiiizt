#!/system/bin/sh
# Script: set_game_mode.sh
# Gunakan mode: 0-10 sesuai pilihan

MODE=$1  # Ambil parameter mode dari input

if [ -z "$MODE" ]; then
    echo "Gunakan: sh set_game_mode.sh [0-10]"
    exit 1
fi

# Daftar game yang mau diubah
GAMES="com.mobile.legends com.mobilelegends.hwag com.mobile.legends.usa"

for app in $GAMES; do
    case $MODE in
        0)
            echo "Reset $app ke default (hapus config game_overlay)"
            device_config delete game_overlay $app
            cmd game mode standard $app
            ;;
        1)
            echo "Setting $app ke Mode Standard"
            device_config put game_overlay $app mode=1,opengles=1,downscaleFactor=1.0
            cmd game mode standard $app
            ;;
        2)
            echo "Setting $app ke Mode HD (Upscale)"
            device_config put game_overlay $app mode=1,opengles=1,downscaleFactor=1.5
            cmd game mode standard $app
            ;;
        3)
            echo "Setting $app ke Mode Balanced"
            device_config put game_overlay $app mode=2,opengles=0,downscaleFactor=0.8
            cmd game mode performance $app
            ;;
        4)
            echo "Setting $app ke Mode Smooth"
            device_config put game_overlay $app mode=2,opengles=0,downscaleFactor=0.5
            cmd game mode performance $app
            ;;
        5)
            echo "Setting $app ke Mode Extreme"
            device_config put game_overlay $app mode=2,opengles=0,downscaleFactor=0.3
            cmd game mode performance $app
            ;;
        6)
            echo "Setting $app ke Mode Standard (default FPS)"
            device_config put game_overlay $app mode=1,opengles=1,fps=0
            cmd game mode standard $app
            ;;
        7)
            echo "Setting $app ke Mode 40fps"
            device_config put game_overlay $app mode=1,opengles=1,fps=40
            cmd game mode performance $app
            ;;
        8)
            echo "Setting $app ke Mode 60fps"
            device_config put game_overlay $app mode=2,opengles=0,fps=60
            cmd game mode performance $app
            ;;
        9)
            echo "Setting $app ke Mode 90fps"
            device_config put game_overlay $app mode=2,opengles=0,fps=90
            cmd game mode performance $app
            ;;
        10)
            echo "Setting $app ke Mode 120fps"
            device_config put game_overlay $app mode=2,opengles=0,fps=120
            cmd game mode performance $app
            ;;
        *)
            echo "Mode tidak valid! Pilih 0-10."
            ;;
    esac
done

echo "Selesai mengubah mode."