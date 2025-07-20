# Development-specific seeds
# Run with: rails db:seed:development

puts "🌱 Loading development seeds..."

# Add some additional development-specific tasks
development_tasks = [
  {
    title: "Debug login issue",
    description: "Investigate why users are getting logged out unexpectedly",
    priority: "High",
    due_date: Date.current + 1.day,
    completed: false
  },
  {
    title: "Add search functionality",
    description: "Implement task search with filters and sorting options",
    priority: "Medium",
    due_date: Date.current + 5.days,
    completed: false
  },
  {
    title: "Optimize database queries",
    description: "Add database indexes and optimize slow queries",
    priority: "Medium",
    due_date: Date.current + 3.days,
    completed: false
  },
  {
    title: "Add task categories",
    description: "Implement task categorization feature with tags",
    priority: "Low",
    due_date: Date.current + 8.days,
    completed: false
  },
  {
    title: "Setup development environment",
    description: "Configure local development environment for new team members",
    priority: "Low",
    due_date: Date.current + 2.days,
    completed: true
  },
  {
    title: "Write API documentation",
    description: "Document REST API endpoints for external integrations",
    priority: "Medium",
    due_date: Date.current + 6.days,
    completed: false
  },
  {
    title: "Add email notifications",
    description: "Implement email notifications for task assignments and due dates",
    priority: "High",
    due_date: Date.current + 4.days,
    completed: false
  },
  {
    title: "Create admin dashboard",
    description: "Build admin interface for managing users and system settings",
    priority: "Low",
    due_date: Date.current + 12.days,
    completed: false
  },
  {
    title: "Add task templates",
    description: "Create reusable task templates for common workflows",
    priority: "Medium",
    due_date: Date.current + 7.days,
    completed: false
  },
  {
    title: "Implement task dependencies",
    description: "Add support for task dependencies and blocking relationships",
    priority: "Low",
    due_date: Date.current + 15.days,
    completed: false
  }
]

# Create development tasks
development_tasks.each_with_index do |task_data, index|
  created_at = Time.current - (index * 3).hours
  updated_at = created_at + rand(1..120).minutes

  Task.create!(
    title: task_data[:title],
    description: task_data[:description],
    priority: task_data[:priority],
    due_date: task_data[:due_date],
    completed: task_data[:completed],
    created_at: created_at,
    updated_at: updated_at
  )
end

puts "✅ Development seeds loaded successfully!"
puts "📊 Total tasks in database: #{Task.count}"
puts "🎯 You now have a rich dataset to test all features!"
