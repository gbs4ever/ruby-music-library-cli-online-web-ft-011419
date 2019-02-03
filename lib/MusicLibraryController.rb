class MusicLibraryController
def initialize(path="./db/mp3s")
MusicImporter.new(path).import
end
    def call
    puts "Welcome to your music library!"
    puts"To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
         4.times  do
      input= gets.strip
      end
    end


    def list_songs
      Song.all.sort_by(&:name).each_with_index do |song,i|
      puts "#{i+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
      end
    end
    def list_artists
      Artist.all.sort_by(&:name).each_with_index do |a,i|
          puts "#{i+1}. #{a.name}"
      end
    end
    def list_genres
        Genre.all.sort_by(&:name).each_with_index do |g,i|
          puts "#{i+1}. #{g.name}"
        end
    end
      def list_songs_by_artist
        puts "Please enter the name of an artist:"
          input= gets.strip
        s=Artist.find_by_name(input)
          binding.pry
          end




          def list_songs_by_genre
  puts"Please enter the name of a genre:"
  input= gets.strip
end
def play_song
  puts "Which song number would you like to paly?"
  input= gets.strip
end


end
