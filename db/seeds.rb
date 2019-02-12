# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#SCHEMA

# create_table "comments", force: :cascade do |t|
#   t.integer "story_id"
#   t.integer "user_id"
#   t.text "comment"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "sprints", force: :cascade do |t|
#   t.string "sprint_name"
#   t.datetime "deadline"
#   t.string "color"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "stages", force: :cascade do |t|
#   t.integer "stage_order"
#   t.string "stage_name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "stories", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "sprint_id"
#   t.integer "stage_id"
#   t.string "title"
#   t.text "description"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

#USER SEEDS
user1 = User.create(name: "Thao")
user2 = User.create(name: "Satya")
user3 = User.create(name: "Joyce")
user4 = User.create(name: "Isaac")
user5 = User.create(name: "Mike")
#SPRINT SEEDS
sprint1 = Sprint.create(sprint_name: "User Features", deadline: "2019-03-18", color: "blue", description:"This sprint is dedicated to creating features requested by the user as of February. Shareholders agreed to prioritize XYZ for this particular sprint.", display: false)
sprint2 = Sprint.create(sprint_name: "Client Features", deadline: "2019-03-16", color: "red", description: "These are the most highly requested client features.", display: false)
sprint3 = Sprint.create(sprint_name: "Marketing Features", deadline: "2019-05-01", color: "yellow", description:"We are expanding our marketing efforts through media analytics.", display: false)
#STAGE SEEDS
stage1 = Stage.create(stage_order: 1, stage_name: "Icebox")
stage2 = Stage.create(stage_order: 2, stage_name: "Emergency")
stage3 = Stage.create(stage_order: 3, stage_name: "In Progress")
stage4 = Stage.create(stage_order: 4, stage_name: "Testing")
stage5 = Stage.create(stage_order: 5, stage_name: "Complete")
#STORY SEEDS
story1 = Story.create(user_id: 1, sprint_id: 1, stage_id: 1, title: "Login", description: "As a user, I want to be able to login." )
story2 = Story.create(user_id: 2, sprint_id: 1, stage_id: 2, title: "Post Photos", description: "As a user, I want to post photos to share." )
story3 = Story.create(user_id: 3, sprint_id: 1, stage_id: 3, title: "Make Friends", description: "As a user, i want to be able to add friends." )
story4 = Story.create(user_id: 4, sprint_id: 2, stage_id: 4, title: "Post Services", description: "As a user, I want to post my services for sale to other users." )
story5 = Story.create(user_id: 5, sprint_id: 2, stage_id: 5, title: "New Story", description: "As a user, I want to create new stories." )
story6 = Story.create(user_id: 1, sprint_id: 2, stage_id: 1, title: "New Sprint", description: "As a user, I want to be able to create new sprints." )
story7 = Story.create(user_id: 2, sprint_id: 3, stage_id: 2, title: "Delete Story", description: "As a user, I want to delete new a story I created." )
story8 = Story.create(user_id: 3, sprint_id: 3, stage_id: 3, title: "Update Sprint", description: "As a user, I want to be able to update a sprint." )
story9 = Story.create(user_id: 4, sprint_id: 3, stage_id: 4, title: "Delete Sprint", description: "As a user, I want to delete a sprint.")
