json.extract! school, :id, :name, :location, :grade_low, :grade_high, :user_id, :curriculum_list, :teacher_list, :created_at, :updated_at
json.url school_url(school, format: :json)
