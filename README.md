# 📝 PlanUp - Beautiful Todo List Application

<div align="center">

![Rails](https://img.shields.io/badge/Rails-7.2.2-red.svg)
![Ruby](https://img.shields.io/badge/Ruby-3.1.7-red.svg)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4.3-blue.svg)
![DaisyUI](https://img.shields.io/badge/DaisyUI-4.0-purple.svg)
![SQLite](https://img.shields.io/badge/SQLite-3-green.svg)

A modern, responsive todo list application built with Ruby on Rails, featuring a beautiful UI with Tailwind CSS and DaisyUI components.

[🚀 Live Demo](#) • [📖 Documentation](#features) • [🛠️ Setup](#getting-started)

</div>

---

## ✨ Features

### 🎨 **Beautiful UI/UX**
- **Modern Design**: Clean, responsive interface built with Tailwind CSS
- **Theme Support**: 30+ beautiful themes including Light, Dark, Cyberpunk, Synthwave, and more
- **Responsive Layout**: Works perfectly on desktop, tablet, and mobile devices
- **Smooth Animations**: Enhanced user experience with subtle animations

### 📋 **Task Management**
- **Create Tasks**: Add new tasks with title, description, priority, and due date
- **Priority Levels**: High, Medium, Low priority with color-coded badges
- **Due Dates**: Set and track due dates with overdue notifications
- **Status Tracking**: Mark tasks as complete/incomplete
- **Task Organization**: View tasks in a clean card-based layout

### 🔧 **Advanced Features**
- **Real-time Updates**: Turbo Drive for fast, SPA-like navigation
- **Modal Forms**: Clean modal interface for creating new tasks
- **Form Validation**: Client and server-side validation with error handling
- **Search & Filter**: Easy task management with visual indicators
- **PWA Ready**: Progressive Web App support with service worker

### 🎯 **Developer Experience**
- **Hotwire/Turbo**: Modern Rails approach with minimal JavaScript
- **Stimulus**: Lightweight JavaScript framework for interactions
- **Import Maps**: Modern JavaScript bundling without build tools
- **Docker Support**: Production-ready Docker configuration
- **Comprehensive Testing**: RSpec-style testing setup

---

## 🚀 Quick Start

### Prerequisites
- Ruby 3.1.7 or higher
- Rails 7.2.2
- SQLite3
- Node.js (for asset compilation)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/todo_list.git
   cd todo_list
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed  # Adds sample data for testing
   ```

4. **Start the development server**
   ```bash
   bin/dev
   ```

5. **Visit the application**
   Open [http://localhost:3000](http://localhost:3000) in your browser

---

## 🏗️ Project Structure

```
todo_list/
├── app/
│   ├── controllers/          # Rails controllers
│   ├── models/              # ActiveRecord models
│   ├── views/               # ERB templates
│   │   ├── tasks/           # Task-related views
│   │   ├── shared/          # Shared components
│   │   └── layouts/         # Application layout
│   ├── assets/              # Stylesheets and images
│   └── javascript/          # JavaScript files
├── config/                  # Rails configuration
├── db/                      # Database migrations and seeds
├── test/                    # Test files
└── Dockerfile              # Production Docker configuration
```

---

## 🎨 UI Components

### Task Cards
- **Priority Badges**: Color-coded (Red=High, Yellow=Medium, Green=Low)
- **Due Date Indicators**: Visual alerts for overdue tasks
- **Status Toggles**: Easy complete/incomplete switching
- **Action Buttons**: Edit and delete with confirmation

### Navigation
- **Responsive Navbar**: Mobile-friendly navigation
- **Theme Switcher**: 30+ beautiful themes
- **Breadcrumbs**: Clear navigation hierarchy

### Forms
- **Modal Dialogs**: Clean, focused task creation
- **Validation**: Real-time error feedback
- **Accessibility**: ARIA labels and keyboard navigation

---

## 🛠️ Technology Stack

| Technology | Version | Purpose |
|------------|---------|---------|
| **Ruby on Rails** | 7.2.2 | Web framework |
| **Ruby** | 3.1.7 | Programming language |
| **SQLite3** | Latest | Database |
| **Tailwind CSS** | 4.3 | Utility-first CSS framework |
| **DaisyUI** | 4.0 | Component library |
| **Hotwire/Turbo** | Latest | SPA-like navigation |
| **Stimulus** | Latest | JavaScript framework |
| **Import Maps** | Latest | JavaScript bundling |

---

## 📱 PWA Features

- **Service Worker**: Offline functionality
- **Web App Manifest**: Install as native app
- **Responsive Design**: Works on all devices
- **Fast Loading**: Optimized assets and caching

---

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
rails test

# Run specific test files
rails test test/models/task_test.rb
rails test test/controllers/tasks_controller_test.rb

# Run system tests
rails test:system

## 🌱 Database Seeding

The application includes comprehensive seed data to demonstrate all features:

### Basic Seeding
```bash
# Load main seed data (20 sample tasks)
rails db:seed
```

### Development Seeding
```bash
# Load additional development data (10 more tasks)
rails db:seed:development
```

### Complete Reset
```bash
# Reset database and load all seed data
rails db:seed:reset
```

### Seed Data Features
- **30 total sample tasks** with realistic content
- **Various priorities**: High, Medium, Low
- **Different due dates**: Past, present, and future
- **Completion status**: Mix of completed and active tasks
- **Overdue tasks**: To demonstrate the overdue feature
- **Realistic descriptions**: Professional task descriptions

---

## 🐳 Docker Deployment

### Build and Run
```bash
# Build the Docker image
docker build -t todo-list-app .

# Run the container
docker run -d -p 3000:3000 \
  -e RAILS_MASTER_KEY=your_master_key \
  -e RAILS_ENV=production \
  todo-list-app
```

### Environment Variables
- `RAILS_MASTER_KEY`: Rails master key for credentials
- `RAILS_ENV`: Environment (production/development)
- `RAILS_SERVE_STATIC_FILES`: Enable static file serving

---

## 🚀 Deployment Options

### Railway (Recommended)
1. Push code to GitHub
2. Connect Railway to your repository
3. Add environment variables
4. Deploy automatically

### Render
1. Create new Web Service
2. Connect GitHub repository
3. Set build command: `bundle install && bundle exec rails assets:precompile`
4. Set start command: `bundle exec rails server`

### Heroku
```bash
heroku create your-app-name
git push heroku main
heroku run rails db:migrate
```

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow Rails conventions
- Write tests for new features
- Use meaningful commit messages
- Update documentation as needed

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Rails Team** for the amazing framework
- **Tailwind CSS** for the utility-first CSS approach
- **DaisyUI** for the beautiful component library
- **Hotwire** for the modern Rails approach

---

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/todo_list/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/todo_list/discussions)
- **Email**: your.email@example.com

---

<div align="center">

**Made with ❤️ using Ruby on Rails**

[⬆ Back to top](#-planup---beautiful-todo-list-application)

</div>
