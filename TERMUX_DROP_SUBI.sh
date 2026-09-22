#!/data/data/com.termux/files/usr/bin/bash
set -e
SRC="$HOME/Downloads/Meshy_AI_Blue_Speedster_0922124133_texture.glb"
if [ ! -f "$SRC" ]; then
  SRC="$HOME/storage/downloads/Meshy_AI_Blue_Speedster_0922124133_texture.glb"
fi
echo "SRC=$SRC"
mkdir -p "$HOME/subi-life-room/public/glbs" "$HOME/Third-Eye-forge/public/glbs"
cp -f "$SRC" "$HOME/subi-life-room/public/glbs/blue-speedster.glb"
cp -f "$SRC" "$HOME/Third-Eye-forge/public/glbs/blue-speedster.glb"
cd "$HOME/subi-life-room"
git add public/glbs/blue-speedster.glb
git commit -m "feat: drop Meshy WRB Subi as blue-speedster.glb" || true
git push || true
cd "$HOME/Third-Eye-forge"
git add public/glbs/blue-speedster.glb
git commit -m "feat: drop Meshy WRB Subi as blue-speedster.glb" || true
git push || true
echo "DONE — wait for Vercel, then open https://subi-life-room.vercel.app"
