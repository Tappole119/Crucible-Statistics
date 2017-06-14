#destiny services
class DestinyService
  include HTTParty
  base_uri 'http://www.bungie.net/Platform/Destiny/'

  def stats(overrides = {})
    Rails.cache.fetch("events/#{overrides}", expires_in: 6.hours) do
      stats = JSON.parse(self.class.get("/events/search", query: overridden_options(overrides)))
      stats["stats"]["stat"]
    end
  end

  def categories
    parse_categories(self.class.get("/categories/list", query: category_options))
  end

  private

  def default_event_options
    {
        app_key: "BpMTV2G52qdd6sr4",
        location: "Colorado",
        units: "mi",
        include: "categories",
        mature: "normal",
        sort_order: "popularity",
        page_size: 20,
        date: "Future"
    }
  end

  def category_options
    {
        app_key: "BpMTV2G52qdd6sr4"
    }
  end

  def overridden_options(overrides)
    default_event_options.update(overrides)
  end

  def parse_categories(categories)
    JSON.parse(categories)["category"].each do |category|
      category["name"].gsub!("amp;", "")
    end
  end
end
