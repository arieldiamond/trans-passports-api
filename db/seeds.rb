question_groups = QuestionGroup.create([
	{ key: 'citizenship', question_text: 'Are you a US Citizen?', subtitle: 'TBD'},
	{ key: 'age', question_text: 'How old are you?', subtitle: 'TBD'},
	{ key: 'passport_status', question_text: 'Have you ever had a US Passport book or card?', subtitle: 'TBD' }
])

answers = Answer.create([
	{ question_group_id: 'citizenship',	key: 'citizenship_yes', answer_text: 'I am a US Citizen',	answer_resource: 'TBD' },
	{ question_group_id: 'citizenship',	key: 'citizenship_no', answer_text: 'I am a not a US Citizen',	answer_resource: 'TBD' },
	{ question_group_id: 'citizenship',	key: 'citizenship_unsure', answer_text: 'I\'m not sure.',	answer_resource: 'TBD' }
])

recommendations = Recommendation.create([
	{ key: 'not_citizen', rec_text: 'This tool is specifically for transgender US Citizens. Please visit the USCIS website for more information about becoming a US citizen.', rec_resource: 'https://www.uscis.gov/citizenship/learners/apply-citizenship' }
])
