class Scraper

    def self.scrape_itunes

        html = open("https://www.apple.com/itunes/charts/free-apps/")
        doc = Nokogiri::HTML(html)


        doc.css(".section-content li").each do |app_doc|
            title = app_doc.css("h3 a").text
            url = app_doc.css("h3 a").attr("href").value
            App.new(title, url)
        end

    end

    def self.scrape_app_details(app)

        html = open(app.url)
        doc = Nokogiri::HTML(html)
        app.developer = doc.css(".l-row dd")[0].text.strip
        app.category = doc.css(".l-row dd")[2].text.strip
        app.rating = doc.css(".l-row .we-customer-ratings__averages__display").text
        app.language = doc.css(".l-row dd")[4].text.strip
        app.size = doc.css(".l-row dd")[1].text.strip

    end 
end