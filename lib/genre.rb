class Genre
attr_accessor :name, :songs, :artists
@@all=[]
extend Concerns::Findable
    def initialize(name=nil)
      @name = name
      #@@all << self
      @songs=[]
    end

      def self.all
      @@all
      end
      def self.destroy_all
      @@all.clear
      end
      def save
        @@all << self
        self
      end
      def self.create(name)
          grn=self.new(name)
      @@all <<grn
      grn
      end


      def add_song(song)
          song.genre  || song.genre=self

       @songs<< song unless @songs.include?(song)
        end
        def artists
          @songs.map(&:artist).uniq
        end


end
