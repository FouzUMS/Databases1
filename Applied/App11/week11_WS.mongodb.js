use('ffou0003');

db.version();

db.getCollectionNames();

//crud (create, retreive, update, delete)

//drop collection
db.dronerent.drop();

//create collection
db.dronerent.insertOne(
    {
        "drone_id": 100,
        "type": {
            "code": "DMA2",
            "model": "DJI Mavic Air 2 Flymore Combo",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 0,
        "pur_date": "2021-01-13",
        "pur_price": 1494,
        "total_flighttime": 100,
        "cost_per_hour": 15,
        "RentalInfo": [
            {
                "rent_no": 1,
                "bond": 100,
                "rent_out": "2021-02-20",
                "rent_in": "2021-02-20",
                "custtrain_id": 1
            },
            {
                "rent_no": 4,
                "bond": 100,
                "rent_out": "2021-02-22",
                "rent_in": "2021-02-25",
                "custtrain_id": 4
            }
        ]
    },
    {
        "drone_id": 101,
        "type": {
            "code": "DMA2",
            "model": "DJI Mavic Air 2 Flymore Combo",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 0,
        "pur_date": "2021-01-13",
        "pur_price": 1494,
        "total_flighttime": 60,
        "cost_per_hour": 15,
        "RentalInfo": [
            {
                "rent_no": 2,
                "bond": 100,
                "rent_out": "2021-02-21",
                "rent_in": "2021-02-22",
                "custtrain_id": 2
            },
            {
                "rent_no": 5,
                "bond": 100,
                "rent_out": "2021-02-25",
                "rent_in": "2021-02-25",
                "custtrain_id": 5
            },
            {
                "rent_no": 10,
                "bond": 100,
                "rent_out": "2021-03-10",
                "rent_in": "2021-03-18",
                "custtrain_id": 1
            }
        ]
    },
    {
        "drone_id": 102,
        "type": {
            "code": "DSPA",
            "model": "DJI Spark",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 2,
        "pur_date": "2021-01-13",
        "pur_price": 872.44,
        "total_flighttime": 45.5,
        "cost_per_hour": 9,
        "RentalInfo": [
            {
                "rent_no": 3,
                "bond": 100,
                "rent_out": "2021-02-22",
                "rent_in": "2021-02-23",
                "custtrain_id": 3
            },
            {
                "rent_no": 6,
                "bond": 200,
                "rent_out": "2021-02-28",
                "rent_in": "2021-03-28",
                "custtrain_id": 6
            }
        ]
    },
    {
        "drone_id": 103,
        "type": {
            "code": "DIN2",
            "model": "DJI Inspire 2",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 5,
        "pur_date": "2021-01-13",
        "pur_price": 5300,
        "total_flighttime": 200,
        "cost_per_hour": 55,
        "RentalInfo": [
            {
                "rent_no": 7,
                "bond": 200,
                "rent_out": "2021-03-01",
                "rent_in": "2021-03-02",
                "custtrain_id": 7
            },
            {
                "rent_no": 8,
                "bond": 200,
                "rent_out": "2021-03-03",
                "rent_in": "2021-03-04",
                "custtrain_id": 8
            },
            {
                "rent_no": 9,
                "bond": 200,
                "rent_out": "2021-03-06",
                "rent_in": "2021-03-10",
                "custtrain_id": 9
            },
            {
                "rent_no": 15,
                "bond": 200,
                "rent_out": "2021-05-01",
                "rent_in": "2021-05-02",
                "custtrain_id": 8
            },
            {
                "rent_no": 16,
                "bond": 200,
                "rent_out": "2021-05-03",
                "rent_in": "2021-05-10",
                "custtrain_id": 9
            }
        ]
    },
    {
        "drone_id": 111,
        "type": {
            "code": "PAPR",
            "model": "Parrot Pro",
            "manufacturer": "Parrot"
        },
        "carrying_capacity": 5,
        "pur_date": "2021-03-20",
        "pur_price": 4200,
        "total_flighttime": 100,
        "cost_per_hour": 45,
        "RentalInfo": [
            {
                "rent_no": 11,
                "bond": 150,
                "rent_out": "2021-04-26",
                "rent_in": "2021-04-28",
                "custtrain_id": 10
            }
        ]
    },
    {
        "drone_id": 112,
        "type": {
            "code": "PAPR",
            "model": "Parrot Pro",
            "manufacturer": "Parrot"
        },
        "carrying_capacity": 5,
        "pur_date": "2021-03-20",
        "pur_price": 4200,
        "total_flighttime": 40,
        "cost_per_hour": 45,
        "RentalInfo": [
            {
                "rent_no": 12,
                "bond": 150,
                "rent_out": "2021-04-26",
                "rent_in": "2021-04-27",
                "custtrain_id": 11
            },
            {
                "rent_no": 17,
                "bond": 150,
                "rent_out": "2021-05-03",
                "rent_in": "2021-05-07",
                "custtrain_id": 14
            }
        ]
    },
    {
        "drone_id": 113,
        "type": {
            "code": "PAPR",
            "model": "Parrot Pro",
            "manufacturer": "Parrot"
        },
        "carrying_capacity": 5,
        "pur_date": "2021-03-20",
        "pur_price": 4000,
        "total_flighttime": 150,
        "cost_per_hour": 45,
        "RentalInfo": [
            {
                "rent_no": 13,
                "bond": 150,
                "rent_out": "2021-04-28",
                "rent_in": "2021-04-29",
                "custtrain_id": 12
            },
            {
                "rent_no": 18,
                "bond": 150,
                "rent_out": "2021-05-03",
                "rent_in": "2021-05-12",
                "custtrain_id": 15
            }
        ]
    },
    {
        "drone_id": 117,
        "type": {
            "code": "PAPR",
            "model": "Parrot Pro",
            "manufacturer": "Parrot"
        },
        "carrying_capacity": 5,
        "pur_date": "2021-03-20",
        "pur_price": 4000,
        "total_flighttime": 100.5,
        "cost_per_hour": 45,
        "RentalInfo": [
            {
                "rent_no": 14,
                "bond": 150,
                "rent_out": "2021-04-28",
                "rent_in": "2021-05-05",
                "custtrain_id": 13
            }
        ]
    },
    {
        "drone_id": 118,
        "type": {
            "code": "SWPS",
            "model": "SwellPro Spry",
            "manufacturer": "SwellPro"
        },
        "carrying_capacity": 0,
        "pur_date": "2021-04-01",
        "pur_price": 1599,
        "total_flighttime": 56.3,
        "cost_per_hour": 16,
        "RentalInfo": [
            {
                "rent_no": 19,
                "bond": 180,
                "rent_out": "2021-05-17",
                "rent_in": "2021-05-18",
                "custtrain_id": 16
            },
            {
                "rent_no": 20,
                "bond": 180,
                "rent_out": "2021-05-19",
                "rent_in": "2021-05-23",
                "custtrain_id": 17
            },
            {
                "rent_no": 21,
                "bond": 180,
                "rent_out": "2021-05-28",
                "rent_in": "2021-05-29",
                "custtrain_id": 18
            },
            {
                "rent_no": 22,
                "bond": 180,
                "rent_out": "2021-06-01",
                "rent_in": "2021-06-07",
                "custtrain_id": 19
            },
            {
                "rent_no": 25,
                "bond": 180,
                "rent_out": "2022-08-23",
                "rent_in": null,
                "custtrain_id": 18
            }
        ]
    },
    {
        "drone_id": 119,
        "type": {
            "code": "DIN2",
            "model": "DJI Inspire 2",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 5,
        "pur_date": "2022-04-01",
        "pur_price": 5600.8,
        "total_flighttime": 10.2,
        "cost_per_hour": 60,
        "RentalInfo": [
            {
                "rent_no": 23,
                "bond": 250,
                "rent_out": "2022-08-21",
                "rent_in": null,
                "custtrain_id": 20
            }
        ]
    },
    {
        "drone_id": 120,
        "type": {
            "code": "DIN2",
            "model": "DJI Inspire 2",
            "manufacturer": "DJI Da-Jiang Innovations"
        },
        "carrying_capacity": 5,
        "pur_date": "2022-04-01",
        "pur_price": 4200,
        "total_flighttime": 25.8,
        "cost_per_hour": 60,
        "RentalInfo": [
            {
                "rent_no": 24,
                "bond": 150,
                "rent_out": "2022-08-22",
                "rent_in": null,
                "custtrain_id": 21
            }
        ]
    }
);


//insert many collections
//use [], as it is an array
db.dronerent.insertMany(
    [
        {
            "drone_id": 100,
            "type": {
                "code": "DMA2",
                "model": "DJI Mavic Air 2 Flymore Combo",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 0,
            "pur_date": "2021-01-13",
            "pur_price": 1494,
            "total_flighttime": 100,
            "cost_per_hour": 15,
            "RentalInfo": [
                {
                    "rent_no": 1,
                    "bond": 100,
                    "rent_out": "2021-02-20",
                    "rent_in": "2021-02-20",
                    "custtrain_id": 1
                },
                {
                    "rent_no": 4,
                    "bond": 100,
                    "rent_out": "2021-02-22",
                    "rent_in": "2021-02-25",
                    "custtrain_id": 4
                }
            ]
        },
        {
            "drone_id": 101,
            "type": {
                "code": "DMA2",
                "model": "DJI Mavic Air 2 Flymore Combo",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 0,
            "pur_date": "2021-01-13",
            "pur_price": 1494,
            "total_flighttime": 60,
            "cost_per_hour": 15,
            "RentalInfo": [
                {
                    "rent_no": 2,
                    "bond": 100,
                    "rent_out": "2021-02-21",
                    "rent_in": "2021-02-22",
                    "custtrain_id": 2
                },
                {
                    "rent_no": 5,
                    "bond": 100,
                    "rent_out": "2021-02-25",
                    "rent_in": "2021-02-25",
                    "custtrain_id": 5
                },
                {
                    "rent_no": 10,
                    "bond": 100,
                    "rent_out": "2021-03-10",
                    "rent_in": "2021-03-18",
                    "custtrain_id": 1
                }
            ]
        },
        {
            "drone_id": 102,
            "type": {
                "code": "DSPA",
                "model": "DJI Spark",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 2,
            "pur_date": "2021-01-13",
            "pur_price": 872.44,
            "total_flighttime": 45.5,
            "cost_per_hour": 9,
            "RentalInfo": [
                {
                    "rent_no": 3,
                    "bond": 100,
                    "rent_out": "2021-02-22",
                    "rent_in": "2021-02-23",
                    "custtrain_id": 3
                },
                {
                    "rent_no": 6,
                    "bond": 200,
                    "rent_out": "2021-02-28",
                    "rent_in": "2021-03-28",
                    "custtrain_id": 6
                }
            ]
        },
        {
            "drone_id": 103,
            "type": {
                "code": "DIN2",
                "model": "DJI Inspire 2",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 5,
            "pur_date": "2021-01-13",
            "pur_price": 5300,
            "total_flighttime": 200,
            "cost_per_hour": 55,
            "RentalInfo": [
                {
                    "rent_no": 7,
                    "bond": 200,
                    "rent_out": "2021-03-01",
                    "rent_in": "2021-03-02",
                    "custtrain_id": 7
                },
                {
                    "rent_no": 8,
                    "bond": 200,
                    "rent_out": "2021-03-03",
                    "rent_in": "2021-03-04",
                    "custtrain_id": 8
                },
                {
                    "rent_no": 9,
                    "bond": 200,
                    "rent_out": "2021-03-06",
                    "rent_in": "2021-03-10",
                    "custtrain_id": 9
                },
                {
                    "rent_no": 15,
                    "bond": 200,
                    "rent_out": "2021-05-01",
                    "rent_in": "2021-05-02",
                    "custtrain_id": 8
                },
                {
                    "rent_no": 16,
                    "bond": 200,
                    "rent_out": "2021-05-03",
                    "rent_in": "2021-05-10",
                    "custtrain_id": 9
                }
            ]
        },
        {
            "drone_id": 111,
            "type": {
                "code": "PAPR",
                "model": "Parrot Pro",
                "manufacturer": "Parrot"
            },
            "carrying_capacity": 5,
            "pur_date": "2021-03-20",
            "pur_price": 4200,
            "total_flighttime": 100,
            "cost_per_hour": 45,
            "RentalInfo": [
                {
                    "rent_no": 11,
                    "bond": 150,
                    "rent_out": "2021-04-26",
                    "rent_in": "2021-04-28",
                    "custtrain_id": 10
                }
            ]
        },
        {
            "drone_id": 112,
            "type": {
                "code": "PAPR",
                "model": "Parrot Pro",
                "manufacturer": "Parrot"
            },
            "carrying_capacity": 5,
            "pur_date": "2021-03-20",
            "pur_price": 4200,
            "total_flighttime": 40,
            "cost_per_hour": 45,
            "RentalInfo": [
                {
                    "rent_no": 12,
                    "bond": 150,
                    "rent_out": "2021-04-26",
                    "rent_in": "2021-04-27",
                    "custtrain_id": 11
                },
                {
                    "rent_no": 17,
                    "bond": 150,
                    "rent_out": "2021-05-03",
                    "rent_in": "2021-05-07",
                    "custtrain_id": 14
                }
            ]
        },
        {
            "drone_id": 113,
            "type": {
                "code": "PAPR",
                "model": "Parrot Pro",
                "manufacturer": "Parrot"
            },
            "carrying_capacity": 5,
            "pur_date": "2021-03-20",
            "pur_price": 4000,
            "total_flighttime": 150,
            "cost_per_hour": 45,
            "RentalInfo": [
                {
                    "rent_no": 13,
                    "bond": 150,
                    "rent_out": "2021-04-28",
                    "rent_in": "2021-04-29",
                    "custtrain_id": 12
                },
                {
                    "rent_no": 18,
                    "bond": 150,
                    "rent_out": "2021-05-03",
                    "rent_in": "2021-05-12",
                    "custtrain_id": 15
                }
            ]
        },
        {
            "drone_id": 117,
            "type": {
                "code": "PAPR",
                "model": "Parrot Pro",
                "manufacturer": "Parrot"
            },
            "carrying_capacity": 5,
            "pur_date": "2021-03-20",
            "pur_price": 4000,
            "total_flighttime": 100.5,
            "cost_per_hour": 45,
            "RentalInfo": [
                {
                    "rent_no": 14,
                    "bond": 150,
                    "rent_out": "2021-04-28",
                    "rent_in": "2021-05-05",
                    "custtrain_id": 13
                }
            ]
        },
        {
            "drone_id": 118,
            "type": {
                "code": "SWPS",
                "model": "SwellPro Spry",
                "manufacturer": "SwellPro"
            },
            "carrying_capacity": 0,
            "pur_date": "2021-04-01",
            "pur_price": 1599,
            "total_flighttime": 56.3,
            "cost_per_hour": 16,
            "RentalInfo": [
                {
                    "rent_no": 19,
                    "bond": 180,
                    "rent_out": "2021-05-17",
                    "rent_in": "2021-05-18",
                    "custtrain_id": 16
                },
                {
                    "rent_no": 20,
                    "bond": 180,
                    "rent_out": "2021-05-19",
                    "rent_in": "2021-05-23",
                    "custtrain_id": 17
                },
                {
                    "rent_no": 21,
                    "bond": 180,
                    "rent_out": "2021-05-28",
                    "rent_in": "2021-05-29",
                    "custtrain_id": 18
                },
                {
                    "rent_no": 22,
                    "bond": 180,
                    "rent_out": "2021-06-01",
                    "rent_in": "2021-06-07",
                    "custtrain_id": 19
                },
                {
                    "rent_no": 25,
                    "bond": 180,
                    "rent_out": "2022-08-23",
                    "rent_in": null,
                    "custtrain_id": 18
                }
            ]
        },
        {
            "drone_id": 119,
            "type": {
                "code": "DIN2",
                "model": "DJI Inspire 2",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 5,
            "pur_date": "2022-04-01",
            "pur_price": 5600.8,
            "total_flighttime": 10.2,
            "cost_per_hour": 60,
            "RentalInfo": [
                {
                    "rent_no": 23,
                    "bond": 250,
                    "rent_out": "2022-08-21",
                    "rent_in": null,
                    "custtrain_id": 20
                }
            ]
        },
        {
            "drone_id": 120,
            "type": {
                "code": "DIN2",
                "model": "DJI Inspire 2",
                "manufacturer": "DJI Da-Jiang Innovations"
            },
            "carrying_capacity": 5,
            "pur_date": "2022-04-01",
            "pur_price": 4200,
            "total_flighttime": 25.8,
            "cost_per_hour": 60,
            "RentalInfo": [
                {
                    "rent_no": 24,
                    "bond": 150,
                    "rent_out": "2022-08-22",
                    "rent_in": null,
                    "custtrain_id": 21
                }
            ]
        }
    ]
);

//check number of documents
db.dronerent.countDocuments();


//MongoDB is very case sensitive. 
//droneRent vs dronerent example by prof
//also, it will return empty arrays if there's a type unlike..
//..crashing like oracle


//R: RETRIEVE
db.dronerent.find();

//find the details of drone id 102
db.dronerent.find(
    {
        "drone_id":{"$eq":102}
    }
);


//find all drones with type DIN2
db.dronerent.find(
    {
        "type.code":{"$eq":"DIN2"}
    }
);

//drones with carrying capacity >4
db.dronerent.find(
    {
        "carrying_capacity":{"$gt":4}
    },
    //what we want to display (like select)
    //suppress (exclude) by giving value 0
    {
        "drone_id":1,
        "type.model":1,
        "_id":0
    }
);


//UPDATE
db.dronerent.find(
    {
        "drone_id":{"$eq":103}
    }
);

db.dronerent.updateOne(
    {
        "drone_id":{"$eq":103}
    },
    {
        "$set":{
            "total_flighttime":{"$eq":230}
        }
    }
)


//DELETE
//db.dronerent.deleteOne