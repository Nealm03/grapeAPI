module Users
	class APIV1 < Grape::APIV1

		resourse :user do 
			desc "Returns a user for given user id"
			get "/:id" do
				user = User.find(params[:id])
				present user, :with => Users::UserResponseEntity
			end
		end
	end
end

