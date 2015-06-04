class TagsController < ApplicationController

  # GET /tags/:id
  def show
		if Tag.find_by_name(params[:id])
			@sits = Sit.tagged_with(params[:id], current_user)
		else
			redirect_to root_path
		end

    @title = "Tag: #{params[:id]}"
    @page_class = 'view-tag'
  end
end
