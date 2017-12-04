module ApplicationHelper
      def loc_hash
        {
            "work-your-charm" => "workcharm",
            "bar-crawl" => "crawl",
            "beer-with-buds" => "beerbud",
            "for-first-dates" => "firstdate",
            "get-my-money-s-worth" => "moneyworth",
            "we-re-too-old-for-this-s" => "toold",
            "explore-the-city" => "event",
            
        }
    end

  def operations
    [
            {
                name: "Grab A Drink",
                operations: [
                    "Work your charm",
                    "Bar crawl",
                    "Beer buds",
                    "For first dates",
                    "Get my money's worth",
                    "We're too old for this"
                ]
            },
            {
                name: "Party",
                operations: [
                    "With friends",
                    "The birthday place",
                    "This place is huge!",
                    "Get my money's worth",
                    "College",
                    "That random place"
                ]
            },
            {
                name: "Dining",
                operations: [
                    "For me and the spouse",
                    "The hip place",
                    "For me and the fam",
                    "That birthday place",
                    "Get my money’s worth", 
                    "I want that fancy thing"
                ]
            },
            {
                name: "Art & Museums",
                operations: [
                    "Famous monuments",
                    "Galleries and secret jewels",
                    "Museums",
                    "Special events",
                    "Convensions and exhibits",
                    "For business"

                ]
            },
            {
                name: "Explore The City",
                operations: [
                    "Special events",
                    "Concert",
                    "Sports",
                    "Festival",
                    "Must see",
                    "Air land and sea"
                ]
            },
            {
                name: "Feeling Lucky"
            }            
        ]
  end

    def locations_list
        [
            "Tel Aviv area", "Jerusalem area", "Haifa area", "Be'er Sheva area", "North", "South"
        ]
    end

    def ages
        [
            "Under 18","18_21","21_25","25_28","28_35","35_and_over"
        ]
    end

    def times
        [
            "Last 30 minutes","30min to hour","Hour to 2","2 hours to 12","12 hours to 24","Over a day"
        ]
    end

    def results
        [
            "You're better off going to:","Your best choise at the moment is:","I would suggest you go to:", "If I were you, I'd go to:", "You're going to love these places:"
        ]
    end

    def operations2
        [
            {
                name: "Grab a drink?",
                operations: []
                },
            {
                name: "Party?",
                operations: []
                },
            {
                name: "Dining?",
                operations: []
                },
            {
                name: "Art&museums?",
                operations: []
                },
            {
                name: "Explore the city?",
                operations: []
            }

        ]
    end

   def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end     
end
