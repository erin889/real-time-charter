desc 'The task will be called by the Heroku scheduler'

task update_listening_amount: [:environment] do
  UpdateListeningAmountJob.perform_now
end
