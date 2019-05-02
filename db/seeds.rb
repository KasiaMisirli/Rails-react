# frozen_string_literal: true

Account.destroy_all

culture_amp = Account.create(name: 'Culture Amp')
coles = Account.create(name: 'Coles')

User.create(
  email: 'tanim@gmail.com',
  password: 'password',
  account_id: culture_amp.id
)

User.create(
  email: 'mahmud@gmail.com',
  password: 'password',
  account_id: coles.id
)

culture_amp_survey = Survey.create(
  name: 'CA Engagement Survey',
  account_id: culture_amp.id
)

coles_survey = Survey.create(
  name: 'Coles Engagement Survey',
  account_id: coles.id
)

RatingQuestion.create(
  title: 'ca rating question 1',
  survey_id: culture_amp_survey.id
)

RatingQuestion.create(
  title: 'ca rating question 2',
  survey_id: culture_amp_survey.id
)

RatingQuestion.create(
  title: 'ca rating question 3',
  survey_id: culture_amp_survey.id
)

RatingQuestion.create(
  title: 'coles rating question 1',
  survey_id: coles_survey.id
)

RatingQuestion.create(
  title: 'coles rating question 2',
  survey_id: coles_survey.id
)

RatingQuestion.create(
  title: 'coles rating question 3',
  survey_id: coles_survey.id
)
