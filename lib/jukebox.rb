require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def play(songs)
puts "Please enter a song name or number:"
user_response = gets.chomp
song_number = user_response.to_i
if song_number == 0
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
    return
  end


elsif song_number <= songs.length
  puts "Playing #{songs[song_number - 1]}"
end

if song_number > songs.length
  puts "Invalid input, please try again"
end

end


def list(song_list)

if song_list == nil
  puts "No songs available."
  return
end

  song_list.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end

end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
#  binding.pry
help
user_response = ""
while user_response != "exit"
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
  end
end

exit_jukebox



end
