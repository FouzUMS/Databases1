// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pat-mongo.mongodb.js

// Student ID: 35278307
// Student Name: Fouz Ul Mubeen

//Comments for your marker:

// ===================================================================================
// Do not add new comments to this playground
// OR modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("ffou0003");
db.getCollectionNames();

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.pat_records.drop();


// Create collection and insert documents
db.pat_records.insertMany(
    [
        {"_id":2002,"name":"Marie Dupont","licence_num":"34082A789012","no_of_trips":6,"suspended":"N","trips_info":[{"trip_id":12,"veh_vin":"28947294463762929","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"23-07-2024","actual_datetime":"23-07-2024"},"drop-off":{"location_id":107,"location_name":"North Paris Arena","intended_datetime":"23-07-2024","actual_datetime":"23-07-2024"}},{"trip_id":3,"veh_vin":"82738263826325651","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"20-07-2024","actual_datetime":"20-07-2024"},"drop-off":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"20-07-2024","actual_datetime":"20-07-2024"}},{"trip_id":1,"veh_vin":"82738263826325651","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"}},{"trip_id":8,"veh_vin":"27492267998911716","pick-up":{"location_id":104,"location_name":"Eiffel Tower Stadium","intended_datetime":"26-07-2024","actual_datetime":"26-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"26-07-2024","actual_datetime":"26-07-2024"}},{"trip_id":20,"veh_vin":"86125279171080189","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"29-07-2024","actual_datetime":"29-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"29-07-2024","actual_datetime":"29-07-2024"}},{"trip_id":6,"veh_vin":"27492267998911716","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"23-07-2024","actual_datetime":"23-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"23-07-2024","actual_datetime":"23-07-2024"}}]}, 
        {"_id":2003,"name":"Louis Dubois","licence_num":"45112B654321","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":18,"veh_vin":"36482739282080328","pick-up":{"location_id":104,"location_name":"Eiffel Tower Stadium","intended_datetime":"26-07-2024","actual_datetime":"26-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"26-07-2024","actual_datetime":"26-07-2024"}}]},                                                                                                                                                                                                                                                                                                                                                                                                                                                             
        {"_id":2004,"name":"Antoine Lefevre","licence_num":"670495098765","no_of_trips":4,"suspended":"N","trips_info":[{"trip_id":13,"veh_vin":"86125279171080189","pick-up":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"27-07-2024","actual_datetime":"27-07-2024"},"drop-off":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"27-07-2024","actual_datetime":"27-07-2024"}},{"trip_id":19,"veh_vin":"28786826725265628","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"29-07-2024","actual_datetime":"29-07-2024"},"drop-off":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"29-07-2024","actual_datetime":"29-07-2024"}},{"trip_id":7,"veh_vin":"86125279171080189","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"}},{"trip_id":5,"veh_vin":"82738263826325651","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"11-08-2024","actual_datetime":"11-08-2024"},"drop-off":{"location_id":107,"location_name":"North Paris Arena","intended_datetime":"12-08-2024","actual_datetime":"12-08-2024"}}]},                                                                                                                                                                                                                                                                                                                                                                                                                                             
        {"_id":2007,"name":"Jean Moreau","licence_num":"560903234567","no_of_trips":3,"suspended":"N","trips_info":[{"trip_id":11,"veh_vin":"28947294463762929","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"21-07-2024","actual_datetime":"21-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"21-07-2024","actual_datetime":"21-07-2024"}},{"trip_id":2,"veh_vin":"28786826725265628","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"22-07-2024","actual_datetime":"22-07-2024"}},{"trip_id":15,"veh_vin":"82738263826325651","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"25-07-2024","actual_datetime":"25-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"25-07-2024","actual_datetime":"25-07-2024"}}]},                                                                                                                                                                                                                                                                                                                                                                                                       
        {"_id":2013,"name":"Lei Xiong","licence_num":"441270890123","no_of_trips":4,"suspended":"N","trips_info":[{"trip_id":10,"veh_vin":"19781671156197253","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"21-07-2024","actual_datetime":"21-07-2024"},"drop-off":{"location_id":107,"location_name":"North Paris Arena","intended_datetime":"21-07-2024","actual_datetime":"21-07-2024"}},{"trip_id":16,"veh_vin":"19781671156197253","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"28-07-2024","actual_datetime":"28-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"28-07-2024","actual_datetime":"28-07-2024"}},{"trip_id":9,"veh_vin":"86125279171080189","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"24-07-2024","actual_datetime":"24-07-2024"},"drop-off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"25-07-2024","actual_datetime":"25-07-2024"}},{"trip_id":4,"veh_vin":"28786826725265628","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"11-08-2024","actual_datetime":"11-08-2024"},"drop-off":{"location_id":107,"location_name":"North Paris Arena","intended_datetime":"12-08-2024","actual_datetime":"12-08-2024"}}]},                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
        {"_id":2014,"name":"Claire Robert","licence_num":"55052a543210","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":110,"veh_vin":"1C4SDHCT9FC614231","pick-up":{"location_id":113,"location_name":"Olympic and Paralympic village","intended_datetime":"30-07-2024","actual_datetime":"30-07-2024"},"drop-off":{"location_id":111,"location_name":"Porte de La Chapelle Arena","intended_datetime":"30-07-2024","actual_datetime":"30-07-2024"}}]},                                                                                                                                                                                                                                                                                                                                                                                                                                     
        {"_id":2015,"name":"Nathalie Renaud","licence_num":"660725432109","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":14,"veh_vin":"99173626516397281","pick-up":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"27-07-2024","actual_datetime":"27-07-2024"},"drop-off":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"27-07-2024","actual_datetime":"27-07-2024"}},{"trip_id":17,"veh_vin":"82738263826325651","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"28-07-2024","actual_datetime":"28-07-2024"},"drop-off":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"28-07-2024","actual_datetime":"28-07-2024"}}]}                                                                       
        ]
)

// List all documents you added
db.pat_records.find();


// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.pat_records.find(
    {$or:[{"trips_info.drop-off.location_name": "Champions Park"},{"trips_info.drop-off.location_name": "Porte de La Chapelle Arena"}]}, 
    {"name":1, "licence_num":1});


// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new trip is added and the driver is suspended
db.pat_records.updateOne(
    {"_id": 2004},
    {$set: {"suspended": "Y"}, $set: {"no_of_trips": 5}}
);

db.pat_records.find({"_id":2004});

// Add new trip and set the driver to suspended
db.pat_records.find(
    {"_id": 2004},
    {"_id":1,"name":1,"licence_num":1,"no_of_trips":1,"trips_info":{$elemMatch:{"trip_id": 81}}}
);

db.pat_records.updateOne(
    {"_id":2004},
    {"$push":
        {
            "trips_info":
            {
                "trip_id":81,
                "veh_vin":"86125279171080189",
                "pick-up":
                {
                        "location_id":117,
                        "location_name":"Tuileries Garden",
                        "intended_datetime":"10-08-2024",
                        "actual_datetime":"10-08-2024"
                },
                "drop-off":{
                        "location_id":118,
                        "location_name":"Sainte-Chapelle",
                        "intended_datetime":"10-08-2024",
                        "actual_datetime":"10-08-2024"
                }
            }
        }
    }
);

// Illustrate/confirm changes made
db.pat_records.find(
    {"_id": 2004},
    {"_id":1,"name":1,"licence_num":1,"no_of_trips":1,"trips_info":{$elemMatch:{"trip_id": 81}}}
);

// db.pat_records.find({"_id":2004}); <-- shows full document for driver 2004
