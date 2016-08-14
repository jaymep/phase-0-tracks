tv_programming = {
  tv_series: { 
    "tv_series_1" => "1_episode_1",
    "tv_series_2" => "2_episode_1",
    "tv_series_3" => "3_episode_1"
    },
  newscasts: [
    "morning_news",
    "evening_news",
    "breaking_news"],
  advertisements: [
    "cars",
    "food",
    "movies",
    ],
  sports: "football"
}

p tv_programming[:advertisements].reverse
p tv_programming[:newscasts][2]
p tv_programming[:sports].upcase + "!"
p tv_programming[1] = "Firefly"
p tv_programming[:tv_series].store("Spaced", "Gone")

tv_programming[:tv_series].each { | show, episode | p episode }