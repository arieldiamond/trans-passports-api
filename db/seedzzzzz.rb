# question_groups = QuestionGroup.create([
# 	{order: 1, question_topic: 'Citizenship', question_text: 'What is your citizenship?'},
# 	{order: 2, question_topic: 'Trans Status', question_text: 'First question: What are you looking to do today?'},
# 	{order: 3, question_topic: 'Birth country', question_text: 'Where were you born?'},
# 	{order: 4, question_topic: 'Age', question_text: 'What is your age?'},
# 	{order: 5, question_topic: 'Existing Limited Passport', question_text: 'Do you have a passport? Have you ever had one?'},
# 	# {order: 6, question_topic: 'Applying with Form DS-11'},
# 	# {order: 7, question_topic: 'Applying with Form DS-5504'},
# 	# {order: 9, question_topic: 'Trans Minor'},
# 	# {order: 10, question_topic: 'Standard Application'}
# ])

# answers = Answer.create([
# 	{rec_id: 1, question_group_id: 1, answer_text: "I am a US citizen.", next_question_id: 2, answer_type: 'button'},
# 	{rec_id: 2, question_group_id: 1, answer_text: "I am not a US citizen.", next_question_id: 2, answer_type: 'button'},

# 	{rec_id: 14, question_group_id: 3, answer_text: "I was born in the United States, Guam, Puerto Rico, or the U.S. Virgin Islands, or in another country to American parents.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},
# 	# Does this matter?
# 	{rec_id: 15, question_group_id: 3, answer_text: "I was born in American Samoa or Swains Island.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},
# 	{rec_id: 16, question_group_id: 3, answer_text: "I was not born in any of the above countries.", answer_resource: 'http://www.google.com', next_question_id: 4, answer_type: 'button'},

# 	{rec_id: 4, question_group_id: 2, answer_text: "I identify as transgender and I would like to apply for a passport with my correct gender and name.", next_question_id: 3, answer_type: 'button'},
# 	{rec_id: 5, question_group_id: 2, answer_text: "I identify as transgender and I would like to apply for a passport with my correct name, but I do not need to change the gender.", next_question_id: 8, answer_type: 'button'},
# 	{rec_id: 6, question_group_id: 2, answer_text: "I am the parent or guardian of a transgender minor who needs a passport.", next_question_id: 10, answer_type: 'button'},
# 	{rec_id: 7, question_group_id: 2, answer_text: "I am not transgender, but I do need a passport.", next_question_id: nil, answer_type: 'button'},

# 	{rec_id: 8, question_group_id: 3, answer_text: "I have a valid two year limited passport issued during my gender transition that I would like to upgrade to a full ten year passport.", next_question_id: 5, answer_type: 'button'},
# 	{rec_id: 9, question_group_id: 3, answer_text: "I do not have an existing two year limited passport issued for gender transition, or it is no longer valid.", next_question_id: 4, answer_type: 'button'},

# 	{rec_id: 10, question_group_id: 8, answer_text: "I understand that only male and female are available as gender markers for US passports, but would like to get a new passport issued with whichever of those I was not assigned at birth.", next_question_id: "3", answer_type: 'button'},

# 	{rec_id: 11, question_group_id: 9, answer_text: "Knowing that, I do not want to change the gender marker for my passport, but I would still like to apply for one.", next_question_id: "11", answer_type: 'button'},
# 	{rec_id: 12, question_group_id: 9, answer_text: "There are additional requirements when applying on behalf of a minor, but we'll make sure to list them in your recommendations for you.", next_question_id: "4", answer_type: 'button'},

# 	{rec_id: 13, question_group_id: 10, answer_text: "For more information about applying through the standard process, please visit the <a href='https://travel.state.gov/content/passports/en/passports/apply.html'>State Department website</a>.", next_question_id: "", answer_type: 'text'}
# ])

# recommendations = Recommendation.create([
# 	# No endpoints
# 	{rec_text: "This tool is specifically for transgender Americans. Please visit the State Department website for more information about getting a passport.", rec_resource: 'https://travel.state.gov/content/passports/en/passports/apply.html', required_answer_ids: [7]},
# 	{rec_text: "This tool is specifically for transgender Americans. Please visit the USCIS website for more information about becoming a US citizen.", rec_resource: 'https://www.uscis.gov/citizenship/learners/apply-citizenship', required_answer_ids: [2]}

# 	# Forms
# 	{rec_text: 'You will need to use the DS-11 form!', rec_resource: 'http://www.state.gov/documents/organization/212239.pdf', required_answer_ids: []},
# 	{rec_text: 'You get to use the DS-82 form!', rec_resource: 'http://www.state.gov/documents/organization/212241.pdf', required_answer_ids: []},

# 	# Has previous passport
# 	{rec_text: 'You need to include your previous passport (it can be expired). You can also include a certified copy.', rec_resource: 'https://travel.state.gov/content/passports/en/passports/information/citizenship-evidence.html', required_answer_ids: []},

# 	# has birth certificate
# # 	{rec_text: 'You need to include your birth certificate or a certified copy of it. Make sure your birth certificate 1) was issued by the city, county, or state you were born in; 2) Lists your full birth name, date of birth, and place of birth; 3) Lists your parent(s) full names; 4) Has the date filed with registrar\'s office and it is within one year of birth), 5
# # Has the registrar\'s signature
# # Has the seal of the issuing authority', rec_resource: 'https://travel.state.gov/content/passports/en/passports/information/citizenship-evidence.html', required_answer_ids: []},
# # 	{rec_text: 'You will need to include a legible, black and white photocopy on 8.5x11 paper. For more information on valid forms of evidence of citizenship, see the state department.', rec_resource: 'https://travel.state.gov/content/passports/en/passports/information/citizenship-evidence.html', required_answer_ids: [1,9]},
# # 	{rec_text: 'You will need to bring proof of your nationality to apply for your US passport. See the state department for further information regarding applying as a US non-citizen national.', rec_resource: 'https://travel.state.gov/content/travel/en/legal-considerations/us-citizenship-laws-policies/certificates-of-non-citizen-nationality.html', required_answer_ids: [2]},
# ])
