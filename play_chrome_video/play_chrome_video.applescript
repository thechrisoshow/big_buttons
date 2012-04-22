set jwPlayerScript52 to "
var movie = document.getElementById('flvplayer'); 
if (movie && movie.getConfig) {
  if (movie.getConfig().state != 'PLAYING')
    movie.sendEvent('PLAY', 'true')
  else
    movie.sendEvent('PLAY', 'false')
};
"

set jwPlayerScript53 to "
if (jwplayer != undefined) {
  jwplayer.getPlayers()[0].play();
};
"

set youTubeScript to "
var movie = document.getElementById('movie_player'); 
if (movie && movie.getPlayerState) {
  if (movie.getPlayerState() == 1)
    movie.pauseVideo();
  else
    movie.playVideo();
};
"

set vimeoScript to "
  if (document.getElementsByTagName('object')) {
    var movie = document.getElementsByTagName(\"object\")[0];
    if (movie && movie.api_play) {
      if (movie.api_paused()) {
        movie.api_play();
      } else {
        movie.api_pause();
      }
    }
  }
"

set iPlayer to "
  if (embeddedMedia != undefined) {
    if (iplayer.models.Emp.getInstance()._isPlaying) {
      embeddedMedia.playerInstances.emp.call('pause');
    } else {
      embeddedMedia.playerInstances.emp.call('play');    
    }
  }
"

on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

-- on frontMostApp()
--   tell application "System Events" 
--     item 1 of (get name of processes whose frontmost is true)
--   end tell
-- end frontMostApp

if (appIsRunning("Google Chrome")) then
  tell application "Google Chrome"
    tell window 1
    tell active tab
      -- iPlayer
      execute javascript iPlayer

      -- Youtube
      execute javascript youTubeScript

      -- Vimeo
      execute javascript vimeoScript

      -- JW Player Versions 5.2 and below
      execute javascript jwPlayerScript52
      
      -- JW Player Versions 5.3
      execute javascript jwPlayerScript53
      end tell
    end tell
  end tell
-- else if (appIsRunning("Safari")) then
--   tell application "Safari"
--     -- JW Player Versions 5.2 and below
--     do JavaScript jwPlayerScript in document 1
-- 
--     -- Youtube
--     do JavaScript youTubeScript in document 1
-- 
--   end tell
end if

-- tell application "System Events" to (name of every application process)