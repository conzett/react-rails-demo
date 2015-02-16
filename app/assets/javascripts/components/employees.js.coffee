# @cjsx React.DOM

@Employees = React.createClass
  displayName: 'Employees'

  getInitialState: ->
    employees: @props.employees
    searchText: ''

  search: (term) ->
    @setState searchText: term

  addEmployee: (employee) ->
    employees = @state.employees.concat [employee]
    @setState employees: employees

  render: ->
    <div>
      <div className="row">
        <div className="col-md-6">
          <EmployeeHeader count={ @state.employees.length } />
        </div>
        <div className="col-md-6">
          <EmployeeSearch searchText={ @state.searchText } onSearch={ @search } />
        </div>
      </div>
      <div className="row">
        <div className="col-md-4">
          <EmployeeFields onSubmit={ @addEmployee } />
        </div>
        <div className="col-md-8">
          <EmployeeTable
            searchText={ @state.searchText }
            employees= { @state.employees } />
        </div>
      </div>
    </div>
