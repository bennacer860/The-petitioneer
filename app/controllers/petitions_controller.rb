class PetitionsController < ApplicationController
  def index
    @petitions = Petition.all
  end

  def show
    @petition = Petition.find(params[:id])
  end

  def new
    @petition = Petition.new
  end

  def create
    @petition = Petition.new(params[:petition])
    if @petition.save
      redirect_to @petition, :notice => "Successfully created petition."
    else
      render :action => 'new'
    end
  end

  def edit
    @petition = Petition.find(params[:id])
  end

  def update
    @petition = Petition.find(params[:id])
    if @petition.update_attributes(params[:petition])
      redirect_to @petition, :notice  => "Successfully updated petition."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @petition = Petition.find(params[:id])
    @petition.destroy
    redirect_to petitions_url, :notice => "Successfully destroyed petition."
  end
end
