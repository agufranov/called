Router.configure
  layoutTemplate: 'layout'

Router.map ->
  @route '/',
    name: 'phones'
    template: 'phones'
    waitOn: ->
      @subscribe 'phones.all'
    data: ->
      phones: Phones.find()

  @route '/phones/:_id',
    name: 'phone_edit'
    template: 'phone_edit'
    waitOn: ->
      @subscribe 'phones.all'
    data: ->
      Phones.findOne @params._id
