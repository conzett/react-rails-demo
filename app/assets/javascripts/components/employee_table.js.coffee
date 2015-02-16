# @cjsx React.DOM

@EmployeeTable = React.createClass
  displayName: 'EmployeeTable'

  render: ->
    searchText = @props.searchText.toLowerCase()

    filtered = @props.employees.filter (employee) ->
      employee.first_name.toLowerCase().indexOf(searchText) > -1 ||
      employee.last_name.toLowerCase().indexOf(searchText) > -1

    employees = filtered.map (employee) ->
      <EmployeeTableRow employee={ employee } key={ employee.id } />

    <table className="table table-striped">
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>No. of Nerf Darts</th>
          <th>Manager?</th>
        </tr>
      </thead>
      <tbody>{ employees }</tbody>
    </table>
