enable_hist=1
search_again=1
fzf_preview_side=up
thumbnail_quality=medium

get_ueberzug_positioning_up() {
  width=$1
  height=$(($2 - 10))
  x=4
  y=10
}

video_pref='bestvideo[height<=480]+bestaudio/bestvideo+bestaudio/best[height<=480]/best'
