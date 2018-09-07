class ChartsController < ApplicationController

  # GET /music_charts
  def music_charts
    # @top_3_listening = Music.where(...)
    # count = @top_3_listening.count

    # @top_3_listening.each_with_index do |music,index|
    #   music_id = music.music_rails_id

    #   if count > 0 and index == 0
    #     @hours_listening_1 = ListeningAmount.hours_percents(music_id)
    #     @music_name_1 = Music.where(:music_rails_id => music_id).first.name
    #   elsif count > 1 and index == 1
    #     @hours_listening_2 = ListeningAmount.hours_percents(music_id)
    #     @music_name_2 = Music.where(:music_rails_id => music_id).first.name
    #   elsif count > 2 and index == 2
    #     @hours_listening_3 = ListeningAmount.hours_percents(music_id)
    #     @music_name_3 = Music.where(:music_rails_id => music_id).first.name
    #   end
    # end

  end
end
