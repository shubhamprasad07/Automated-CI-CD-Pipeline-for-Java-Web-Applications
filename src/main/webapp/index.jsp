<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cool JSP Website</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    
    <style>
        /* General Body Styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            line-height: 1.6;
            background-color: #f4f7f6;
            color: #333;
        }

        /* Container for consistent spacing */
        .container {
            width: 90%;
            max-width: 1100px;
            margin: auto;
            padding: 20px 0;
        }

        /* Header and Navigation */
        header {
            background: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: #0056b3;
            text-decoration: none;
        }

        .nav-links {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin-left: 25px;
        }

        .nav-links a {
            text-decoration: none;
            color: #333;
            font-weight: 400;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #007bff;
        }

        /* Hero Section */
        #hero {
            background: linear-gradient(rgba(0, 86, 179, 0.7), rgba(0, 86, 179, 0.7)), url('https://placehold.co/1920x1080/0056b3/ffffff?text=Abstract+Background') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
            height: 70vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        .cta-button {
            background: #ffc107;
            color: #333;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 700;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .cta-button:hover {
            background: #ffca2c;
            transform: translateY(-3px);
        }

        /* Features Section */
        #features {
            padding: 60px 0;
            text-align: center;
        }

        #features h2, #about h2 {
            font-size: 2.5rem;
            margin-bottom: 40px;
            color: #0056b3;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .feature-card {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.12);
        }

        .feature-card .icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
            display: block;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: #007bff;
        }

        /* About Section */
        #about {
            background: #fff;
            padding: 60px 20px;
            text-align: center;
        }

        #about p {
            max-width: 800px;
            margin: 0 auto;
        }

        /* Footer */
        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-links {
                display: none; /* Simple hiding for mobile, can be replaced with a burger menu */
            }
            .hero-content h1 {
                font-size: 2.5rem;
            }
        }
    </style>
</head>
<body>

    <header>
        <nav class="container">
            <a href="#" class="logo">JSP.cool</a>
            <ul class="nav-links">
                <li><a href="#hero">Home</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="hero">
            <div class="hero-content">
                <h1>Welcome to the Future of JSP</h1>
                <p>A modern, responsive, and dynamic web experience built with JavaServer Pages.</p>
                <a href="#features" class="cta-button">Learn More</a>
            </div>
        </section>

        <section id="features" class="container">
            <h2>Core Features</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <i class="icon">🚀</i>
                    <h3>Dynamic Content</h3>
                    <p>Leverages JSP to generate content on the fly. The current server time is: 
                        <strong>
                            <%
                                Date now = new Date();
                                SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss a z");
                                out.print(sdf.format(now));
                            %>
                        </strong>
                    </p>
                </div>
                <div class="feature-card">
                    <i class="icon">📱</i>
                    <h3>Fully Responsive WebPages</h3>
                    <p>Designed with a mobile-first approach to look stunning on any device, from desktops to smartphones.</p>
                </div>
                <div class="feature-card">
                    <i class="icon">✨</i>
                    <h3>Modern Design</h3>
                    <p>Clean aesthetics, smooth animations, and a professional layout using modern CSS techniques.</p>
                    <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
                </div>
            </div>
        </section>

        <section id="about" class="container">
            <h2>About Us</h2>
            <p>We are dedicated to demonstrating the power and flexibility of JSP for building modern web applications. This project serves as a template for developers looking to create cool, engaging websites with server-side Java technology.</p>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; <% out.print(Calendar.getInstance().get(Calendar.YEAR)); %> Your Company. All Rights Reserved.</p>
            <p>A Cool JSP Website Template</p>
        </div>
    </footer>

    <script>
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Add a subtle scroll animation to the header
        window.addEventListener('scroll', () => {
            const header = document.querySelector('header');
            if (window.scrollY > 50) {
                header.style.backgroundColor = 'rgba(255, 255, 255, 0.95)';
                header.style.backdropFilter = 'blur(5px)';
            } else {
                header.style.backgroundColor = '#fff';
                header.style.backdropFilter = 'none';
            }
        });
    </script>
</body>
</html>
