class FilesController < ApplicationController
  def index
  end

  def show
    file = UploadedFile.find_by(name: params[:filename])
    send_data(file.data, filename: file.name)
  end

  def create
    uploaded_file = params[:file]
    uploaded_file_data = uploaded_file.read
    UploadedFile.create(name: uploaded_file.original_filename, data: uploaded_file_data)
    redirect_to files_path
  end
end
