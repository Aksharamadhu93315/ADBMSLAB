use INVOICE
'switched to db INVOICE'
db.createCollection("CUSTOMER")
{ ok: 1 }
show collections
CUSTOMER
db.createCollection("PRODUCT")
{ ok: 1 }
show collections
CUSTOMER
PRODUCT
db.CUSTOMER.insertOne({name:"Anju",address:"Anju Bhavan",city:"Malapuram",age:"40",phone_no:"12345645"})
{ acknowledged: true,
  insertedId: ObjectId("62a6bb34995566e7a13d1405") }
db.CUSTOMER.insertMany([{name: "Sarath",address: "Sarath Nivas",city: "Calicut",age:"45"
,phone_no: "9886409789"},{name: "Nayana",address: "Nayans",city: "Kozhikode",age:"50"
,phone_no: "97890642"},{name: "jimin",address: "abcd",city: "kozhikode",age:"34",phone_no:
"9863665432"},{name: "Surya",address: "white house",city: "wandoor",age:"43",phone_no:
"9048857036"}])
{ acknowledged: true,
  insertedIds: 
   { '0': ObjectId("62a6bb68995566e7a13d1406"),
     '1': ObjectId("62a6bb68995566e7a13d1407"),
     '2': ObjectId("62a6bb68995566e7a13d1408"),
     '3': ObjectId("62a6bb68995566e7a13d1409") } }
db.PRODUCT.insertMany([{productName:"pen",price:"10",quantity:"10"},{productName:"pencil",price:"10",quantity:"3"},{productName:"sharpner",price:"5",quantity:"4"},{productName:"eraser",price:"8",quantity:"7"}])
{ acknowledged: true,
  insertedIds: 
   { '0': ObjectId("62a6bdbe995566e7a13d140a"),
     '1': ObjectId("62a6bdbe995566e7a13d140b"),
     '2': ObjectId("62a6bdbe995566e7a13d140c"),
     '3': ObjectId("62a6bdbe995566e7a13d140d") } }
db.CUSTOMER.find()
{ _id: ObjectId("62a6bb34995566e7a13d1405"),
  name: 'Anju',
  address: 'Anju Bhavan',
  city: 'Malapuram',
  age: '40',
  phone_no: '12345645' }
{ _id: ObjectId("62a6bb68995566e7a13d1406"),
  name: 'Sarath',
  address: 'Sarath Nivas',
  city: 'Calicut',
  age: '45',
  phone_no: '9886409789' }
{ _id: ObjectId("62a6bb68995566e7a13d1407"),
  name: 'Nayana',
  address: 'Nayans',
  city: 'Kozhikode',
  age: '50',
  phone_no: '97890642' }
{ _id: ObjectId("62a6bb68995566e7a13d1408"),
  name: 'jimin',
  address: 'abcd',
  city: 'kozhikode',
  age: '34',
  phone_no: '9863665432' }
{ _id: ObjectId("62a6bb68995566e7a13d1409"),
  name: 'Surya',
  address: 'white house',
  city: 'wandoor',
  age: '43',
  phone_no: '9048857036' }
db.CUSTOMER.find().pretty()
{ _id: ObjectId("62a6bb34995566e7a13d1405"),
  name: 'Anju',
  address: 'Anju Bhavan',
  city: 'Malapuram',
  age: '40',
  phone_no: '12345645' }
{ _id: ObjectId("62a6bb68995566e7a13d1406"),
  name: 'Sarath',
  address: 'Sarath Nivas',
  city: 'Calicut',
  age: '45',
  phone_no: '9886409789' }
{ _id: ObjectId("62a6bb68995566e7a13d1407"),
  name: 'Nayana',
  address: 'Nayans',
  city: 'Kozhikode',
  age: '50',
  phone_no: '97890642' }
{ _id: ObjectId("62a6bb68995566e7a13d1408"),
  name: 'jimin',
  address: 'abcd',
  city: 'kozhikode',
  age: '34',
  phone_no: '9863665432' }
{ _id: ObjectId("62a6bb68995566e7a13d1409"),
  name: 'Surya',
  address: 'white house',
  city: 'wandoor',
  age: '43',
  phone_no: '9048857036' }
db.PRODUCT.find().pretty()
{ _id: ObjectId("62a6bdbe995566e7a13d140a"),
  productName: 'pen',
  price: '10',
  quantity: '10' }
{ _id: ObjectId("62a6bdbe995566e7a13d140b"),
  productName: 'pencil',
  price: '10',
  quantity: '3' }
{ _id: ObjectId("62a6bdbe995566e7a13d140c"),
  productName: 'sharpner',
  price: '5',
  quantity: '4' }
{ _id: ObjectId("62a6bdbe995566e7a13d140d"),
  productName: 'eraser',
  price: '8',
  quantity: '7' }
db.CUSTOMER.updateOne(["city":"wandoor"],{$set:{"city":"kochi"}})
Error: clone(t={}){const r=t.loc||{};return e({loc:new Position("line"in r?r.line:this.loc.line,"column"in r?r.column:...<omitted>...)} could not be cloned.
db.CUSTOMER.updateOne({"city":"wandoor"},{$set:{"city":"kochi"}})
{ acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }
db.CUSTOMER.find({"city":"kochi"}).pretty()
{ _id: ObjectId("62a6bb68995566e7a13d1409"),
  name: 'Surya',
  address: 'white house',
  city: 'kochi',
  age: '43',
  phone_no: '9048857036' }
db.CUSTOMER.deleteOne({city:"Calicut"})
{ acknowledged: true, deletedCount: 1 }
db.CUSTOMER.find().pretty()
{ _id: ObjectId("62a6bb34995566e7a13d1405"),
  name: 'Anju',
  address: 'Anju Bhavan',
  city: 'Malapuram',
  age: '40',
  phone_no: '12345645' }
{ _id: ObjectId("62a6bb68995566e7a13d1407"),
  name: 'Nayana',
  address: 'Nayans',
  city: 'Kozhikode',
  age: '50',
  phone_no: '97890642' }
{ _id: ObjectId("62a6bb68995566e7a13d1408"),
  name: 'jimin',
  address: 'abcd',
  city: 'kozhikode',
  age: '34',
  phone_no: '9863665432' }
{ _id: ObjectId("62a6bb68995566e7a13d1409"),
  name: 'Surya',
  address: 'white house',
  city: 'kochi',
  age: '43',
  phone_no: '9048857036' }