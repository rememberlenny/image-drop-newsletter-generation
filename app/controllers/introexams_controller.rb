class IntroexamsController < ApplicationController
  before_action :set_introexam, only: [:show, :edit, :update, :destroy]

  # GET /introexams
  # GET /introexams.json
  def index
    @introexams = Introexam.all
  end

  # GET /introexams/1
  # GET /introexams/1.json
  def show
  end

  # GET /introexams/new
  def new
    @introexam = Introexam.new
  end

  # GET /introexams/1/edit
  def edit
  end

  # POST /introexams
  # POST /introexams.json
  def create
    @introexam = Introexam.new(introexam_params)

    respond_to do |format|
      if @introexam.save
        format.html { redirect_to @introexam, notice: 'Introexam was successfully created.' }
        format.json { render :show, status: :created, location: @introexam }
      else
        format.html { render :new }
        format.json { render json: @introexam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /introexams/1
  # PATCH/PUT /introexams/1.json
  def update
    respond_to do |format|
      if @introexam.update(introexam_params)
        format.html { redirect_to @introexam, notice: 'Introexam was successfully updated.' }
        format.json { render :show, status: :ok, location: @introexam }
      else
        format.html { render :edit }
        format.json { render json: @introexam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /introexams/1
  # DELETE /introexams/1.json
  def destroy
    @introexam.destroy
    respond_to do |format|
      format.html { redirect_to introexams_url, notice: 'Introexam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_introexam
      @introexam = Introexam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def introexam_params
      params.require(:introexam).permit(:title, :message, :picture1, :testimonial1, :picture2, :testimonial2, :picture3, :testimonial3)
    end
end
