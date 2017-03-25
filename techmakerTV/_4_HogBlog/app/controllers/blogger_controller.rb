class BloggerController < ApplicationController
  before_action :authenticate_author! # || authenticate_admin! #(try this)
end
