Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :students, :experiences, :educations, :skills, :capstones

    end
  end
end

#  Prefix Verb   URI Pattern                            Controller#Action
#        api_v1_students GET    /api/v1/students(.:format)             api/v1/students#index
#                        POST   /api/v1/students(.:format)             api/v1/students#create
#     new_api_v1_student GET    /api/v1/students/new(.:format)         api/v1/students#new
#    edit_api_v1_student GET    /api/v1/students/:id/edit(.:format)    api/v1/students#edit
#         api_v1_student GET    /api/v1/students/:id(.:format)         api/v1/students#show
#                        PATCH  /api/v1/students/:id(.:format)         api/v1/students#update
#                        PUT    /api/v1/students/:id(.:format)         api/v1/students#update
#                        DELETE /api/v1/students/:id(.:format)         api/v1/students#destroy
#     api_v1_experiences GET    /api/v1/experiences(.:format)          api/v1/experiences#index
#                        POST   /api/v1/experiences(.:format)          api/v1/experiences#create
#  new_api_v1_experience GET    /api/v1/experiences/new(.:format)      api/v1/experiences#new
# edit_api_v1_experience GET    /api/v1/experiences/:id/edit(.:format) api/v1/experiences#edit
#      api_v1_experience GET    /api/v1/experiences/:id(.:format)      api/v1/experiences#show
#                        PATCH  /api/v1/experiences/:id(.:format)      api/v1/experiences#update
#                        PUT    /api/v1/experiences/:id(.:format)      api/v1/experiences#update
#                        DELETE /api/v1/experiences/:id(.:format)      api/v1/experiences#destroy
#      api_v1_educations GET    /api/v1/educations(.:format)           api/v1/educations#index
#                        POST   /api/v1/educations(.:format)           api/v1/educations#create
#   new_api_v1_education GET    /api/v1/educations/new(.:format)       api/v1/educations#new
#  edit_api_v1_education GET    /api/v1/educations/:id/edit(.:format)  api/v1/educations#edit
#       api_v1_education GET    /api/v1/educations/:id(.:format)       api/v1/educations#show
#                        PATCH  /api/v1/educations/:id(.:format)       api/v1/educations#update
#                        PUT    /api/v1/educations/:id(.:format)       api/v1/educations#update
#                        DELETE /api/v1/educations/:id(.:format)       api/v1/educations#destroy
#          api_v1_skills GET    /api/v1/skills(.:format)               api/v1/skills#index
#                        POST   /api/v1/skills(.:format)               api/v1/skills#create
#       new_api_v1_skill GET    /api/v1/skills/new(.:format)           api/v1/skills#new
#      edit_api_v1_skill GET    /api/v1/skills/:id/edit(.:format)      api/v1/skills#edit
#           api_v1_skill GET    /api/v1/skills/:id(.:format)           api/v1/skills#show
#                        PATCH  /api/v1/skills/:id(.:format)           api/v1/skills#update
#                        PUT    /api/v1/skills/:id(.:format)           api/v1/skills#update
#                        DELETE /api/v1/skills/:id(.:format)           api/v1/skills#destroy
#       api_v1_capstones GET    /api/v1/capstones(.:format)            api/v1/capstones#index
#                        POST   /api/v1/capstones(.:format)            api/v1/capstones#create
#    new_api_v1_capstone GET    /api/v1/capstones/new(.:format)        api/v1/capstones#new
#   edit_api_v1_capstone GET    /api/v1/capstones/:id/edit(.:format)   api/v1/capstones#edit
#        api_v1_capstone GET    /api/v1/capstones/:id(.:format)        api/v1/capstones#show
#                        PATCH  /api/v1/capstones/:id(.:format)        api/v1/capstones#update
#                        PUT    /api/v1/capstones/:id(.:format)        api/v1/capstones#update
#                        DELETE /api/v1/capstones/:id(.:format)        api/v1/capstones#destroy