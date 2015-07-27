PhoneSchema = new SimpleSchema
  phone: type: String, regEx: /[0-9]{10}/, min: 10, max: 10
  comment: type: String, optional: true
  createdAt: type: Date, autoValue: -> new Date()

@Phones = new Meteor.Collection 'phones'

Phones.attachSchema PhoneSchema

Phones.allow
  insert: ->
    console.log arguments
    true
  update: ->
    console.log arguments
    true
  remove: ->
    console.log arguments
    true

# Phones.initEasySearch 'phone'

EasySearch.createSearchIndex 'phones',
  collection: Phones
  field: 'phone'
  limit: 20
  sort: ->
    createdAt: -1
