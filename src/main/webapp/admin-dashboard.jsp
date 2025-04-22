<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - TensionToTopper</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
    <script src="https://unpkg.com/lucide@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<div class="dashboard">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-header">
            <a href="admin-dashboard.jsp" class="sidebar-logo">TensionToTopper</a>
            <span class="admin-badge">Admin</span>
        </div>
        
        <ul class="sidebar-nav">
            <li class="sidebar-nav-item">
                <a href="admin-dashboard.jsp" class="sidebar-nav-link active">
                    <i data-lucide="layout-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="users"></i>
                    <span>User Management</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="book-open"></i>
                    <span>Course Management</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="file-text"></i>
                    <span>Content Management</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="bell"></i>
                    <span>Announcements</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="bar-chart-2"></i>
                    <span>Reports & Analytics</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="#" class="sidebar-nav-link">
                    <i data-lucide="credit-card"></i>
                    <span>Payment Management</span>
                </a>
            </li>
        </ul>
        
        <div class="sidebar-section">
            <h3 class="sidebar-heading">System</h3>
            <ul class="sidebar-nav">
                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
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
            <h1 class="dashboard-title">Admin Dashboard</h1>
            <div class="dashboard-actions">
                <button class="btn btn-ghost">
                    <i data-lucide="bell"></i>
                    <span class="notification-badge">8</span>
                </button>
                <button class="btn btn-ghost">
                    <i data-lucide="message-square"></i>
                    <span class="notification-badge">12</span>
                </button>
                <div class="dropdown">
                    <button class="btn btn-ghost dropdown-toggle">
                        <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Admin" style="width: 32px; height: 32px; border-radius: 50%;">
                        <span class="ml-2">Admin</span>
                        <i data-lucide="chevron-down" class="ml-1"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">
                            <i data-lucide="user"></i>
                            <span>Profile</span>
                        </a>
                        <a href="#" class="dropdown-item">
                            <i data-lucide="settings"></i>
                            <span>Settings</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="index.jsp" class="dropdown-item">
                            <i data-lucide="log-out"></i>
                            <span>Logout</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Platform Overview -->
        <div class="grid md:grid-cols-4 grid-cols-2 gap-6">
            <div class="stat-card">
                <div class="stat-card-content">
                    <h3 class="stat-card-title">Total Users</h3>
                    <div class="stat-card-value">12,845</div>
                    <div class="stat-card-change positive">
                        <i data-lucide="trending-up"></i>
                        <span>+12.5% this month</span>
                    </div>
                </div>
                <div class="stat-card-icon">
                    <i data-lucide="users"></i>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-card-content">
                    <h3 class="stat-card-title">Active Courses</h3>
                    <div class="stat-card-value">487</div>
                    <div class="stat-card-change positive">
                        <i data-lucide="trending-up"></i>
                        <span>+8.3% this month</span>
                    </div>
                </div>
                <div class="stat-card-icon">
                    <i data-lucide="book-open"></i>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-card-content">
                    <h3 class="stat-card-title">Revenue</h3>
                    <div class="stat-card-value">₹24.5L</div>
                    <div class="stat-card-change positive">
                        <i data-lucide="trending-up"></i>
                        <span>+15.2% this month</span>
                    </div>
                </div>
                <div class="stat-card-icon">
                    <i data-lucide="dollar-sign"></i>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-card-content">
                    <h3 class="stat-card-title">Course Completion</h3>
                    <div class="stat-card-value">68.4%</div>
                    <div class="stat-card-change negative">
                        <i data-lucide="trending-down"></i>
                        <span>-2.1% this month</span>
                    </div>
                </div>
                <div class="stat-card-icon">
                    <i data-lucide="award"></i>
                </div>
            </div>
        </div>
        
        <!-- Charts Section -->
        <div class="grid md:grid-cols-2 grid-cols-1 gap-6 mt-8">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">User Growth</h3>
                    <div class="card-actions">
                        <select class="form-select form-select-sm">
                            <option value="30">Last 30 Days</option>
                            <option value="60">Last 60 Days</option>
                            <option value="90">Last 90 Days</option>
                            <option value="180">Last 6 Months</option>
                            <option value="365">Last Year</option>
                        </select>
                    </div>
                </div>
                <div class="card-body">
                    <canvas id="userGrowthChart" height="250"></canvas>
                </div>
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Revenue Analytics</h3>
                    <div class="card-actions">
                        <select class="form-select form-select-sm">
                            <option value="30">Last 30 Days</option>
                            <option value="60">Last 60 Days</option>
                            <option value="90">Last 90 Days</option>
                            <option value="180">Last 6 Months</option>
                            <option value="365">Last Year</option>
                        </select>
                    </div>
                </div>
                <div class="card-body">
                    <canvas id="revenueChart" height="250"></canvas>
                </div>
            </div>
        </div>
        
        <!-- Recent Activities & Quick Actions -->
        <div class="grid md:grid-cols-3 grid-cols-1 gap-6 mt-8">
            <div class="card md:col-span-2">
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
                            <div class="activity-icon user">
                                <i data-lucide="user-plus"></i>
                            </div>
                            <div class="activity-content">
                                <h4 class="activity-title">New User Registration</h4>
                                <p class="activity-details">15 new users registered today</p>
                                <p class="activity-time">Today, 10:30 AM</p>
                            </div>
                            <div class="activity-actions">
                                <button class="btn btn-ghost btn-sm">
                                    <i data-lucide="eye"></i>
                                </button>
                            </div>
                        </li>
                        
                        <li class="activity-item">
                            <div class="activity-icon course">
                                <i data-lucide="book"></i>
                            </div>
                            <div class="activity-content">
                                <h4 class="activity-title">New Course Published</h4>
                                <p class="activity-details">Biology Basics by Dr. Priya Sharma</p>
                                <p class="activity-time">Yesterday, 3:45 PM</p>
                            </div>
                            <div class="activity-actions">
                                <button class="btn btn-ghost btn-sm">
                                    <i data-lucide="eye"></i>
                                </button>
                            </div>
                        </li>
                        
                        <li class="activity-item">
                            <div class="activity-icon payment">
                                <i data-lucide="credit-card"></i>
                            </div>
                            <div class="activity-content">
                                <h4 class="activity-title">Payment Received</h4>
                                <p class="activity-details">₹1,45,000 in 28 transactions</p>
                                <p class="activity-time">Yesterday, 1:15 PM</p>
                            </div>
                            <div class="activity-actions">
                                <button class="btn btn-ghost btn-sm">
                                    <i data-lucide="eye"></i>
                                </button>
                            </div>
                        </li>
                        
                        <li class="activity-item">
                            <div class="activity-icon report">
                                <i data-lucide="flag"></i>
                            </div>
                            <div class="activity-content">
                                <h4 class="activity-title">Content Reported</h4>
                                <p class="activity-details">3 reports on Physics Fundamentals Module 5</p>
                                <p class="activity-time">Jun 12, 2023, 5:20 PM</p>
                            </div>
                            <div class="activity-actions">
                                <button class="btn btn-ghost btn-sm">
                                    <i data-lucide="eye"></i>
                                </button>
                            </div>
                        </li>
                        
                        <li class="activity-item">
                            <div class="activity-icon system">
                                <i data-lucide="settings"></i>
                            </div>
                            <div class="activity-content">
                                <h4 class="activity-title">System Update</h4>
                                <p class="activity-details">Platform updated to version 2.4.0</p>
                                <p class="activity-time">Jun 10, 2023, 11:45 AM</p>
                            </div>
                            <div class="activity-actions">
                                <button class="btn btn-ghost btn-sm">
                                    <i data-lucide="eye"></i>
                                </button>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Quick Actions</h3>
                </div>
                <div class="card-body">
                    <div class="quick-actions">
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="user-plus"></i>
                            </div>
                            <span>Add User</span>
                        </a>
                        
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="plus-circle"></i>
                            </div>
                            <span>New Course</span>
                        </a>
                        
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="bell"></i>
                            </div>
                            <span>Announcement</span>
                        </a>
                        
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="file-text"></i>
                            </div>
                            <span>Reports</span>
                        </a>
                        
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="settings"></i>
                            </div>
                            <span>Settings</span>
                        </a>
                        
                        <a href="#" class="quick-action">
                            <div class="quick-action-icon">
                                <i data-lucide="help-circle"></i>
                            </div>
                            <span>Help</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- User & Course Management -->
        <div class="grid md:grid-cols-2 grid-cols-1 gap-6 mt-8">
            <!-- Recent Users -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recent Users</h3>
                    <a href="#" class="btn btn-primary btn-sm">
                        <i data-lucide="plus"></i>
                        <span>Add User</span>
                    </a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="user-info">
                                            <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Rahul Sharma" class="user-avatar">
                                            <div>
                                                <div class="user-name">Rahul Sharma</div>
                                                <div class="user-email">rahul.sharma@example.com</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Student</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="trash-2"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="user-info">
                                            <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Priya Patel" class="user-avatar">
                                            <div>
                                                <div class="user-name">Priya Patel</div>
                                                <div class="user-email">priya.patel@example.com</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Instructor</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="trash-2"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="user-info">
                                            <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Amit Kumar" class="user-avatar">
                                            <div>
                                                <div class="user-name">Amit Kumar</div>
                                                <div class="user-email">amit.kumar@example.com</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Admin</td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="trash-2"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="user-info">
                                            <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Sneha Gupta" class="user-avatar">
                                            <div>
                                                <div class="user-name">Sneha Gupta</div>
                                                <div class="user-email">sneha.gupta@example.com</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Student</td>
                                    <td><span class="badge badge-warning">Pending</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="trash-2"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="flex justify-center mt-4">
                        <a href="#" class="btn btn-link">View All Users</a>
                    </div>
                </div>
            </div>
            
            <!-- Recent Courses -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recent Courses</h3>
                    <a href="#" class="btn btn-primary btn-sm">
                        <i data-lucide="plus"></i>
                        <span>Add Course</span>
                    </a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Course</th>
                                    <th>Instructor</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="course-info">
                                            <img src="https://images.unsplash.com/photo-1509228468518-180dd4864904?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Advanced Mathematics" class="course-thumbnail">
                                            <div class="course-name">Advanced Mathematics</div>
                                        </div>
                                    </td>
                                    <td>Prof. Sarah Johnson</td>
                                    <td><span class="badge badge-success">Published</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="eye"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="course-info">
                                            <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Chemistry Made Easy" class="course-thumbnail">
                                            <div class="course-name">Chemistry Made Easy</div>
                                        </div>
                                    </td>
                                    <td>Prof. Emily Wong</td>
                                    <td><span class="badge badge-success">Published</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="eye"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="course-info">
                                            <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Physics Fundamentals" class="course-thumbnail">
                                            <div class="course-name">Physics Fundamentals</div>
                                        </div>
                                    </td>
                                    <td>Dr. Robert Chen</td>
                                    <td><span class="badge badge-success">Published</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="eye"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <div class="course-info">
                                            <img src="https://images.unsplash.com/photo-1581093196277-9f6e9b62cc2a?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Biology Basics" class="course-thumbnail">
                                            <div class="course-name">Biology Basics</div>
                                        </div>
                                    </td>
                                    <td>Dr. Priya Sharma</td>
                                    <td><span class="badge badge-warning">Draft</span></td>
                                    <td>
                                        <div class="flex gap-2">
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="edit"></i>
                                            </button>
                                            <button class="btn btn-ghost btn-sm">
                                                <i data-lucide="eye"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="flex justify-center mt-4">
                        <a href="#" class="btn btn-link">View All Courses</a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- System Status -->
        <div class="card mt-8">
            <div class="card-header">
                <h3 class="card-title">System Status</h3>
                <div class="card-actions">
                    <span class="badge badge-success">All Systems Operational</span>
                </div>
            </div>
            <div class="card-body">
                <div class="grid md:grid-cols-3 grid-cols-1 gap-6">
                    <div class="system-status-item">
                        <div class="system-status-header">
                            <h4 class="system-status-title">Server Load</h4>
                            <span class="system-status-indicator success"></span>
                        </div>
                        <div class="system-status-value">42%</div>
                        <div class="progress-container">
                            <div class="progress-bar" style="width: 42%"></div>
                        </div>
                    </div>
                    
                    <div class="system-status-item">
                        <div class="system-status-header">
                            <h4 class="system-status-title">Database</h4>
                            <span class="system-status-indicator success"></span>
                        </div>
                        <div class="system-status-value">28%</div>
                        <div class="progress-container">
                            <div class="progress-bar" style="width: 28%"></div>
                        </div>
                    </div>
                    
                    <div class="system-status-item">
                        <div class="system-status-header">
                            <h4 class="system-status-title">Storage</h4>
                            <span class="system-status-indicator warning"></span>
                        </div>
                        <div class="system-status-value">78%</div>
                        <div class="progress-container">
                            <div class="progress-bar warning" style="width: 78%"></div>
                        </div>
                    </div>
                </div>
                
                <div class="system-updates mt-6">
                    <h4 class="system-updates-title">Recent Updates</h4>
                    <ul class="system-updates-list">
                        <li class="system-update-item">
                            <div class="system-update-icon">
                                <i data-lucide="check-circle"></i>
                            </div>
                            <div class="system-update-content">
                                <h5 class="system-update-title">System Update v2.4.0</h5>
                                <p class="system-update-description">Successfully deployed on Jun 10, 2023</p>
                            </div>
                        </li>
                        
                        <li class="system-update-item">
                            <div class="system-update-icon">
                                <i data-lucide="check-circle"></i>
                            </div>
                            <div class="system-update-content">
                                <h5 class="system-update-title">Database Optimization</h5>
                                <p class="system-update-description">Completed on Jun 5, 2023</p>
                            </div>
                        </li>
                        
                        <li class="system-update-item">
                            <div class="system-update-icon">
                                <i data-lucide="check-circle"></i>
                            </div>
                            <div class="system-update-content">
                                <h5 class="system-update-title">Security Patch</h5>
                                <p class="system-update-description">Applied on Jun 2, 2023</p>
                            </div>
                        </li>
                    </ul>
                </div>
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
    
    // Initialize charts
    document.addEventListener('DOMContentLoaded', function() {
        // User Growth Chart
        const userGrowthCtx = document.getElementById('userGrowthChart').getContext('2d');
        const userGrowthChart = new Chart(userGrowthCtx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'New Users',
                    data: [450, 520, 580, 690, 750, 830, 920, 1050, 1150, 1250, 1380, 1450],
                    backgroundColor: 'rgba(59, 130, 246, 0.1)',
                    borderColor: 'rgba(59, 130, 246, 1)',
                    borderWidth: 2,
                    tension: 0.4,
                    fill: true
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            display: true,
                            drawBorder: false
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                }
            }
        });
        
        // Revenue Chart
        const revenueCtx = document.getElementById('revenueChart').getContext('2d');
        const revenueChart = new Chart(revenueCtx, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Revenue (in Lakhs)',
                    data: [1.2, 1.5, 1.8, 2.1, 2.3, 2.5, 2.7, 2.9, 3.2, 3.5, 3.8, 4.2],
                    backgroundColor: 'rgba(16, 185, 129, 0.8)',
                    borderRadius: 4
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            display: true,
                            drawBorder: false
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                }
            }
        });
    });
    
    // Dropdown functionality
    const dropdownToggle = document.querySelector('.dropdown-toggle');
    const dropdownMenu = document.querySelector('.dropdown-menu');
    
    if (dropdownToggle && dropdownMenu) {
        dropdownToggle.addEventListener('click', () => {
            dropdownMenu.classList.toggle('show');
        });
        
        document.addEventListener('click', (e) => {
            if (!dropdownToggle.contains(e.target) && !dropdownMenu.contains(e.target)) {
                dropdownMenu.classList.remove('show');
            }
        });
    }
</script>
</body>
</html>