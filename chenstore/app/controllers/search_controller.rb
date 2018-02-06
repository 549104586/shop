class SearchController < ApplicationController

  def self.search(search)

    response = _elasticsearch_.search(search)

  end

end
