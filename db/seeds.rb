
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question_groups = QuestionGroup.create([
	{order: 1, question_topic: 'Trans status', question_text: 'First question: What are you looking to do today?'},
	{order: 2, question_topic: 'Citizenship', question_text: 'What is your citizenship?'},
	{order: 3, question_topic: 'Birth country', question_text: 'Where were you born?'},
	{order: 4, question_topic: 'Age', question_text: 'What is your age?'},
	{order: 5, question_topic: 'Passport', question_text: 'Do you have a passport? Have you ever had one?'}
])

answers = Answer.create([
	{question_group_id: 1, answer_text: "I identify as transgender and I would like to apply for a passport with my correct gender and name.", answer_resource: 'http://www.google.com', next_question_id: 2, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I identify as transgender and I would like to apply for a passport with my correct name, but I do not need to change the gender.", answer_resource: 'http://www.google.com', next_question_id: 2, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I am not transgender but I do need a passport.", answer_resource: 'http://www.google.com', next_question_id: 6, answer_type: 'button'},

	{question_group_id: 2, answer_text: "I am a US citizen.", answer_resource: 'http://www.google.com', next_question_id: 3, answer_type: 'button'},
	{question_group_id: 2, answer_text: "I am not US citizen.", answer_resource: 'http://www.google.com', next_question_id: 7, answer_type: 'button'},

	{question_group_id: 3, answer_text: "I was born in the United States.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},
	{question_group_id: 3, answer_text: "I was not born in the United States.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},

	{question_group_id: 6, answer_text: "This tool is specifically for transgender Americans. Please visit the <a href='https://travel.state.gov/content/passports/en/passports/apply.html'>State Department website</a> for more information about getting a passport.", answer_type: 'text'},
	{question_group_id: 7, answer_text: "This tool is specifically for transgender Americans. Please visit the <a href='https://www.uscis.gov/citizenship/learners/apply-citizenship'>USCIS website</a> for more information about becoming a US citizen.", answer_resource: 'http://www.google.com', next_question_id: "", answer_type: 'button'}
	# {question_group_id: 1, answer_text: "", answer_resource: 'http://www.google.com', next_question_id: "", answer_type: 'button'},
	# {question_group_id: 1, answer_text: "", answer_resource: 'http://www.google.com', next_question_id: "", answer_type: 'button'},
	# {question_group_id: 1, answer_text: "", answer_resource: 'http://www.google.com', next_question_id: "", answer_type: 'button'},
	# {question_group_id: 1, answer_text: "", answer_resource: 'http://www.google.com', next_question_id: "", answer_type: 'button'},
])

recommendations = Recommendation.create([
	{rec_text: "You'll need a DS-11 form to apply for a passport", rec_resource: "http://www.google.com", required_answer_ids: [1,4]},
	{rec_text: "You'll need a DS-82 form to apply for a passport", rec_resource: "http://www.google.com", required_answer_ids: [3,5]}
])
