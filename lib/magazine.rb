class Magazine
    attr_reader :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def contributors
        Article.all.filter { |article| article.magazine == self }.map { |article| article.author.name }.uniq
    end

end