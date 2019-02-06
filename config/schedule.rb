
# This task will update the draft contents to published.
every :day, at: '12:00am', roles: [:app] do
  runner "Content.make_published"
end
