module Api
    class FoldersController < ApplicationController   
           
        def create          
            render json: { message: "name cant be blank" }, status: 401 if folder_params[:name].blank? and return
            if folder_params[:parent_id].present?
                parent_folder = Folder.find_by(id: folder_params[:parent_id])
                render json: { message: "parent folder not found" }, status: 401 if !parent_folder.present? and return
                new_folder = parent_folder.children.create(name: folder_params[:name])
                render json: new_folder, status: 200 and return
            end
            new_folder = Folder.create(name: folder_params[:name])
            render json: new_folder, status: 200
        end

        private
        def folder_params
            params.permit(:name, :parent_id, :id)
        end
    end
end