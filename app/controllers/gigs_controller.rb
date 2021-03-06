class GigsController < ApplicationController

  def index

  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = current_user.gigs.create(gig_params)
    @gig.save!
    redirect_to @gig
  end

  def show

  end

  private

    def gig_params
      params.require(:gig).permit(:name, :description, :budget, :location, :open, :category, :category_id)
    end

end