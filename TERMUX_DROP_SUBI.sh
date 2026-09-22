#!/data/data/com.termux/files/usr/bin/bash
set -e
DL="$HOME/storage/downloads"
[ -d "$DL" ] || DL="$HOME/Downloads"
mkdir -p "$HOME/subi-life-room/public/glbs"
cp -f "$DL"/Meshy_AI_Blue_Speedster_*texture.glb "$HOME/subi-life-room/public/glbs/blue-speedster.glb"
cp -f "$DL"/Meshy_AI_Neon_Wave_Raceway_*texture.glb "$HOME/subi-life-room/public/glbs/neon-wave-raceway.glb"
cd "$HOME/subi-life-room"
git add public/glbs/blue-speedster.glb public/glbs/neon-wave-raceway.glb
git commit -m "feat: drop Meshy Subi + Neon Wave Raceway" || true
git push || true
echo DONE https://subi-life-room.vercel.app
