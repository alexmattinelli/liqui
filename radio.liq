radio = mksafe(playlist("https://raw.githubusercontent.com/alexmattinelli/radio_gramatike/main/playlist.txt"))

output.icecast(
  %ffmpeg(format="mp3", %audio(codec="libmp3lame")),
  host="localhost",
  port=8000,
  password="hackme",
  mount="/radio",
  radio
)