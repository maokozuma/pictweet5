class TweetsController < ApplicationController

    def index
      @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
    end

    def new
    end

    def create
      Tweet.create(name: params[:name], image: params[:image], text: params[:text])
    end

  end