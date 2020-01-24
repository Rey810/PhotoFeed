module FlickrHelper
    # user info of the inputted ID
    def get_user_info
        @user_info = flickr.people.getInfo(:user_id => @user_id)
        rescue Exception  
            flash[:warning] = "No user found!"
            return []
    end

    #get the ids of the users photos
    def get_photo_ids
        photos = flickr.photos.search(:user_id => @user_id).to_a.values_at(0..10)
        @ids = photos.map { |photo| photo.id }
        rescue Exception
            flash[:warning] = "No photos found!"
            return []
    end
end