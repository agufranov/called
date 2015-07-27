Template.phone.helpers
  createdAtCalendar: ->
    moment(@createdAt).calendar()

  modalId: ->
    "modal_#{@_id}"

Template.phone_edit.helpers
  beforeRemove: ->
    ->
      MaterializeModal.confirm
        title: 'Delete?'
        callback: (result) =>
          @remove() if result
          Router.go 'phones'

AutoForm.hooks
  phone_edit_form:
    onSuccess: ->
      Router.go 'phones'
