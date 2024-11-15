if [ -f ~/wallpaper/cache ]; then
    use_cache=1
    echo ":: Using Wallpaper Cache"
else
    use_cache=0
    echo ":: Wallpaper Cache disabled"
fi

# ----------------------------------------------------- 
# Set defaults
# ----------------------------------------------------- 

force_generate=0
generatedversions="$HOME/wallpaper/cache/wallpaper-generated"
waypaperrunning=$HOME/wallpaper/cache/waypaper-running
cachefile="$HOME/wallpaper/cache/current_wallpaper"
squarewallpaper="$HOME/wallpaper/cache/square_wallpaper.png"
rasifile="$HOME/wallpaper/cache/current_wallpaper.rasi"
defaultwallpaper="$HOME/wallpaper/default.png"

# Ensures that the script only run once if wallpaper effect enabled
if [ -f $waypaperrunning ]; then
    rm $waypaperrunning
    exit
fi

# Create folder with generated versions of wallpaper if not exists
if [ ! -d $generatedversions ]; then
    mkdir $generatedversions
fi

# ----------------------------------------------------- 
# Get selected wallpaper
# ----------------------------------------------------- 

if [ -z $1 ]; then
    if [ -f $cachefile ]; then
        wallpaper=$(cat $cachefile)
    else
        wallpaper=$defaultwallpaper
    fi
else
    wallpaper=$1
fi
used_wallpaper=$wallpaper
echo ":: Setting wallpaper with source image $wallpaper"
tmpwallpaper=$wallpaper

# ----------------------------------------------------- 
# Copy path of current wallpaper to cache file
# ----------------------------------------------------- 

if [ ! -f $cachefile ]; then
    touch $cachefile
fi
echo "$wallpaper" > $cachefile
echo ":: Path of current wallpaper copied to $cachefile"

# ----------------------------------------------------- 
# Get wallpaper filename
# ----------------------------------------------------- 
wallpaperfilename=$(basename $wallpaper)
echo ":: Wallpaper Filename: $wallpaperfilename"


# ----------------------------------------------------- 
# Stop all running waypaper instances
# ----------------------------------------------------- 

echo ":: Stop all running waybar instances"
killall waybar
pkill waybar

# ----------------------------------------------------- 
# Execute pywal
# ----------------------------------------------------- 

echo ":: Execute pywal with $used_wallpaper"
wal -q -i $used_wallpaper
source "$HOME/.cache/wal/colors.sh"

# ----------------------------------------------------- 
# Reload AGS
# -----------------------------------------------------

echo ":: Reload ags"
killall ags
ags &

# ----------------------------------------------------- 
# Reload waybar
# -----------------------------------------------------

waybar

# ----------------------------------------------------- 
# Create rasi file
# ----------------------------------------------------- 
curwall=`cat ~/wallpaper/cache/current_wallpaper`

if [ ! -f $rasifile ]; then

    touch $rasifile
fi
echo "* { current-image: url(\"$curwall\", height); }" > "$rasifile"

# ----------------------------------------------------- 
# Created square wallpaper
# -----------------------------------------------------

echo ":: Generate new cached wallpaper square-$wallpaperfilename"
magick $tmpwallpaper -gravity Center -extent 1:1 $squarewallpaper
cp $squarewallpaper $generatedversions/square-$wallpaperfilename.png

