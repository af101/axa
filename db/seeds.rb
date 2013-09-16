# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
initial_causes = [
                  {:name                => "A001",
                   :luogo               => "Milano Aula 1",
                   :start_at            => "2013-09-25 08:00",
                   :end_at              => "2013-09-26 08:00",
                   :chiamante           => "Arturo Toscanini",
                   :chiamato            => "Gustavo Floberto",
                   :avvocato_chiamante  => "Azzecca Garbugli",
                   :avvocato_chiamato   => "Kevin Lomax",
                   :giudice             => "Larren Little",
                   :codice_causa        => "A001"},

                  {:name                => "A002",
                   :luogo               => "Milano Aula 1",
                   :start_at            => "2013-09-24 09:00",
                   :end_at              => "2013-09-29 09:00",
                   :chiamante           => "Arturo Garpenio",
                   :chiamato            => "Gustavo Lapinta",
                   :avvocato_chiamante  => "Kevin Lomax",
                   :avvocato_chiamato   => "Vincenzo Gallo",
                   :giudice             => "Chamberlain Harrel",
                   :codice_causa        => "A002"},

                  {:name                => "A003",
                   :luogo               => "Milano Aula 2",
                   :start_at            => "2013-09-27 09:00",
                   :end_at              => "2013-09-27 09:00",
                   :chiamante           => "Eufrasio Garpenio",
                   :chiamato            => "Affranto Soprano",
                   :avvocato_chiamante  => "Tom Logan",
                   :avvocato_chiamato   => "Laura Kelly",
                   :giudice             => "Richard Dawkins",
                   :codice_causa        => "A003"}
                 ]

#initial_causes.each do |causa|
#  Causa.create!(causa)
initial_causes.each do |causa|
  Event.create!(causa)
end
