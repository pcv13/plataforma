class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.where(estado: 'aprobado').or(Offer.where(estado:'rechazado').or(Offer.where(estado: nil).or(Offer.where(estado:'autorizado').or(Offer.where(estado:'no_autorizado')))))
    @offer = Offer.new
  end

  def list
    @offers = Offer.where(estado: 'subido').or(Offer.where(estado:'afiliado').or(Offer.where(estado:'monetizado').or(Offer.where(estado:'stop'))))
    @offer = Offer.new
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    @offer = Offer.new
    @offersI = Offer.all
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params)

    respond_to do |format|
      if @offer.save
        format.html { redirect_to offers_url, notice: 'Offer was successfully created.' }
        format.json { render :index, estado: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, estado: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { render :index, estado: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, estado: :unprocessable_entity }
      end
    end
  end

  def aprobado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"aprobado")
     redirect_to offers_url
  end

  def no_aprobado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"rechazado")
     redirect_to offers_url
  end

  def autorizado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"autorizado")
     redirect_to offers_url
  end

  def no_autorizado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"no_autorizado")
     redirect_to offers_url
  end

  def subido
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"subido")
     redirect_to list_offer_url
  end
  def monetizado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"monetizado")
     redirect_to list_offer_url
  end
  def afiliado
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"afiliado")
     redirect_to list_offer_url
  end
  def stop
    @offer = Offer.find(params[:id])
    @offer.update(:estado =>"stop")
     redirect_to list_offer_url
  end
  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:estado, :agency, :tipo, :app, :os, :geo, :price, :agencyLink, :oferta_des)
    end
end
