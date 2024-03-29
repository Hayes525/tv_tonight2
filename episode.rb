class TvTonight::Episode
    attr_accessor :name, :series, :network, :description, :url, :time
  
    @@all = []
  
    def initialize(name, series, network, description, url, time)
      @name = name
      @series = series
      @network = network
      @description = description
      @url = url
      @time = time
      save
    end
  
    def self.all
      @@all
    end
  
    def save
      @@all << self
    end
  
    def self.find_by_index(index)
      @@all[index]
    end
    # def self.scrape_episodes
    #
    #   page = Nokogiri::HTML(open("http://www.tvguide.com/trending-tonight/"))
    #
    #   page.css(".listings-program").each do |show|
    #     episode = TvTonight::Episode.new
    #     episode.name = show.css("h4 .listings-program-link").text.strip
    #     episode.series = show.css("h3").text.strip
    #     airing = show.css(".listings-program-airing-info").text
    #     info = airing.split(" | ")
    #       air_time = info[0]
    #       air_network = info[1]
    #     episode.time = air_time
    #     episode.network = air_network
    #     episode.description = show.css(".listings-program-description").text.strip
    #     episode.url = show.css("a").attr("href").text
    #     @@all << episode
    #   end
    # end
  
  end