class GithubController < ApplicationController
  def authorize
    # mimic what I just did in httpie
    response = HTTP.headers("Accept" => "application/json").post("https://github.com/login/oauth/access_token", form: {
      client_id: Rails.application.credentials.github_client_id,
      client_secret: Rails.application.credentials.github_client_secret,
      code: params[:code]
    })
    render json: response.parse
  end
  
end
