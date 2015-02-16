# @cjsx React.DOM

@EmployeeHeader = React.createClass
  displayName: 'EmployeeHeader'

  render: ->
    <h2>Employees ({ @props.count })</h2>
