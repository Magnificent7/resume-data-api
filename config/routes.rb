Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :students, :experiences, :educations, :skills

    end
  end
end

# api_v1_students GET    /api/v1/students(.:format)            api/v1/students#index
#                       POST   /api/v1/students(.:format)            api/v1/students#create
#    new_api_v1_student GET    /api/v1/students/new(.:format)        api/v1/students#new
#   edit_api_v1_student GET    /api/v1/students/:id/edit(.:format)   api/v1/students#edit
#        api_v1_student GET    /api/v1/students/:id(.:format)        api/v1/students#show
#                       PATCH  /api/v1/students/:id(.:format)        api/v1/students#update
#                       PUT    /api/v1/students/:id(.:format)        api/v1/students#update
#                       DELETE /api/v1/students/:id(.:format)        api/v1/students#destroy
#     api_v1_educations GET    /api/v1/educations(.:format)          api/v1/educations#index
#                       POST   /api/v1/educations(.:format)          api/v1/educations#create
#  new_api_v1_education GET    /api/v1/educations/new(.:format)      api/v1/educations#new
# edit_api_v1_education GET    /api/v1/educations/:id/edit(.:format) api/v1/educations#edit
#      api_v1_education GET    /api/v1/educations/:id(.:format)      api/v1/educations#show
#                       PATCH  /api/v1/educations/:id(.:format)      api/v1/educations#update
#                       PUT    /api/v1/educations/:id(.:format)      api/v1/educations#update
#                       DELETE /api/v1/educations/:id(.:format)      api/v1/educations#destroy