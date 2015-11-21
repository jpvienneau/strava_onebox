# name: strava_onebox
# about: Strava Onebox for embedding strava rides
# version: 0.3
# authors: Ewan McDougall
# forked and modified by Jeff Vienneau

Onebox = Onebox

module Onebox
  module Engine
    class StravaOnebox
      include Engine
      # https://www.strava.com/athletes/1295948/activity-summary/f8bf8818d3b853d7c60b279cd57009a3fb27c9da
      # https://www.strava.com/activities/348709246/embed/1f3774d8ded1d2543ad5997f007d73b41d5d24d7
      # https://www.strava.com/athletes/1295948/latest-rides/f8bf8818d3b853d7c60b279cd57009a3fb27c9da
      REGEX = /^https?:\/\/www\.strava\.com\/(activities|athletes)\/[0-9]*\/(embed|activity-summary|latest-rides)\/[0-9A-Za-z]*/
      matches_regexp REGEX

      def to_html
        "<iframe height='405' width='590' frameborder='0' allowtransparency='true' scrolling='no' src='#{@url}'></iframe>"
      end
    end
  end
end
