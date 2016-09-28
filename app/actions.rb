def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/images/sharky_j.jpg' do
  "@post_shark = avatar_url"
end
  

get '/' do
    
    @post_shark = {
        username: "sharky_j",
        avatar_url: "/images/sharky_j.jpg",
        photo_url: "/images/shark.png",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "sharky_j", 
            text: "Out for the long weekend... too embarassed to show y'all the beach bod!"
        }]
    }
    
    @post_whale = {
        username: "kirk_whalum",
        avatar_url: "/images/kirk_whalum.jpg",
        photo_url: "/images/whale.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "kirk_whalem",
            text: "#weekendvibes"
        }]
    }
    
    @post_marlin = {
        username: "marlin_peppa",
        avatar_url: "/images/marlin_peppa.jpg",
        photo_url: "/images/marlin.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "marlin_peppa",
            text: "lunchtime! ;)"
        }]
    }
    
    [@post_shark, @post_whale, @post_marlin].to_s
    
    erb(:index)
end
 