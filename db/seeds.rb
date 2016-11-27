
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question_groups = QuestionGroup.create([
	{order: 3, question_topic: 'Birth country', question_text: 'Where were you born?'},
	{order: 4, question_topic: 'Age', question_text: 'What is your age?'},
# Dennis
	{order: 1, question_topic: 'Citizenship', question_text: 'What is your citizenship?'},
	{order: 2, question_topic: 'Trans Status', question_text: 'First question: What are you looking to do today?'},
	{order: 3, question_topic: 'Existing Limited Passport', question_text: 'Do you have a passport? Have you ever had one?'},
	{order: 4, question_topic: 'Applying with Form DS-11'},
	{order: 5, question_topic: 'Applying with Form DS-5504'},
	# {order: 6, question_topic: 'Not Citizen'},
	# {order: 7, question_topic: 'Not Trans'},
	# {order: 8, question_topic: 'Non-Binary'},
	{order: 9, question_topic: 'Trans Minor'},
	{order: 10, question_topic: 'Standard Application'}
])

answers = Answer.create([
	{question_group_id: 1, answer_text: "I identify as transgender and I would like to apply for a passport with my correct gender and name.", answer_resource: 'http://www.google.com', next_question_id: 2, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I identify as transgender and I would like to apply for a passport with my correct name, but I do not need to change the gender.", answer_resource: 'http://www.google.com', next_question_id: 2, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I am not transgender but I do need a passport.", answer_resource: 'http://www.google.com', next_question_id: 6, answer_type: 'button'},

	{question_group_id: 2, answer_text: "I am a US citizen.", answer_resource: 'http://www.google.com', next_question_id: 3, answer_type: 'button'},
	{question_group_id: 2, answer_text: "I am not US citizen.", answer_resource: 'http://www.google.com', next_question_id: 7, answer_type: 'button'},

	{question_group_id: 3, answer_text: "I was born in the United States.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},
	{question_group_id: 3, answer_text: "I was not born in the United States.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},

	# Dennis
	{question_group_id: 1, answer_text: "I am a US citizen.", next_question_id: 2, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I am a US non-citizen national.", next_question_id: 4, answer_type: 'button'},
	{question_group_id: 1, answer_text: "I am neither of the above.", next_question_id: 7, answer_type: 'button'},

	{question_group_id: 2, answer_text: "I identify as male or female transgender and I would like to apply for a passport with my correct gender.", next_question_id: 3, answer_type: 'button'},
	{question_group_id: 2, answer_text: "I identify as transgender, but not as male or female.", next_question_id: 8, answer_type: 'button'},
	{question_group_id: 2, answer_text: "I am the parent or guardian of a transgender minor who needs a passport.", next_question_id: 10, answer_type: 'button'},
	{question_group_id: 2, answer_text: "I am not transgender, but I do need a passport.", next_question_id: 9, answer_type: 'button'},

	{question_group_id: 3, answer_text: "I have a valid two year limited passport issued during my gender transition that I would like to upgrade to a full ten year passport.", next_question_id: 5, answer_type: 'button'},
	{question_group_id: 3, answer_text: "I do not have an existing two year limited passport issued for gender transition, or it is no longer valid.", next_question_id: 4, answer_type: 'button'},

	{question_group_id: 6, answer_text: "This tool is specifically for transgender Americans. Please visit the <a href='https://www.uscis.gov/citizenship/learners/apply-citizenship'>USCIS website</a> for more information about becoming a US citizen.", next_question_id: "", answer_type: 'text'},

	{question_group_id: 7, answer_text: "This tool is specifically for transgender Americans. Please visit the <a href='https://travel.state.gov/content/passports/en/passports/apply.html'>State Department website</a> for more information about getting a passport.", answer_type: 'text'},

	{question_group_id: 8, answer_text: "I understand that only male and female are available as gender markers for US passports, but would like to get a new passport issued with whichever of those I was not assigned at birth.", next_question_id: "3", answer_type: 'button'},

	{question_group_id: 9, answer_text: "Knowing that, I do not want to change the gender marker for my passport, but I would still like to apply for one.", next_question_id: "11", answer_type: 'button'},
	{question_group_id: 9, answer_text: "There are additional requirements when applying on behalf of a minor, but we'll make sure to list them in your recommendations for you.", next_question_id: "4", answer_type: 'button'},

	{question_group_id: 10, answer_text: "For more information about applying through the standard process, please visit the <a href='https://travel.state.gov/content/passports/en/passports/apply.html'>State Department website</a>.", next_question_id: "", answer_type: 'text'}
])

recommendations = Recommendation.create([
	{rec_text: 'You will need to bring evidence of your citizenship to apply for your US passport, as well as a legible, black and white photocopy on 8.5x11 paper. For more information on valid forms of evidence of citizenship, see the state department.', rec_resource: 'https://travel.state.gov/content/passports/en/passports/information/citizenship-evidence.html', required_answer_ids: [1,9]},
	{rec_text: 'You will need to bring proof of your nationality to apply for your US passport. See the state department for further information regarding applying as a US non-citizen national.', rec_resource: 'https://travel.state.gov/content/travel/en/legal-considerations/us-citizenship-laws-policies/certificates-of-non-citizen-nationality.html', required_answer_ids: [2]},
	{rec_text: "This tool is specifically for transgender Americans. Please visit the State Department website for more information about getting a passport.", rec_resource: 'https://travel.state.gov/content/passports/en/passports/apply.html', required_answer_ids: [2]},
	{rec_text: "This tool is specifically for transgender Americans. Please visit the USCIS website for more information about becoming a US citizen.", rec_resource: 'https://www.uscis.gov/citizenship/learners/apply-citizenship', required_answer_ids: [2]}
])
