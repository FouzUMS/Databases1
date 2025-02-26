use("ffou0003");

db.getCollectionNames();

db.studentenrolment.drop();

db.getCollectionNames();

db.studentenrolment.insertOne({
  _id: 11443959,
  name: "Geraldine Lomb",
  contactInfo: {
    address: "55 Northwestern Trail, Toorak",
    phone: "4819717953",
    email: "Geraldine.Lomb@student.monash.edu",
  },
  enrolmentInfo: [
    { unitcode: "FIT1045", year: "2020", semester: 2, mark: 39, grade: "N" },
    { unitcode: "FIT2094", year: "2021", semester: 2, mark: 51, grade: "P" },
    { unitcode: "FIT3157", year: "2021", semester: 1, mark: 74, grade: "D" },
    { unitcode: "FIT2094", year: "2021", semester: 1, mark: 38, grade: "N" },
    { unitcode: "FIT1050", year: "2020", semester: 2, mark: 50, grade: "P" },
  ],
});

db.studentenrolment.insertMany([
        {"_id":11620237,"name":"Marlane Joiris","contactInfo":{"address":"385 Warbler Road, Preston","phone":"5493750951","email":"Marlane.Joiris@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2020","semester":2,"mark":74,"grade":"D"},{"unitcode":"FIT3176","year":"2021","semester":2,"mark":93,"grade":"HD"},{"unitcode":"FIT3157","year":"2021","semester":1,"mark":null,"grade":"DEF"},{"unitcode":"FIT2094","year":"2021","semester":1,"mark":33,"grade":"N"},{"unitcode":"FIT1050","year":"2020","semester":2,"mark":57,"grade":"P"}]},                     
        {"_id":12489379,"name":"Gilberto Bwy","contactInfo":{"address":"5664 Loomis Parkway, Melbourne","phone":"7037621034","email":"Gilberto.Bwy@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":40,"grade":"N"},{"unitcode":"FIT2094","year":"2020","semester":1,"mark":63,"grade":"C"},{"unitcode":"FIT1050","year":"2019","semester":2,"mark":92,"grade":"HD"},{"unitcode":"FIT1045","year":"2019","semester":2,"mark":89,"grade":"HD"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":44,"grade":"N"}]},                       
        {"_id":12511467,"name":"Francyne Rigney","contactInfo":{"address":"75 Buhler Street, Mulgrave","phone":"6994152403","email":"Francyne.Rigney@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":87,"grade":"HD"},{"unitcode":"FIT3176","year":"2020","semester":1,"mark":null,"grade":"WH"},{"unitcode":"FIT3157","year":"2019","semester":2,"mark":98,"grade":"HD"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":83,"grade":"HD"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":86,"grade":"HD"}]},                
        {"_id":12609485,"name":"Cassondra Sedcole","contactInfo":{"address":"6507 Tennessee Alley, Melbourne","phone":"8343944500","email":"Cassondra.Sedcole@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":85,"grade":"HD"},{"unitcode":"FIT1050","year":"2020","semester":1,"mark":44,"grade":"N"},{"unitcode":"FIT1050","year":"2019","semester":2,"mark":36,"grade":"N"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":69,"grade":"C"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":23,"grade":"N"}]},             
        {"_id":12802225,"name":"Friedrick Geist","contactInfo":{"address":"99271 Eliot Pass, Dingley","phone":"6787553656","email":"Friedrick.Geist@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":83,"grade":"HD"},{"unitcode":"FIT3176","year":"2020","semester":1,"mark":null,"grade":"WH"},{"unitcode":"FIT3157","year":"2019","semester":2,"mark":62,"grade":"C"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":52,"grade":"P"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":61,"grade":"C"}]},                    
        {"_id":12842838,"name":"Herminia Mendus","contactInfo":{"address":"64186 East Lane, Moorabbin","phone":"4896374903","email":"Herminia.Mendus@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":74,"grade":"D"},{"unitcode":"FIT3176","year":"2020","semester":1,"mark":null,"grade":"WH"},{"unitcode":"FIT3157","year":"2019","semester":2,"mark":71,"grade":"D"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":58,"grade":"P"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":76,"grade":"D"}]},                    
        {"_id":13019582,"name":"Tani Aitchison","contactInfo":{"address":"842 Paget Drive, Mount Waverley","phone":"7352456677","email":"Tani.Aitchison@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2020","semester":2,"mark":null,"grade":"WH"},{"unitcode":"FIT1050","year":"2021","semester":2,"mark":47,"grade":"N"},{"unitcode":"FIT3157","year":"2021","semester":1,"mark":81,"grade":"HD"},{"unitcode":"FIT2094","year":"2021","semester":1,"mark":42,"grade":"N"},{"unitcode":"FIT1050","year":"2020","semester":2,"mark":20,"grade":"N"}]},                
        {"_id":13028303,"name":"Herculie Mendus","contactInfo":{"address":"44 Becker Street, Mulgrave","phone":"2309618710","email":"Herculie.Mendus@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":61,"grade":"C"},{"unitcode":"FIT3176","year":"2020","semester":1,"mark":null,"grade":null},{"unitcode":"FIT3157","year":"2019","semester":2,"mark":65,"grade":"C"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":88,"grade":"HD"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":97,"grade":"HD"}]},                  
        {"_id":13119134,"name":"Shandra Lindblom","contactInfo":{"address":"9241 Rieder Parkway, Chelsea","phone":"4384142213","email":"Shandra.Lindblom@student.monash.edu"},"enrolmentInfo":[{"unitcode":"FIT1045","year":"2019","semester":1,"mark":62,"grade":"C"},{"unitcode":"FIT3176","year":"2020","semester":1,"mark":null,"grade":null},{"unitcode":"FIT3157","year":"2019","semester":2,"mark":82,"grade":"HD"},{"unitcode":"FIT2094","year":"2019","semester":2,"mark":64,"grade":"C"},{"unitcode":"FIT1050","year":"2019","semester":1,"mark":91,"grade":"HD"}]}                     
]);


db.studentenrolment.find();


db.studentenrolment.find({"_id": 13119134});


// //  4
// db.studentenrolment.find(
//     {"_id": 13119134}
// );
// db.studentenrolment.updateOne(
//     {"_id": 13119134}
//     {"$push": (
//         "enrolmentInfo": {
//             "unitcode": "FIT3074",
//             "year": "2022",
//             "semester": 1,
//             "mark": null,
//             "grade": null
//         }
//     )
// }
// );

// db.studentenrolment.find({"_id": 13119134});


//5
db.studentenrolment.find({"_id":12609485});

db.studentenrolment.updateOne(
    {"_id":12609485},
    {"$set": {"name": "Cassondra Williams", "contactInfo.phone":"0412999999"}}
);

db.studentenrolment.find({"_id":12609485});



db.studentenrolment.countDocuments();


db.studentenrolment.find({"_id":12489379});

db.studentenrolment.deleteOne({"_id":12489379});

db.studentenrolment.find({"_id":12489379});

db.studentenrolment.countDocuments();

