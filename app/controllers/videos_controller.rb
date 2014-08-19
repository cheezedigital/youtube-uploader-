class VideosController < ApplicationController

  def new
    @pre_upload_info = {}
  end

  def get_upload_token
    temp_params = { title: params[:title], description: params[:description], category: ['Education'], keywords: [] }

    if current_user
      youtube = YouTubeIt::OAuth12Client.new(client_access_token: current_user.token, dev_key: ENV['GOOGLE_DEV_KEY'])

      upload_info = youtube.upload_token(temp_params, get_video_uid_url)

      render json: {token: upload_info[:token], url: upload_info[:url] }

    else
      render json: { error_type: 'Not Authorized.', status: :unprocessable_entity }
    end
  end

  def index

  end

end
