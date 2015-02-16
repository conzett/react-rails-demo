# @cjsx React.DOM

@EmployeeFields = React.createClass
  displayName: 'EmployeeFields'

  handleSubmit: (event) ->
    event.preventDefault()
    employee =
      id: new Date().getTime()
      first_name:  @refs.firstName.getDOMNode().value
      last_name:   @refs.lastName.getDOMNode().value
      no_of_darts: @refs.noOfDarts.getDOMNode().value
      manager:     @refs.manager.getDOMNode().checked
    @props.onSubmit employee

  render: ->
    <form onSubmit={ @handleSubmit } >
      <fieldset>
        <legend>New Employee</legend>

        <div className="form-group">
          <input className="form-control" type="text" placeholder="First Name" ref="firstName"></input>
        </div>

        <div className="form-group">
          <input className="form-control" type="text" placeholder="Last Name" ref="lastName"></input>
        </div>
      
        <div className="form-group row">
          <label className="col-md-6" htmlFor="number-of-darts">No. of Nerf Darts</label>
          <div className="col-md-6">
            <input className="form-control" id="number-of-darts" type="number" ref="noOfDarts"></input>
          </div>
        </div>

        <div className="form-group row">
          <div className="checkbox col-md-6">
            <label>
              <input type="checkbox" id="manager" ref="manager"></input>
              Manager?
            </label>
          </div>
          <div className="col-md-6">
            <button className="btn btn-primary btn-block" type="submit">Add</button>
          </div>
        </div>
      </fieldset>
    </form>
