json.employees do
  json.array! Employee.all, partial: 'employees/employee', as: :employee
end
