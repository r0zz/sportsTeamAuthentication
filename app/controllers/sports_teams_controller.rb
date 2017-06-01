class SportsTeamsController < ApplicationController
  before_action :set_sports_team, only: [:show, :edit, :update, :destroy]

  # GET /sports_teams
  # GET /sports_teams.json
  def index
    @sports_teams = SportsTeam.all
  end

  # GET /sports_teams/1
  # GET /sports_teams/1.json
  def show
  end

  # GET /sports_teams/new
  def new
    @sports_team = SportsTeam.new
  end

  # GET /sports_teams/1/edit
  def edit
  end

  # POST /sports_teams
  # POST /sports_teams.json
  def create
    @sports_team = SportsTeam.new(sports_team_params)

    respond_to do |format|
      if @sports_team.save
        format.html { redirect_to @sports_team, notice: 'Sports team was successfully created.' }
        format.json { render :show, status: :created, location: @sports_team }
      else
        format.html { render :new }
        format.json { render json: @sports_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sports_teams/1
  # PATCH/PUT /sports_teams/1.json
  def update
    respond_to do |format|
      if @sports_team.update(sports_team_params)
        format.html { redirect_to @sports_team, notice: 'Sports team was successfully updated.' }
        format.json { render :show, status: :ok, location: @sports_team }
      else
        format.html { render :edit }
        format.json { render json: @sports_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sports_teams/1
  # DELETE /sports_teams/1.json
  def destroy
    @sports_team.destroy
    respond_to do |format|
      format.html { redirect_to sports_teams_url, notice: 'Sports team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sports_team
      @sports_team = SportsTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sports_team_params
      params.require(:sports_team).permit(:teamName, :city, :stadium, :league)
    end
end
