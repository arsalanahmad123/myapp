Rails.configuration.stripe = {
    :publishable_key => "pk_test_51LQlvQIbgdr11x2ZtbxDWnY6bewg7KnXtvEPPaDgAFC0Sk3fbDCojGnp0XeSQwL0gSEgGPrjo4etQOtCsLOMhwje00cvjkASoF",
    :secret_key => "sk_test_51LQlvQIbgdr11x2Z73Z8dgcTakPVeb3sFPcqWeqVwM6D7Uq05Vwcmf2lTnUDpLnrFxQyYAmC1QX2USsbQ5URphxy00wJ8sbT6F"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]