# frozen_string_literal: true

class SearchController < ApplicationController
  def new
    # 検索フォームの表示
  end

  def index
    if params[:query].present?
      @tracks = RSpotify::Track.search(params[:query])
    else
      redirect_to new_search_path, alert: 'Please enter a search query.'
    end
  end
end
