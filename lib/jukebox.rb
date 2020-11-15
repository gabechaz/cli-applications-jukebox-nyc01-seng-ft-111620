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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |item, index|
  puts "#{index + 1}. #{item}"}
end

def play(songs)
puts "Please enter a song name or number:"
selection = gets.strip
songs.each_with_index do |song, index|
  if selection == song || selection == (index + 1)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
    break
  end
end
end

def exit_jukebox
  puts "Goodybye"
end

def run(songs)
  until program_status == "dead"
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "help"
    help
  end
  if user_input == "list"
    list(songs)
  end
  if user_input == "play"
    play(songs)
  end
  if user_input == "exit"
    exit_jukebox
    break
  end
end
end