class PublishersController < ApplicationController
  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)

    respond_to do |format|
      if @publisher.save
        format.html { render plain: "OK" , notice: 'publisher was successfully created.' }
        #format.json { render :show, stastus: :created, location: @book }
      else
        format.html { render plain: "NOT OK" , notice: 'publisher faild to create' }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end
