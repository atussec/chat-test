class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(user_id: current_user)
    @inbox = Chatroom.where(reciepient: current_user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages.order(created_at: :desc).limit(100).reverse
  end
  def new
    @chatroom = Chatroom.new
    @chtroom = @chatroom.messages.new
  end
  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user_id = current_user.id
    respond_to do |format|
      if @chatroom.save
        # @chatroom.chatroom_users.where(user_id: current_user.id).first_or_create
        format.html { redirect_to @chatroom, notice: 'Chatroom was successfully created.' }
      else
        format.html { render :new }

        end
    end
  end
private

def chatroom_params
  params.require(:chatroom).permit(:name, :user_id, :reciepient, mesages_attributes: [:body, :chatroom_id, :user_id])
end


end
