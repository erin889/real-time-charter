Rails.application.routes.draw do
    root 'application#hello'
    get 'music-charts', to: 'charts#music_charts'
end
