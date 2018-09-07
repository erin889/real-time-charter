class UpdateListeningAmountJob < ActiveJob::Base

  # Equal to the frequency of the job
  COOLDOWN_PERIOD = 1.hour
  MAX_RECORDS_AMOUNT = 2 * 7 * 24

  def perform
    listed_music = Music.where(:stage__c => "Listed Music")

    listed_music.each do |m|
      music_id = listed_music.music_rails_id
      amount = listed_music.amount
      record = ListeningAmount.new(:amount => amount, :music_rails_id => music_id)
      record.save

      count = ListeningAmount.where(music_rails_id: music_id).count
      if count > MAX_RECORDS_AMOUNT
        to_delete = ListeningAmount.where(music_rails_id: music_id).order('created_at DESC').last
        to_delete.destroy
      end
    end
  end
end