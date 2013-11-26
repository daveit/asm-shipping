class AgentsController < ApplicationController

  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to @agent
    else
      render 'new'
    end
  end
  
  def edit
    @agent = Agent.find(params[:id])
  end
  
  def update
    @agent = Agent.find(params[:id])
 
    if @agent.update_attributes(params.require[:agent].permit(:name, :contact, :location, :phone, :email, :comments))
      redirect_to @agent
    else
      render 'edit'
    end
  end  
    
  private
    def agent_params
      params.require(:agent).permit(:name, :location, :contact, :phone, :email, :comments)
    end  
end
