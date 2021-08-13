# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    locations = Location.create([
        {
            "name": "Commercial Broadway Station",
            "lat": 49.1527,
            "lng": -123.04480,
            "status": "green",
            "technicianDetails": ""
        }, {
            "name": "Waterfront Station",
            "lat": 49.17540,
            "lng": -123.062520,
            "status": "green",
            "technicianDetails": ""
        }, {
            "name": "Burrard Station",
            "lat": 49.2856,
            "lng": -123.1202,
            "status": "green",
            "technicianDetails": ""
        }, {
            "name": "Granville Station",
            "lat": 49.2831,
            "lng": -123.1157,
            "status": "green",
            "technicianDetails": ""
        }, {
            "name": "Stadium China Town",
            "lat": 49.2796,
            "lng": -123.1098,
            "status": "green",
            "technicianDetails": ""
        }, {
            "name": "Production Way Station",
            "lat": 49.2534,
            "lng": -122.9181,
            "status": "green",
            "technicianDetails": ""
        }])
