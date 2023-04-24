class ConnectController < ApplicationController
  
  def chatbot
    session[:message_history] ||= ["Hello, I'm WishConnect, an AI assistant to help you on your wish journey. How can I be of assistance today?"]
  end

  def call_chat_api
    prompt = params[:prompt]
    session[:message_history] ||= [] # Initialize message history if it doesn't exist
    session[:message_history] << prompt
    api_response = `python3 chatbot/wishconnect_openai.py "#{prompt}"`
    session[:message_history] << api_response

    redirect_to "/connect/chatbot"
  end

  def reset_message_log
    reset_session

    redirect_to "/connect/chatbot"
  end

  private 

  def session_params
    params.permit(:messages, :prompt)
  end
end
