class CLI

    def run
        puts "Welcome to iTunes' Top Free Apps List!"

        Scraper.scrape_itunes

        App.all.each.with_index(1) do |app, i|
            puts "#{i}. #{app.title}"
        end

        menu
    end

    def menu

        puts ""
        puts "Please select an App to view its details:"

        input = gets.chomp

        #app = App.all[input.to_i - 1]

        if input.to_i > 0 && input.to_i <=App.all.size
            app = App.all[input.to_i - 1]
            Scraper.scrape_app_details(app)
            puts ""
            puts "#{app.title}"
            puts "Category: #{app.category}"
            puts "Developer: #{app.developer}"
            puts "Rating: #{app.rating}"
            puts "Languages: #{app.language}"
            puts "Size: #{app.size}"
            menu
        elsif input == "exit"
            puts""
            puts "Thank you and goodbye!"
            puts ""
            exit
        else
            puts ""
            puts "Invalid choice... please select again"
            menu
        end
        
    end

end