Meteor.publish 'phones.all', ->
  Phones.find()
