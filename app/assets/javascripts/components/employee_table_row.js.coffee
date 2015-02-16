# @cjsx React.DOM

@EmployeeTableRow = React.createClass
  displayName: 'EmployeeTableRow'

  render: ->
    <tr>
      <td>{ @props.employee.first_name }</td>
      <td>{ @props.employee.last_name }</td>
      <td>{ @props.employee.no_of_darts }</td>
      <td>{ if @props.employee.manager then 'Yes' else 'No' }</td>
    </tr>
