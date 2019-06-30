class Author


    attr_accessor :name, :author, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
    end 

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self 
    end 

    def self.post_count
        array = []
        Post.all.each do |post|
            array << post.title
        end 
        return array.count
    end 

end 