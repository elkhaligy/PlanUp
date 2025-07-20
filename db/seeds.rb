# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "🌱 Seeding database with sample tasks..."

# Clear existing tasks to avoid duplicates
Task.destroy_all

# Sample tasks with various priorities, due dates, and completion status
tasks_data = [
  {
    title: "Complete Rails project documentation",
    description: "Write comprehensive README, API documentation, and deployment guide for the todo application",
    priority: "High",
    due_date: Date.current + 3.days,
    completed: false
  },
  {
    title: "Review pull requests",
    description: "Go through pending PRs and provide feedback to team members",
    priority: "High",
    due_date: Date.current + 1.day,
    completed: false
  },
  {
    title: "Setup CI/CD pipeline",
    description: "Configure GitHub Actions for automated testing and deployment",
    priority: "Medium",
    due_date: Date.current + 5.days,
    completed: false
  },
  {
    title: "Update dependencies",
    description: "Check for outdated gems and update them to latest stable versions",
    priority: "Medium",
    due_date: Date.current + 7.days,
    completed: false
  },
  {
    title: "Write unit tests",
    description: "Add comprehensive test coverage for all models and controllers",
    priority: "High",
    due_date: Date.current + 2.days,
    completed: false
  },
  {
    title: "Design user interface mockups",
    description: "Create wireframes and mockups for the new feature",
    priority: "Low",
    due_date: Date.current + 10.days,
    completed: false
  },
  {
    title: "Attend team meeting",
    description: "Weekly standup meeting to discuss progress and blockers",
    priority: "Medium",
    due_date: Date.current,
    completed: true
  },
  {
    title: "Deploy to staging environment",
    description: "Deploy the latest changes to staging for testing",
    priority: "High",
    due_date: Date.current - 1.day,
    completed: true
  },
  {
    title: "Fix critical bug in production",
    description: "Investigate and fix the authentication issue reported by users",
    priority: "High",
    due_date: Date.current - 2.days,
    completed: true
  },
  {
    title: "Plan next sprint",
    description: "Review backlog and plan tasks for the upcoming sprint",
    priority: "Medium",
    due_date: Date.current + 4.days,
    completed: false
  },
  {
    title: "Code review session",
    description: "Review code changes with the development team",
    priority: "Medium",
    due_date: Date.current + 1.day,
    completed: false
  },
  {
    title: "Update project roadmap",
    description: "Revise the project timeline and milestones based on current progress",
    priority: "Low",
    due_date: Date.current + 14.days,
    completed: false
  },
  {
    title: "Setup monitoring and logging",
    description: "Configure application monitoring, error tracking, and logging systems",
    priority: "Medium",
    due_date: Date.current + 6.days,
    completed: false
  },
  {
    title: "Create user documentation",
    description: "Write user guides and tutorials for the application features",
    priority: "Low",
    due_date: Date.current + 12.days,
    completed: false
  },
  {
    title: "Performance optimization",
    description: "Identify and fix performance bottlenecks in the application",
    priority: "Medium",
    due_date: Date.current + 8.days,
    completed: false
  },
  {
    title: "Security audit",
    description: "Conduct security review and implement necessary fixes",
    priority: "High",
    due_date: Date.current + 3.days,
    completed: false
  },
  {
    title: "Backup database",
    description: "Create regular database backup and verify restore process",
    priority: "Low",
    due_date: Date.current + 1.day,
    completed: false
  },
  {
    title: "Update SSL certificates",
    description: "Renew expiring SSL certificates for production domains",
    priority: "High",
    due_date: Date.current - 1.day,
    completed: false
  },
  {
    title: "Team training session",
    description: "Conduct training on new development tools and practices",
    priority: "Low",
    due_date: Date.current + 15.days,
    completed: false
  },
  {
    title: "Refactor legacy code",
    description: "Improve code quality and maintainability of older modules",
    priority: "Medium",
    due_date: Date.current + 9.days,
    completed: false
  }
]

# Create tasks with timestamps
tasks_data.each_with_index do |task_data, index|
  # Add some variation to creation times
  created_at = Time.current - (index * 2).hours
  updated_at = created_at + rand(1..60).minutes

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

# Print summary
total_tasks = Task.count
completed_tasks = Task.completed.count
active_tasks = Task.active.count
overdue_tasks = Task.overdue.count

puts "✅ Database seeded successfully!"
puts "📊 Task Summary:"
puts "   • Total tasks: #{total_tasks}"
puts "   • Completed: #{completed_tasks}"
puts "   • Active: #{active_tasks}"
puts "   • Overdue: #{overdue_tasks}"
puts "   • High priority: #{Task.by_priority('High').count}"
puts "   • Medium priority: #{Task.by_priority('Medium').count}"
puts "   • Low priority: #{Task.by_priority('Low').count}"
puts ""
puts "🎯 Sample data includes:"
puts "   • Tasks with different priorities (High, Medium, Low)"
puts "   • Tasks with and without due dates"
puts "   • Completed and incomplete tasks"
puts "   • Overdue tasks to demonstrate the feature"
puts "   • Realistic task descriptions and titles"
puts ""
puts "🚀 You can now run 'rails server' and visit http://localhost:3000/tasks to see the sample data!"
