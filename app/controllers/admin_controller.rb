class AdminController < ApplicationController
  http_basic_authenticate_with name: "zde", password: "plap"

  def pinballs
  end
end
