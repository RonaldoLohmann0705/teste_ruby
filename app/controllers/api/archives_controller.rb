module Api
    class ArchivesController < ApplicationController   
           
        def create       
            render json: { message: "name cant be blank" }, status: 401 if params[:name].blank? and return

            parent_folder = Folder.find_by(id: folder_params[:parent_id])
            render json: { message: "parent folder not found" }, status: 401 if !parent_folder.present? and return   
                     
            new_archive = parent_folder.archives.create(name: folder_params[:name], file: params[:file])
            render json: new_archive, status: 200 and return                      
        end
      
    end
end