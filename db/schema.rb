# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151229093854) do

  create_table "batches", force: :cascade do |t|
    t.integer  "grade_id"
    t.integer  "school_id"
    t.string   "section"
    t.string   "class_alias"
    t.integer  "teacher_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "batches", ["grade_id"], name: "index_batches_on_grade_id"
  add_index "batches", ["school_id"], name: "index_batches_on_school_id"
  add_index "batches", ["teacher_id"], name: "index_batches_on_teacher_id"

  create_table "course_batch_maps", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_batch_maps", ["batch_id"], name: "index_course_batch_maps_on_batch_id"
  add_index "course_batch_maps", ["course_id"], name: "index_course_batch_maps_on_course_id"

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.integer  "school_id"
    t.integer  "grade_id"
    t.string   "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "courses", ["grade_id"], name: "index_courses_on_grade_id"
  add_index "courses", ["school_id"], name: "index_courses_on_school_id"

  create_table "exams", force: :cascade do |t|
    t.string   "exam_name"
    t.string   "description"
    t.integer  "marks"
    t.datetime "exam_date"
    t.integer  "batch_id"
    t.integer  "subject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exams", ["batch_id"], name: "index_exams_on_batch_id"
  add_index "exams", ["subject_id"], name: "index_exams_on_subject_id"

  create_table "grades", force: :cascade do |t|
    t.integer  "grade_level", limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "lecture_batch_maps", force: :cascade do |t|
    t.integer  "batch_id"
    t.integer  "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lecture_batch_maps", ["batch_id"], name: "index_lecture_batch_maps_on_batch_id"
  add_index "lecture_batch_maps", ["lecture_id"], name: "index_lecture_batch_maps_on_lecture_id"

  create_table "lectures", force: :cascade do |t|
    t.string   "lecture_name"
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.integer  "batch_id"
    t.integer  "school_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "lectures", ["batch_id"], name: "index_lectures_on_batch_id"
  add_index "lectures", ["school_id"], name: "index_lectures_on_school_id"
  add_index "lectures", ["subject_id"], name: "index_lectures_on_subject_id"
  add_index "lectures", ["teacher_id"], name: "index_lectures_on_teacher_id"

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_login_id"
    t.string   "notification_type"
    t.string   "notification_content"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "notifications", ["user_login_id"], name: "index_notifications_on_user_login_id"

  create_table "parents", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "parent_name"
    t.integer  "contact_phone"
    t.string   "contact_email"
    t.integer  "contact_alt_phone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "parents", ["student_id"], name: "index_parents_on_student_id"

  create_table "permission_groups", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "permission_groups", ["permission_id"], name: "index_permission_groups_on_permission_id"
  add_index "permission_groups", ["role_id"], name: "index_permission_groups_on_role_id"

  create_table "permissions", force: :cascade do |t|
    t.string   "resource_name"
    t.string   "type_of_crud"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "role_assignments", force: :cascade do |t|
    t.integer  "user_login_id"
    t.integer  "role_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "role_assignments", ["role_id"], name: "index_role_assignments_on_role_id"
  add_index "role_assignments", ["user_login_id"], name: "index_role_assignments_on_user_login_id"

  create_table "roles", force: :cascade do |t|
    t.string   "role_name"
    t.string   "role_alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",                  null: false
    t.integer  "contact",    limit: 12
    t.string   "address"
    t.string   "city",                  null: false
    t.string   "state"
    t.string   "branch"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "alias"
    t.integer  "pin_code"
  end

  create_table "student_attendances", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "school_id"
    t.string   "status"
    t.date     "attendance_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "student_attendances", ["school_id"], name: "index_student_attendances_on_school_id"
  add_index "student_attendances", ["student_id"], name: "index_student_attendances_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "student_name"
    t.string   "father_name"
    t.string   "mother_name"
    t.date     "dob"
    t.string   "gender"
    t.integer  "school_id"
    t.integer  "batch_id"
    t.integer  "course_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "pin_code"
    t.string   "image_loc"
  end

  add_index "students", ["batch_id"], name: "index_students_on_batch_id"
  add_index "students", ["course_id"], name: "index_students_on_course_id"
  add_index "students", ["school_id"], name: "index_students_on_school_id"

  create_table "subject_course_maps", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subject_course_maps", ["course_id"], name: "index_subject_course_maps_on_course_id"
  add_index "subject_course_maps", ["subject_id"], name: "index_subject_course_maps_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_name"
    t.string   "description"
    t.integer  "school_id"
    t.integer  "grade_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "subjects", ["grade_id"], name: "index_subjects_on_grade_id"
  add_index "subjects", ["school_id"], name: "index_subjects_on_school_id"

  create_table "teacher_attendances", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "school_id"
    t.string   "status"
    t.date     "attendance_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "teacher_attendances", ["school_id"], name: "index_teacher_attendances_on_school_id"
  add_index "teacher_attendances", ["teacher_id"], name: "index_teacher_attendances_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "teacher_name"
    t.string   "father_name"
    t.string   "mother_name"
    t.date     "dob"
    t.string   "qualification"
    t.string   "designation"
    t.integer  "experience",        limit: 1
    t.string   "field_of_interest"
    t.string   "gender",            limit: 1
    t.integer  "user_login_id"
    t.integer  "school_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "teachers", ["school_id"], name: "index_teachers_on_school_id"
  add_index "teachers", ["teacher_name"], name: "index_teachers_on_teacher_name"
  add_index "teachers", ["user_login_id"], name: "index_teachers_on_user_login_id"

  create_table "tests", force: :cascade do |t|
    t.string   "test_name"
    t.string   "description"
    t.integer  "marks"
    t.datetime "test_date"
    t.integer  "lecture_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tests", ["lecture_id"], name: "index_tests_on_lecture_id"

  create_table "user_logins", force: :cascade do |t|
    t.string   "username",                                    null: false
    t.string   "email"
    t.integer  "contact",           limit: 5
    t.string   "password_digest"
    t.string   "last_ip_address"
    t.boolean  "activation_status",           default: false
    t.boolean  "locked_status",               default: false
    t.integer  "school_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "user_logins", ["email"], name: "index_user_logins_on_email"
  add_index "user_logins", ["school_id"], name: "index_user_logins_on_school_id"
  add_index "user_logins", ["username"], name: "index_user_logins_on_username"

end
