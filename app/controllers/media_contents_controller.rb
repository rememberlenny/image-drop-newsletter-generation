class MediaContentsController < ApplicationController

  def index
    @newsletter = Newsletter.find(params[:newsletter_id])
    @media_contents = @newsletter.medias.all
  end

 def create
    @newsletter = Newsletter.find(params[:newsletter_id])
    @media = @newsletter.medias.new(file_name: params[:file])
    if @media.save!
      respond_to do |format|
        format.json{ render :json => @media }
      end
    end
  end

def delete_media
  @newsletter = Newsletter.find(params[:newsletter_id])
  @newsletter.medias.where(id: params[:media_contents]).destroy_all
  redirect_to root_url
end

end
