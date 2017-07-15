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
  user_selection = gets.chomp

  songs.each_with_index do |song, index|
    if user_selection == song
      return puts "Playing #{song}"
    elsif ((user_selection.to_i) - 1) == index
      return puts "Playing #{song}"
    else
      return puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help_commands = ["help", "list", "play", "exit"]
  help
  puts "Please enter a command: "
  user_input = gets.chomp

  while help_commands.include?(user_input) == false
    puts "Please enter a valid command."
    help
  end

  if user_input == "exit"
    exit_jukebox
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play
  end
end
