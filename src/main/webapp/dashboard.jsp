<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard - TensionToTopper</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
<div class="dashboard">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-header">
            <a href="dashboard.jsp" class="sidebar-logo">TensionToTopper</a>
        </div>
        
        <ul class="sidebar-nav">
            <li class="sidebar-nav-item">
                <a href="dashboard.jsp" class="sidebar-nav-link active">
                    <i data-lucide="layout-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="courselist.jsp" class="sidebar-nav-link">
                    <i data-lucide="book-open"></i>
                    <span>My Courses</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="announcements.jsp" class="sidebar-nav-link">
                    <i data-lucide="bell"></i>
                    <span>Announcements</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="user-profile.jsp" class="sidebar-nav-link">
                    <i data-lucide="user"></i>
                    <span>My Profile</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="payment.jsp" class="sidebar-nav-link">
                    <i data-lucide="credit-card"></i>
                    <span>Payments</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="help-circle"></i>
                    <span>Help & Support</span>
                </a>
            </li>
        </ul>
        
        <div class="sidebar-section">
            <h3 class="sidebar-heading">Account</h3>
            <ul class="sidebar-nav">
                <li class="sidebar-nav-item">
                    <a href="user-profile.jsp" class="sidebar-nav-link">
                        <i data-lucide="settings"></i>
                        <span>Settings</span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="index.jsp" class="sidebar-nav-link">
                        <i data-lucide="log-out"></i>
                        <span>Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <!-- Main Content -->
    <div class="dashboard-content">
        <div class="dashboard-header">
            <h1 class="dashboard-title">Student Dashboard</h1>
            <div class="dashboard-actions">
                <button class="btn btn-ghost">
                    <i data-lucide="bell"></i>
                    <span class="notification-badge">3</span>
                </button>
                <button class="btn btn-ghost">
                    <i data-lucide="message-square"></i>
                    <span class="notification-badge">5</span>
                </button>
                <a href="user-profile.jsp" class="btn btn-ghost">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Profile" style="width: 32px; height: 32px; border-radius: 50%;">
                </a>
            </div>
        </div>
        
        <!-- Welcome Section -->
        <div class="welcome-section">
            <div class="welcome-content">
                <h2>Welcome </h2>
                <p>Continue your learning journey. You've completed 68% of your current courses.</p>
                <div class="welcome-actions">
                    <a href="course-list.jsp" class="btn btn-primary">Continue Learning</a>
                    <a href="#" class="btn btn-outline">View Study Plan</a>
                </div>
            </div>
            <div class="welcome-image">
                <img src="https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" alt="Student studying">
            </div>
        </div>
        
        <!-- Progress Overview -->
        <div class="section-title-container">
            <h2 class="section-title">Your Progress</h2>
            <a href="#" class="btn btn-link">View All</a>
        </div>
        
        <div class="grid md:grid-cols-3 grid-cols-1 gap-6">
            <div class="card">
                <div class="card-body">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="card-title">Overall Progress</h3>
                        <span class="badge badge-success">On Track</span>
                    </div>
                    <div class="progress-container">
                        <div class="progress-bar" style="width: 68%"></div>
                    </div>
                    <div class="flex items-center justify-between mt-2">
                        <span class="text-sm">68% Complete</span>
                        <span class="text-sm">Target: 75%</span>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <div class="card-body">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="card-title">Study Time</h3>
                        <span class="badge badge-warning">Below Target</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <div class="study-time-chart">
                            <div class="chart-circle" style="--percentage: 65%">
                                <span class="chart-value">13h</span>
                            </div>
                        </div>
                        <div class="study-time-stats">
                            <div class="study-time-stat">
                                <span class="study-time-label">This Week</span>
                                <span class="study-time-value">13 hours</span>
                            </div>
                            <div class="study-time-stat">
                                <span class="study-time-label">Weekly Goal</span>
                                <span class="study-time-value">20 hours</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <div class="card-body">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="card-title">Assessments</h3>
                        <span class="badge badge-success">Excellent</span>
                    </div>
                    <div class="assessment-stats">
                        <div class="assessment-stat">
                            <div class="assessment-stat-value">85%</div>
                            <div class="assessment-stat-label">Average Score</div>
                        </div>
                        <div class="assessment-stat">
                            <div class="assessment-stat-value">12/15</div>
                            <div class="assessment-stat-label">Completed</div>
                        </div>
                        <div class="assessment-stat">
                            <div class="assessment-stat-value">3</div>
                            <div class="assessment-stat-label">Pending</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Current Courses -->
        <div class="section-title-container mt-8">
            <h2 class="section-title">Current Courses</h2>
            <a href="course-list.jsp" class="btn btn-link">View All</a>
        </div>
        
        <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-6">
            <!-- Course 1 -->
            <div class="course-card">
                <div class="course-card-header">
                    <img src="https://images.unsplash.com/photo-1509228468518-180dd4864904?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Advanced Mathematics" class="course-card-image">
                    <div class="course-card-progress">
                        <div class="course-progress-bar" style="width: 75%"></div>
                    </div>
                </div>
                <div class="course-card-body">
                    <h3 class="course-card-title">Advanced Mathematics</h3>
                    <p class="course-card-instructor">Prof. Sarah Johnson</p>
                    <div class="course-card-stats">
                        <div class="course-card-stat">
                            <i data-lucide="book-open"></i>
                            <span>9/12 Modules</span>
                        </div>
                        <div class="course-card-stat">
                            <i data-lucide="clock"></i>
                            <span>12 hours left</span>
                        </div>
                    </div>
                    <a href="module-view.jsp" class="btn btn-primary btn-block mt-4">Continue</a>
                </div>
            </div>
            
            <!-- Course 2 -->
            <div class="course-card">
                <div class="course-card-header">
                    <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Chemistry Made Easy" class="course-card-image">
                    <div class="course-card-progress">
                        <div class="course-progress-bar" style="width: 60%"></div>
                    </div>
                </div>
                <div class="course-card-body">
                    <h3 class="course-card-title">Chemistry Made Easy</h3>
                    <p class="course-card-instructor">Prof. Emily Wong</p>
                    <div class="course-card-stats">
                        <div class="course-card-stat">
                            <i data-lucide="book-open"></i>
                            <span>6/10 Modules</span>
                        </div>
                        <div class="course-card-stat">
                            <i data-lucide="clock"></i>
                            <span>15 hours left</span>
                        </div>
                    </div>
                    <a href="module-view.jsp" class="btn btn-primary btn-block mt-4">Continue</a>
                </div>
            </div>
            
            <!-- Course 3 -->
            <div class="course-card">
                <div class="course-card-header">
                    <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Physics Fundamentals" class="course-card-image">
                    <div class="course-card-progress">
                        <div class="course-progress-bar" style="width: 40%"></div>
                    </div>
                </div>
                <div class="course-card-body">
                    <h3 class="course-card-title">Physics Fundamentals</h3>
                    <p class="course-card-instructor">Dr. Robert Chen</p>
                    <div class="course-card-stats">
                        <div class="course-card-stat">
                            <i data-lucide="book-open"></i>
                            <span>4/10 Modules</span>
                        </div>
                        <div class="course-card-stat">
                            <i data-lucide="clock"></i>
                            <span>20 hours left</span>
                        </div>
                    </div>
                    <a href="module-view.jsp" class="btn btn-primary btn-block mt-4">Continue</a>
                </div>
            </div>
        </div>
        
        <!-- Upcoming Deadlines & Events -->
        <div class="grid md:grid-cols-2 grid-cols-1 gap-6 mt-8">
            <!-- Upcoming Deadlines -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Upcoming Deadlines</h3>
                    <a href="#" class="btn btn-ghost btn-sm">
                        <i data-lucide="calendar"></i>
                        <span>View Calendar</span>
                    </a>
                </div>
                <div class="card-body">
                    <ul class="deadline-list">
                        <li class="deadline-item">
                            <div class="deadline-date">
                                <span class="deadline-day">15</span>
                                <span class="deadline-month">Jun</span>
                            </div>
                            <div class="deadline-content">
                                <h4 class="deadline-title">Mathematics Assignment</h4>
                                <p class="deadline-course">Advanced Mathematics</p>
                            </div>
                            <div class="deadline-status">
                                <span class="badge badge-warning">Due Soon</span>
                            </div>
                        </li>
                        
                        <li class="deadline-item">
                            <div class="deadline-date">
                                <span class="deadline-day">18</span>
                                <span class="deadline-month">Jun</span>
                            </div>
                            <div class="deadline-content">
                                <h4 class="deadline-title">Chemistry Quiz</h4>
                                <p class="deadline-course">Chemistry Made Easy</p>
                            </div>
                            <div class="deadline-status">
                                <span class="badge badge-info">Upcoming</span>
                            </div>
                        </li>
                        
                        <li class="deadline-item">
                            <div class="deadline-date">
                                <span class="deadline-day">22</span>
                                <span class="deadline-month">Jun</span>
                            </div>
                            <div class="deadline-content">
                                <h4 class="deadline-title">Physics Lab Report</h4>
                                <p class="deadline-course">Physics Fundamentals</p>
                            </div>
                            <div class="deadline-status">
                                <span class="badge badge-info">Upcoming</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <!-- Recommended Courses -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recommended For You</h3>
                    <a href="course-list.jsp" class="btn btn-ghost btn-sm">
                        <i data-lucide="list"></i>
                        <span>View All</span>
                    </a>
                </div>
                <div class="card-body">
                    <ul class="recommended-list">
                        <li class="recommended-item">
                            <img src="https://images.unsplash.com/photo-1581093196277-9f6e9b62cc2a?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Biology Basics" class="recommended-image">
                            <div class="recommended-content">
                                <h4 class="recommended-title">Biology Basics</h4>
                                <p class="recommended-instructor">Dr. Priya Sharma</p>
                                <div class="recommended-rating">
                                    <div class="stars">
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star half"></i>
                                    </div>
                                    <span>4.5 (120 reviews)</span>
                                </div>
                            </div>
                            <div class="recommended-price">₹1,299</div>
                        </li>
                        
                        <li class="recommended-item">
                            <img src="https://images.unsplash.com/photo-1580894732444-8ecded7900cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Computer Science 101" class="recommended-image">
                            <div class="recommended-content">
                                <h4 class="recommended-title">Computer Science 101</h4>
                                <p class="recommended-instructor">Prof. Amit Patel</p>
                                <div class="recommended-rating">
                                    <div class="stars">
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star"></i>
                                    </div>
                                    <span>4.0 (95 reviews)</span>
                                </div>
                            </div>
                            <div class="recommended-price">₹1,499</div>
                        </li>
                        
                        <li class="recommended-item">
                            <img src="https://images.unsplash.com/photo-1544256718-3bcf237f3974?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="English Literature" class="recommended-image">
                            <div class="recommended-content">
                                <h4 class="recommended-title">English Literature</h4>
                                <p class="recommended-instructor">Dr. Anjali Desai</p>
                                <div class="recommended-rating">
                                    <div class="stars">
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                        <i data-lucide="star" class="star filled"></i>
                                    </div>
                                    <span>5.0 (78 reviews)</span>
                                </div>
                            </div>
                            <div class="recommended-price">₹999</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <!-- Recent Activities -->
        <div class="card mt-8">
            <div class="card-header">
                <h3 class="card-title">Recent Activities</h3>
                <a href="#" class="btn btn-ghost btn-sm">
                    <i data-lucide="filter"></i>
                    <span>Filter</span>
                </a>
            </div>
            <div class="card-body">
                <ul class="activity-list">
                    <li class="activity-item">
                        <div class="activity-icon completed">
                            <i data-lucide="check-circle"></i>
                        </div>
                        <div class="activity-content">
                            <h4 class="activity-title">Completed Module: Calculus Fundamentals</h4>
                            <p class="activity-details">Advanced Mathematics</p>
                            <p class="activity-time">Today, 10:30 AM</p>
                        </div>
                    </li>
                    
                    <li class="activity-item">
                        <div class="activity-icon quiz">
                            <i data-lucide="file-text"></i>
                        </div>
                        <div class="activity-content">
                            <h4 class="activity-title">Quiz Completed: Organic Chemistry</h4>
                            <p class="activity-details">Chemistry Made Easy • Score: 85%</p>
                            <p class="activity-time">Yesterday, 3:45 PM</p>
                        </div>
                    </li>
                    
                    <li class="activity-item">
                        <div class="activity-icon started">
                            <i data-lucide="play-circle"></i>
                        </div>
                        <div class="activity-content">
                            <h4 class="activity-title">Started Module: Mechanics</h4>
                            <p class="activity-details">Physics Fundamentals</p>
                            <p class="activity-time">Yesterday, 1:15 PM</p>
                        </div>
                    </li>
                    
                    <li class="activity-item">
                        <div class="activity-icon discussion">
                            <i data-lucide="message-square"></i>
                        </div>
                        <div class="activity-content">
                            <h4 class="activity-title">Posted in Discussion: Integration Techniques</h4>
                            <p class="activity-details">Advanced Mathematics</p>
                            <p class="activity-time">Jun 12, 2023, 5:20 PM</p>
                        </div>
                    </li>
                    
                    <li class="activity-item">
                        <div class="activity-icon assignment">
                            <i data-lucide="upload"></i>
                        </div>
                        <div class="activity-content">
                            <h4 class="activity-title">Submitted Assignment: Chemical Equations</h4>
                            <p class="activity-details">Chemistry Made Easy</p>
                            <p class="activity-time">Jun 10, 2023, 11:45 AM</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script>
    // Initialize Lucide icons
    lucide.createIcons();
    
    // Mobile sidebar toggle
    const toggleSidebar = () => {
        const sidebar = document.querySelector('.sidebar');
        sidebar.classList.toggle('open');
    }
    
    // Add event listener for small screens
    if (window.innerWidth < 768) {
        const sidebarToggleBtn = document.createElement('button');
        sidebarToggleBtn.className = 'btn btn-ghost';
        sidebarToggleBtn.innerHTML = '<i data-lucide="menu"></i>';
        sidebarToggleBtn.style.position = 'fixed';
        sidebarToggleBtn.style.top = '1rem';
        sidebarToggleBtn.style.left = '1rem';
        sidebarToggleBtn.style.zIndex = '100';
        sidebarToggleBtn.addEventListener('click', toggleSidebar);
        
        document.body.appendChild(sidebarToggleBtn);
        lucide.createIcons();
    }
</script>
</body>
</html>