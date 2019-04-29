# frozen_string_literal: true

Rails.configuration.stripe = {
  publishable_key: 'pk_test_Q6dWeMuNpt0qtA9IFt5Ebor8009mRZcBfF',
  secret_key: 'sk_test_jLzLvOSaeSma4mlRaSWyIqDO00kUUKBsI4'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
