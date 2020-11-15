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
  return_statement = nil
puts "Please enter a song name or number:"
selection = gets.strip.to_s
songs.each_with_index do |song, index|
  if selection != song || selection != (index + 1).to_s
    return_statement = "Playing #{song}"
    # binding.pry
  else
    
    break
  end
end
puts return_statement
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  program_status = "live"
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
    program_status = "dead"
  end
end
end