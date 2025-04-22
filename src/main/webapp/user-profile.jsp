<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile - TensionToTopper</title>
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
                <a href="dashboard.jsp" class="sidebar-nav-link">
                    <i data-lucide="layout-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="sidebar-nav-item">
                <a href="course-list.jsp" class="sidebar-nav-link">
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
                <a href="user-profile.jsp" class="sidebar-nav-link active">
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
                    <a href="user-profile.jsp" class="sidebar-nav-link active">
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
            <h1 class="dashboard-title">My Profile</h1>
            <div class="dashboard-actions">
                <button class="btn btn-ghost">
                    <i data-lucide="bell"></i>
                </button>
                <button class="btn btn-ghost">
                    <i data-lucide="message-square"></i>
                </button>
                <a href="user-profile.jsp" class="btn btn-ghost">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Profile" style="width: 32px; height: 32px; border-radius: 50%;">
                </a>
            </div>
        </div>
        
        <!-- Profile Content -->
        <div class="profile-container">
            <!-- Profile Tabs -->
            <div class="tabs">
                <div class="tab active" data-tab="personal-info">Personal Information</div>
                <div class="tab" data-tab="account-settings">Account Settings</div>
                <div class="tab" data-tab="certificates">Certificates</div>
                <div class="tab" data-tab="preferences">Preferences</div>
            </div>
            
            <!-- Tab Content -->
            <div class="tab-content active" id="personal-info">
                <div class="profile-header">
                    <div class="profile-avatar-container">
                        <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Rahul Sharma" class="profile-avatar">
                        <button class="profile-avatar-edit">
                            <i data-lucide="camera"></i>
                        </button>
                    </div>
                    <div class="profile-info">
                        <h2 class="profile-name">Rahul Sharma</h2>
                        <p class="profile-email">rahul.sharma@example.com</p>
                        <p class="profile-joined">Member since June 2022</p>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Personal Information</h3>
                        <button class="btn btn-ghost">
                            <i data-lucide="edit"></i>
                            <span>Edit</span>
                        </button>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="grid md:grid-cols-2 grid-cols-1 gap-6">
                                <div class="form-group">
                                    <label for="first-name" class="form-label">First Name</label>
                                    <input type="text" id="first-name" class="form-input" value="Rahul" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="last-name" class="form-label">Last Name</label>
                                    <input type="text" id="last-name" class="form-input" value="Sharma" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" id="email" class="form-input" value="rahul.sharma@example.com" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="form-label">Phone Number</label>
                                    <input type="tel" id="phone" class="form-input" value="+91 9876543210" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="dob" class="form-label">Date of Birth</label>
                                    <input type="date" id="dob" class="form-input" value="1998-05-15" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="gender" class="form-label">Gender</label>
                                    <select id="gender" class="form-select" disabled>
                                        <option value="male" selected>Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                        <option value="prefer-not-to-say">Prefer not to say</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="card mt-6">
                    <div class="card-header">
                        <h3 class="card-title">Address Information</h3>
                        <button class="btn btn-ghost">
                            <i data-lucide="edit"></i>
                            <span>Edit</span>
                        </button>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="grid md:grid-cols-2 grid-cols-1 gap-6">
                                <div class="form-group md:col-span-2">
                                    <label for="address-line-1" class="form-label">Address Line 1</label>
                                    <input type="text" id="address-line-1" class="form-input" value="123 Park Street" disabled>
                                </div>
                                <div class="form-group md:col-span-2">
                                    <label for="address-line-2" class="form-label">Address Line 2</label>
                                    <input type="text" id="address-line-2" class="form-input" value="Apartment 4B" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="city" class="form-label">City</label>
                                    <input type="text" id="city" class="form-input" value="Mumbai" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="state" class="form-label">State</label>
                                    <input type="text" id="state" class="form-input" value="Maharashtra" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="postal-code" class="form-label">Postal Code</label>
                                    <input type="text" id="postal-code" class="form-input" value="400001" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="country" class="form-label">Country</label>
                                    <input type="text" id="country" class="form-input" value="India" disabled>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="card mt-6">
                    <div class="card-header">
                        <h3 class="card-title">Educational Background</h3>
                        <button class="btn btn-ghost">
                            <i data-lucide="edit"></i>
                            <span>Edit</span>
                        </button>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="grid md:grid-cols-2 grid-cols-1 gap-6">
                                <div class="form-group">
                                    <label for="highest-education" class="form-label">Highest Education</label>
                                    <select id="highest-education" class="form-select" disabled>
                                        <option value="high-school">High School</option>
                                        <option value="bachelors" selected>Bachelor's Degree</option>
                                        <option value="masters">Master's Degree</option>
                                        <option value="doctorate">Doctorate</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="field-of-study" class="form-label">Field of Study</label>
                                    <input type="text" id="field-of-study" class="form-input" value="Computer Science" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="institution" class="form-label">Institution</label>
                                    <input type="text" id="institution" class="form-input" value="Mumbai University" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="graduation-year" class="form-label">Graduation Year</label>
                                    <input type="number" id="graduation-year" class="form-input" value="2020" disabled>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            
            <div class="tab-content" id="account-settings">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Change Password</h3>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="form-group">
                                <label for="current-password" class="form-label">Current Password</label>
                                <input type="password" id="current-password" class="form-input" placeholder="Enter your current password">
                            </div>
                            <div class="form-group">
                                <label for="new-password" class="form-label">New Password</label>
                                <input type="password" id="new-password" class="form-input" placeholder="Enter your new password">
                            </div>
                            <div class="form-group">
                                <label for="confirm-password" class="form-label">Confirm New Password</label>
                                <input type="password" id="confirm-password" class="form-input" placeholder="Confirm your new password">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Update Password</button>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="card mt-6">
                    <div class="card-header">
                        <h3 class="card-title">Email Notifications</h3>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="form-group">
                                <div class="flex items-center justify-between">
                                    <label for="course-updates" class="form-label">Course Updates</label>
                                    <label class="switch">
                                        <input type="checkbox" id="course-updates" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <p class="text-sm text-muted-foreground">Receive notifications about updates to your enrolled courses.</p>
                            </div>
                            <div class="form-group">
                                <div class="flex items-center justify-between">
                                    <label for="announcements" class="form-label">Announcements</label>
                                    <label class="switch">
                                        <input type="checkbox" id="announcements" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <p class="text-sm text-muted-foreground">Receive notifications about platform announcements.</p>
                            </div>
                            <div class="form-group">
                                <div class="flex items-center justify-between">
                                    <label for="promotions" class="form-label">Promotions</label>
                                    <label class="switch">
                                        <input type="checkbox" id="promotions">
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <p class="text-sm text-muted-foreground">Receive notifications about promotions and special offers.</p>
                            </div>
                            <div class="form-group">
                                <div class="flex items-center justify-between">
                                    <label for="newsletter" class="form-label">Newsletter</label>
                                    <label class="switch">
                                        <input type="checkbox" id="newsletter" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <p class="text-sm text-muted-foreground">Receive our monthly newsletter with educational tips and resources.</p>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save Preferences</button>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="card mt-6">
                    <div class="card-header">
                        <h3 class="card-title">Linked Accounts</h3>
                    </div>
                    <div class="card-body">
                        <div class="linked-account">
                            <div class="linked-account-info">
                                <i data-lucide="google" class="linked-account-icon"></i>
                                <div>
                                    <h4 class="linked-account-name">Google</h4>
                                    <p class="linked-account-email">rahul.sharma@gmail.com</p>
                                </div>
                            </div>
                            <button class="btn btn-outline btn-sm">Disconnect</button>
                        </div>
                        
                        <div class="linked-account">
                            <div class="linked-account-info">
                                <i data-lucide="facebook" class="linked-account-icon"></i>
                                <div>
                                    <h4 class="linked-account-name">Facebook</h4>
                                    <p class="linked-account-status">Not Connected</p>
                                </div>
                            </div>
                            <button class="btn btn-outline btn-sm">Connect</button>
                        </div>
                    </div>
                </div>
                
                <div class="card mt-6 danger-zone">
                    <div class="card-header">
                        <h3 class="card-title text-danger">Danger Zone</h3>
                    </div>
                    <div class="card-body">
                        <div class="danger-action">
                            <div>
                                <h4 class="danger-action-title">Deactivate Account</h4>
                                <p class="danger-action-description">Temporarily deactivate your account. You can reactivate it anytime.</p>
                            </div>
                            <button class="btn btn-outline btn-danger">Deactivate</button>
                        </div>
                        
                        <div class="danger-action">
                            <div>
                                <h4 class="danger-action-title">Delete Account</h4>
                                <p class="danger-action-description">Permanently delete your account and all your data. This action cannot be undone.</p>
                            </div>
                            <button class="btn btn-danger">Delete</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="tab-content" id="certificates">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">My Certificates</h3>
                    </div>
                    <div class="card-body">
                        <div class="certificates-grid">
                            <div class="certificate-card">
                                <div class="certificate-header">
                                    <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Advanced Mathematics" class="certificate-image">
                                </div>
                                <div class="certificate-body">
                                    <h4 class="certificate-title">Advanced Mathematics</h4>
                                    <p class="certificate-instructor">Prof. Sarah Johnson</p>
                                    <p class="certificate-date">Issued on: May 15, 2023</p>
                                </div>
                                <div class="certificate-footer">
                                    <a href="#" class="btn btn-outline btn-sm">View</a>
                                    <a href="#" class="btn btn-outline btn-sm">Download</a>
                                </div>
                            </div>
                            
                            <div class="certificate-card">
                                <div class="certificate-header">
                                    <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Physics Fundamentals" class="certificate-image">
                                </div>
                                <div class="certificate-body">
                                    <h4 class="certificate-title">Physics Fundamentals</h4>
                                    <p class="certificate-instructor">Dr. Robert Chen</p>
                                    <p class="certificate-date">Issued on: April 2, 2023</p>
                                </div>
                                <div class="certificate-footer">
                                    <a href="#" class="btn btn-outline btn-sm">View</a>
                                    <a href="#" class="btn btn-outline btn-sm">Download</a>
                                </div>
                            </div>
                            
                            <div class="certificate-card">
                                <div class="certificate-header">
                                    <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Chemistry Made Easy" class="certificate-image">
                                </div>
                                <div class="certificate-body">
                                    <h4 class="certificate-title">Chemistry Made Easy</h4>
                                    <p class="certificate-instructor">Prof. Emily Wong</p>
                                    <p class="certificate-date">Issued on: January 20, 2023</p>
                                </div>
                                <div class="certificate-footer">
                                    <a href="#" class="btn btn-outline btn-sm">View</a>
                                    <a href="#" class="btn btn-outline btn-sm">Download</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="tab-content" id="preferences">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Learning Preferences</h3>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="form-group">
                                <label for="learning-goal" class="form-label">Primary Learning Goal</label>
                                <select id="learning-goal" class="form-select">
                                    <option value="academic">Academic Excellence</option>
                                    <option value="career" selected>Career Development</option>
                                    <option value="personal">Personal Interest</option>
                                    <option value="exam">Exam Preparation</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="study-time" class="form-label">Weekly Study Time</label>
                                <select id="study-time" class="form-select">
                                    <option value="0-5">0-5 hours</option>
                                    <option value="5-10" selected>5-10 hours</option>
                                    <option value="10-20">10-20 hours</option>
                                    <option value="20+">20+ hours</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Preferred Learning Methods</label>
                                <div class="checkbox-group">
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Video Lectures
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Reading Materials
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Interactive Exercises
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox"> Group Discussions
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Practice Tests
                                    </label>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Subjects of Interest</label>
                                <div class="checkbox-group">
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Mathematics
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Physics
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox" checked> Chemistry
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox"> Biology
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox"> Computer Science
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox"> Languages
                                    </label>
                                    <label class="checkbox-label">
                                        <input type="checkbox"> Humanities
                                    </label>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save Preferences</button>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="card mt-6">
                    <div class="card-header">
                        <h3 class="card-title">Appearance</h3>
                    </div>
                    <div class="card-body">
                        <form class="profile-form">
                            <div class="form-group">
                                <label for="theme" class="form-label">Theme</label>
                                <select id="theme" class="form-select">
                                    <option value="light" selected>Light</option>
                                    <option value="dark">Dark</option>
                                    <option value="system">System Default</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="font-size" class="form-label">Font Size</label>
                                <select id="font-size" class="form-select">
                                    <option value="small">Small</option>
                                    <option value="medium" selected>Medium</option>
                                    <option value="large">Large</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save Preferences</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Initialize Lucide icons
    lucide.createIcons();
    
    // Tabs functionality
    const tabs = document.querySelectorAll('.tab');
    const tabContents = document.querySelectorAll('.tab-content');
    
    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            const tabId = tab.getAttribute('data-tab');
            
            // Remove active class from all tabs and contents
            tabs.forEach(t => t.classList.remove('active'));
            tabContents.forEach(c => c.classList.remove('active'));
            
            // Add active class to clicked tab and corresponding content
            tab.classList.add('active');
            document.getElementById(tabId).classList.add('active');
        });
    });
    
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
    
    // Form edit functionality
    const editButtons = document.querySelectorAll('.card-header .btn-ghost');
    
    editButtons.forEach(button => {
        button.addEventListener('click', () => {
            const card = button.closest('.card');
            const inputs = card.querySelectorAll('input, select');
            const isEditing = button.getAttribute('data-editing') === 'true';
            
            if (isEditing) {
                // Save changes
                button.innerHTML = '<i data-lucide="edit"></i><span>Edit</span>';
                button.setAttribute('data-editing', 'false');
                inputs.forEach(input => {
                    input.disabled = true;
                });
            } else {
                // Enable editing
                button.innerHTML = '<i data-lucide="save"></i><span>Save</span>';
                button.setAttribute('data-editing', 'true');
                inputs.forEach(input => {
                    input.disabled = false;
                });
            }
            
            lucide.createIcons();
        });
    });
</script>
</body>
</html>