class Movie < ActiveRecord::Base
    #CRUD

    # C => CREATE
    def self.create_with_title(title)
        Movie.create(title:title)
    end

    # R => READ

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by_id(id)
    end

    def self.find_movie_with_attributes(title)
       movie = Movie.find_by(title)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    # U => UPDATE

    def update_with_attributes(new_title)
        #still not working
     self.update(:title, new_title)
    end

    def self.update_all_titles(new_title)
        Movie.update(title: new_title)
    end

    # D => DELETE
    def self.delete_by_id(id)
        delete_id = Movie.find_by_id(id)
        delete_id.destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end
