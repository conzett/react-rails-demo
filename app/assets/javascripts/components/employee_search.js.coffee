# @cjsx React.DOM

@EmployeeSearch = React.createClass
  displayName: 'EmployeeSearch'

  handleChange: (event) ->
    event.preventDefault()
    searchTerm = @refs.employeeSearchInput.getDOMNode().value
    @props.onSearch searchTerm

  render: ->
    <input className="form-control"
           onChange={ @handleChange }
           id="search"
           placeholder="Search…"
           ref="employeeSearchInput"
           type="search"
           value={ @props.searchText } />
