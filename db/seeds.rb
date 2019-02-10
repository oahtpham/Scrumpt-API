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
sprint1 = Sprint.create(sprint_name: "hijack spotify api", deadline: "2019-02-15", color: "blue", display: false)
sprint2 = Sprint.create(sprint_name: "get rid of Thao", deadline: "2019-02-15", color: "red", display: false)
sprint3 = Sprint.create(sprint_name: "face recognition", deadline: "2019-02-15", color: "yellow", display: false)
#STAGE SEEDS
stage1 = Stage.create(stage_order: 1, stage_name: "Icebox")
stage2 = Stage.create(stage_order: 2, stage_name: "Emergency")
stage3 = Stage.create(stage_order: 3, stage_name: "In Progress")
stage4 = Stage.create(stage_order: 4, stage_name: "Testing")
stage5 = Stage.create(stage_order: 5, stage_name: "Complete")
#STORY SEEDS
story1 = Story.create(user_id: 1, sprint_id: 1, stage_id: 1, title: "123", description: "Alpha" )
story2 = Story.create(user_id: 2, sprint_id: 1, stage_id: 2, title: "123", description: "Beta" )
story3 = Story.create(user_id: 3, sprint_id: 1, stage_id: 3, title: "123", description: "Crappa" )
story4 = Story.create(user_id: 4, sprint_id: 2, stage_id: 4, title: "123", description: "Delta" )
story5 = Story.create(user_id: 5, sprint_id: 2, stage_id: 5, title: "123", description: "Thaou Omega" )
story6 = Story.create(user_id: 1, sprint_id: 2, stage_id: 1, title: "123", description: "Chi" )
story7 = Story.create(user_id: 2, sprint_id: 3, stage_id: 2, title: "123", description: "Theta" )
story8 = Story.create(user_id: 3, sprint_id: 3, stage_id: 3, title: "123", description: "Sigma" )
story9 = Story.create(user_id: 4, sprint_id: 3, stage_id: 4, title: "123", description: "Epsilon")
