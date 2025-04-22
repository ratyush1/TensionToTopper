<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Mathematics - TensionToTopper</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="header-container">
            <a href="index.jsp" class="logo">
                <span>TensionToTopper</span>
            </a>
            
            <nav class="nav">
                <ul class="nav-menu">
                    <li><a href="index.jsp" class="nav-link">Home</a></li>
                    <li><a href="course-list.jsp" class="nav-link active">Courses</a></li>
                    <li><a href="announcements.jsp" class="nav-link">Announcements</a></li>
                    <li><a href="login.jsp" class="nav-link">Login</a></li>
                    <li><a href="register.jsp" class="btn btn-primary">Get Started</a></li>
                </ul>
            </nav>
            
            <button class="mobile-menu-btn">
                <i data-lucide="menu"></i>
            </button>
        </div>
    </header>
    
    <!-- Mobile Menu -->
    <div class="overlay"></div>
    <div class="mobile-menu">
        <button class="mobile-menu-close">
            <i data-lucide="x"></i>
        </button>
        <ul class="mobile-nav-menu">
            <li class="mobile-nav-item"><a href="index.jsp" class="mobile-nav-link">Home</a></li>
            <li class="mobile-nav-item"><a href="course-list.jsp" class="mobile-nav-link active">Courses</a></li>
            <li class="mobile-nav-item"><a href="announcements.jsp" class="mobile-nav-link">Announcements</a></li>
            <li class="mobile-nav-item"><a href="login.jsp" class="mobile-nav-link">Login</a></li>
            <li class="mobile-nav-item"><a href="register.jsp" class="mobile-nav-link">Register</a></li>
        </ul>
    </div>
    
    <!-- Course Header -->
    <section class="course-header">
        <div class="container">
            <div class="grid md:grid-cols-2 grid-cols-1 gap-8 items-center">
                <div>
                    <h1 class="course-title">Advanced Mathematics</h1>
                    <p class="text-lg mb-4">Master complex mathematical concepts with our comprehensive course designed for high school and college students.</p>
                    
                    <div class="course-meta">
                        <div class="course-meta-item">
                            <i data-lucide="user"></i>
                            <span>Prof. Sarah Johnson</span>
                        </div>
                        <div class="course-meta-item">
                            <i data-lucide="star"></i>
                            <span>4.9 (128 reviews)</span>
                        </div>
                        <div class="course-meta-item">
                            <i data-lucide="users"></i>
                            <span>2,456 students</span>
                        </div>
                        <div class="course-meta-item">
                            <i data-lucide="calendar"></i>
                            <span>Last updated: June 2023</span>
                        </div>
                    </div>
                    
                    <div class="flex gap-4 mt-6">
                        <a href="payment.jsp" class="btn btn-primary">Enroll Now</a>
                        <button class="btn btn-outline">
                            <i data-lucide="heart"></i>
                            <span class="ml-2">Add to Wishlist</span>
                        </button>
                    </div>
                </div>
                
                <div class="course-image">
                    <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" alt="Advanced Mathematics">
                </div>
            </div>
        </div>
    </section>
    
    <!-- Course Content -->
    <section class="main">
        <div class="container">
            <div class="course-info">
                <div>
                    <!-- Tabs -->
                    <div class="tabs">
                        <div class="tab active" data-tab="overview">Overview</div>
                        <div class="tab" data-tab="curriculum">Curriculum</div>
                        <div class="tab" data-tab="instructor">Instructor</div>
                        <div class="tab" data-tab="reviews">Reviews</div>
                    </div>
                    
                    <!-- Tab Content -->
                    <div class="tab-content active" id="overview">
                        <h2 class="text-xl font-bold mb-4">About This Course</h2>
                        <div class="course-description">
                            <p>This comprehensive Advanced Mathematics course is designed to help high school and college students master complex mathematical concepts with ease. Whether you're preparing for competitive exams or aiming to strengthen your mathematical foundation, this course provides clear explanations, step-by-step problem-solving techniques, and plenty of practice problems.</p>
                            
                            <h3 class="text-lg font-bold mt-6 mb-2">What You'll Learn</h3>
                            <ul class="list-disc pl-6 mb-6">
                                <li>Advanced calculus concepts including limits, derivatives, and integrals</li>
                                <li>Complex number theory and applications</li>
                                <li>Linear algebra and matrix operations</li>
                                <li>Differential equations and their real-world applications</li>
                                <li>Probability theory and statistical analysis</li>
                                <li>Vector calculus and multivariable functions</li>
                                <li>Mathematical proof techniques and logical reasoning</li>
                            </ul>
                            
                            <h3 class="text-lg font-bold mt-6 mb-2">Requirements</h3>
                            <ul class="list-disc pl-6 mb-6">
                                <li>Basic knowledge of algebra, geometry, and trigonometry</li>
                                <li>Familiarity with basic calculus concepts is helpful but not required</li>
                                <li>Access to a computer or tablet for viewing course materials and completing assignments</li>
                                <li>A scientific calculator (physical or digital)</li>
                            </ul>
                            
                            <h3 class="text-lg font-bold mt-6 mb-2">Who This Course Is For</h3>
                            <ul class="list-disc pl-6 mb-6">
                                <li>High school students preparing for competitive exams</li>
                                <li>College students majoring in STEM fields</li>
                                <li>Anyone looking to strengthen their mathematical foundation</li>
                                <li>Professionals who use mathematics in their work</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="tab-content" id="curriculum">
                        <h2 class="text-xl font-bold mb-4">Course Curriculum</h2>
                        
                        <!-- Module 1 -->
                        <div class="module">
                            <div class="module-header">
                                <h3 class="module-title">Module 1: Foundations of Advanced Mathematics</h3>
                                <i data-lucide="chevron-down" class="module-toggle"></i>
                            </div>
                            <div class="module-content">
                                <ul class="lesson-list">
                                    <li class="lesson-item">
                                        <i data-lucide="play-circle" class="lesson-icon"></i>
                                        <span class="lesson-title">Introduction to Advanced Mathematics</span>
                                        <span class="lesson-duration">45 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="play-circle" class="lesson-icon"></i>
                                        <span class="lesson-title">Mathematical Notation and Symbols</span>
                                        <span class="lesson-duration">30 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-text" class="lesson-icon"></i>
                                        <span class="lesson-title">Logical Reasoning and Proof Techniques</span>
                                        <span class="lesson-duration">1 hr</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-text" class="lesson-icon"></i>
                                        <span class="lesson-title">Set Theory and Functions</span>
                                        <span class="lesson-duration">1 hr 15 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-question" class="lesson-icon"></i>
                                        <span class="lesson-title">Module 1 Quiz</span>
                                        <span class="lesson-duration">30 min</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <!-- Module 2 -->
                        <div class="module">
                            <div class="module-header">
                                <h3 class="module-title">Module 2: Advanced Calculus</h3>
                                <i data-lucide="chevron-down" class="module-toggle"></i>
                            </div>
                            <div class="module-content">
                                <ul class="lesson-list">
                                    <li class="lesson-item">
                                        <i data-lucide="play-circle" class="lesson-icon"></i>
                                        <span class="lesson-title">Limits and Continuity</span>
                                        <span class="lesson-duration">1 hr</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="play-circle" class="lesson-icon"></i>
                                        <span class="lesson-title">Differentiation Techniques</span>
                                        <span class="lesson-duration">1 hr 30 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-text" class="lesson-icon"></i>
                                        <span class="lesson-title">Applications of Derivatives</span>
                                        <span class="lesson-duration">1 hr 15 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="play-circle" class="lesson-icon"></i>
                                        <span class="lesson-title">Integration Techniques</span>
                                        <span class="lesson-duration">1 hr 45 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-text" class="lesson-icon"></i>
                                        <span class="lesson-title">Applications of Integrals</span>
                                        <span class="lesson-duration">1 hr 30 min</span>
                                    </li>
                                    <li class="lesson-item">
                                        <i data-lucide="file-question" class="lesson-icon"></i>
                                        <span class="lesson-title">Module 2 Quiz</span>
                                        <span class="lesson-duration">45 min</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <!-- More modules would go here -->
                    </div>
                    
                    <div class="tab-content" id="instructor">
                        <h2 class="text-xl font-bold mb-4">Meet Your Instructor</h2>
                        
                        <div class="flex gap-6 mb-6">
                            <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Prof. Sarah Johnson" class="w-24 h-24 rounded-full object-cover">
                            <div>
                                <h3 class="text-lg font-bold">Prof. Sarah Johnson</h3>
                                <p class="text-muted-foreground mb-2">Mathematics Professor at Cambridge University</p>
                                <div class="flex items-center gap-2 mb-4">
                                    <i data-lucide="star" class="text-yellow-500"></i>
                                    <span>4.9 Instructor Rating</span>
                                </div>
                                <div class="flex gap-4">
                                    <div>
                                        <div class="font-bold">128</div>
                                        <div class="text-sm text-muted-foreground">Reviews</div>
                                    </div>
                                    <div>
                                        <div class="font-bold">15</div>
                                        <div class="text-sm text-muted-foreground">Courses</div>
                                    </div>
                                    <div>
                                        <div class="font-bold">12,450+</div>
                                        <div class="text-sm text-muted-foreground">Students</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <p class="mb-4">Prof. Sarah Johnson has been teaching mathematics for over 15 years. She holds a Ph.D. in Applied Mathematics from MIT and has published numerous research papers in prestigious mathematical journals.</p>
                        
                        <p class="mb-4">Her teaching philosophy centers around making complex mathematical concepts accessible to students of all backgrounds. She believes in a problem-solving approach that emphasizes understanding over memorization.</p>
                        
                        <p>When not teaching, Prof. Johnson enjoys hiking, playing chess, and volunteering for mathematics outreach programs in underserved communities.</p>
                    </div>
                    
                    <div class="tab-content" id="reviews">
                        <div class="flex justify-between items-center mb-6">
                            <h2 class="text-xl font-bold">Student Reviews</h2>
                            <button class="btn btn-outline">Write a Review</button>
                        </div>
                        
                        <div class="mb-6">
                            <div class="flex items-center gap-2 mb-2">
                                <div class="text-3xl font-bold">4.9</div>
                                <div>
                                    <div class="flex text-yellow-500">
                                        <i data-lucide="star"></i>
                                        <i data-lucide="star"></i>
                                        <i data-lucide="star"></i>
                                        <i data-lucide="star"></i>
                                        <i data-lucide="star"></i>
                                    </div>
                                    <div class="text-sm text-muted-foreground">Course Rating</div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Review 1 -->
                        <div class="border-b border-border pb-6 mb-6">
                            <div class="flex justify-between mb-2">
                                <div class="flex items-center gap-3">
                                    <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Rahul Patel" class="w-10 h-10 rounded-full">
                                    <div>
                                        <div class="font-medium">Rahul Patel</div>
                                        <div class="text-sm text-muted-foreground">2 months ago</div>
                                    </div>
                                </div>
                                <div class="flex text-yellow-500">
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                </div>
                            </div>
                            <p>This course completely transformed my understanding of advanced mathematics. Prof. Johnson explains complex concepts in such a clear and engaging way. The practice problems and quizzes helped reinforce my learning. Highly recommended!</p>
                        </div>
                        
                        <!-- Review 2 -->
                        <div class="border-b border-border pb-6 mb-6">
                            <div class="flex justify-between mb-2">
                                <div class="flex items-center gap-3">
                                    <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Ananya Gupta" class="w-10 h-10 rounded-full">
                                    <div>
                                        <div class="font-medium">Ananya Gupta</div>
                                        <div class="text-sm text-muted-foreground">1 month ago</div>
                                    </div>
                                </div>
                                <div class="flex text-yellow-500">
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                    <i data-lucide="star"></i>
                                </div>
                            </div>
                            <p>I was struggling with calculus before taking this course. The step-by-step explanations and visual aids made everything click for me. I especially appreciated the real-world applications that showed how these concepts are used in different fields. My grades have improved significantly!</p>
                        </div>
                        
                        <!-- More reviews would go here -->
                        
                        <div class="text-center mt-6">
                            <button class="btn btn-outline">Load More Reviews</button>
                        </div>
                    </div>
                </div>
                
                <!-- Course Sidebar -->
                <div class="course-sidebar">
                    <div class="course-price-box">
                        <div class="course-price">₹1,499</div>
                        <a href="payment.jsp" class="btn btn-primary course-enrollment">Enroll Now</a>
                    </div>
                    
                    <div class="course-features">
                        <h3 class="text-lg font-bold mb-4">This Course Includes:</h3>
                        <div class="course-feature">
                            <i data-lucide="play"></i>
                            <span>48 hours of video content</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="file-text"></i>
                            <span>75 downloadable resources</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="file-question"></i>
                            <span>12 quizzes and assessments</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="message-square"></i>
                            <span>Discussion forums</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="award"></i>
                            <span>Certificate of completion</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="infinity"></i>
                            <span>Lifetime access</span>
                        </div>
                        <div class="course-feature">
                            <i data-lucide="smartphone"></i>
                            <span>Access on mobile and TV</span>
                        </div>
                    </div>
                    
                    <div class="mt-6">
                        <button class="btn btn-outline w-full mb-2">
                            <i data-lucide="share-2" class="mr-2"></i>
                            <span>Share Course</span>
                        </button>
                        <button class="btn btn-ghost w-full">
                            <i data-lucide="gift" class="mr-2"></i>
                            <span>Gift This Course</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Related Courses -->
    <section class="py-10 bg-muted">
        <div class="container">
            <h2 class="text-xl font-bold mb-6">You May Also Like</h2>
            
            <div class="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-6">
                <!-- Course Card 1 -->
                <div class="course-card">
                    <img src="https://images.unsplash.com/photo-1509228468518-180dd4864904?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Calculus" class="course-card-image">
                    <div class="course-card-content">
                        <h3 class="course-card-title">Calculus Mastery</h3>
                        <p class="course-card-instructor">By Prof. David Wilson</p>
                        <p class="course-card-description">Master differential and integral calculus with step-by-step explanations and practice problems.</p>
                        <div class="course-card-meta">
                            <div class="course-card-rating">
                                <i data-lucide="star"></i>
                                <span>4.7 (89)</span>
                            </div>
                            <div class="course-card-price">₹1,299</div>
                        </div>
                    </div>
                </div>
                
                <!-- More related courses would go here -->
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-grid">
                <div>
                    <a href="index.jsp" class="footer-logo">TensionToTopper</a>
                    <p class="footer-description">Transforming academic tension into success through comprehensive e-learning solutions.</p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i data-lucide="facebook"></i></a>
                        <a href="#" class="social-link"><i data-lucide="twitter"></i></a>
                        <a href="#" class="social-link"><i data-lucide="instagram"></i></a>
                        <a href="#" class="social-link"><i data-lucide="youtube"></i></a>
                    </div>
                </div>
                
                <div>
                    <h3 class="footer-heading">Quick Links</h3>
                    <ul class="footer-links">
                        <li class="footer-link"><a href="index.jsp">Home</a></li>
                        <li class="footer-link"><a href="course-list.jsp">Courses</a></li>
                        <li class="footer-link"><a href="announcements.jsp">Announcements</a></li>
                        <li class="footer-link"><a href="#">About Us</a></li>
                        <li class="footer-link"><a href="#">Contact</a></li>
                    </ul>
                </div>
                
                <div>
                    <h3 class="footer-heading">Support</h3>
                    <ul class="footer-links">
                        <li class="footer-link"><a href="#">Help Center</a></li>
                        <li class="footer-link"><a href="#">FAQs</a></li>
                        <li class="footer-link"><a href="#">Community</a></li>
                        <li class="footer-link"><a href="#">Feedback</a></li>
                    </ul>
                </div>
                
                <div>
                    <h3 class="footer-heading">Contact Us</h3>
                    <ul class="footer-links">
  <li class="footer-link"><a href="mailto:info@tensiontopper.com">info@tensiontopper.com</a></li>
                        <li class="footer-link"><a href="tel:+919876543210">9862130504</a></li>
                        <li class="footer-link"><a href="#">Dharan , Nepal</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2023 TensionToTopper. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <script>
        // Initialize Lucide icons
        lucide.createIcons();
        
        // Mobile menu toggle
        const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
        const mobileMenuClose = document.querySelector('.mobile-menu-close');
        const mobileMenu = document.querySelector('.mobile-menu');
        const overlay = document.querySelector('.overlay');
        
        mobileMenuBtn.addEventListener('click', () => {
            mobileMenu.classList.add('open');
            overlay.classList.add('open');
            document.body.style.overflow = 'hidden';
        });
        
        mobileMenuClose.addEventListener('click', () => {
            mobileMenu.classList.remove('open');
            overlay.classList.remove('open');
            document.body.style.overflow = '';
        });
        
        overlay.addEventListener('click', () => {
            mobileMenu.classList.remove('open');
            overlay.classList.remove('open');
            document.body.style.overflow = '';
        });
        
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
        
        // Module toggle functionality
        const moduleHeaders = document.querySelectorAll('.module-header');
        
        moduleHeaders.forEach(header => {
            header.addEventListener('click', () => {
                const module = header.parentElement;
                module.classList.toggle('open');
            });
        });
    </script>
</body>
</html>