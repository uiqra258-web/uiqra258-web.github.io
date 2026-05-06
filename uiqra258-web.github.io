<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>John Doe - Portfolio</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
        }

        /* Navigation */
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            padding: 1rem 0;
            z-index: 1000;
            box-shadow: 0 2px 20px rgba(0,0,0,0.1);
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 2rem;
        }

        nav a {
            text-decoration: none;
            color: #555;
            font-weight: 500;
            transition: color 0.3s ease;
            position: relative;
        }

        nav a:hover {
            color: #6c5ce7;
        }

        nav a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background: #6c5ce7;
            transition: width 0.3s ease;
        }

        nav a:hover::after {
            width: 100%;
        }

        /* Sections */
        section {
            padding: 80px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Home Section */
        #home {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            margin-top: 0;
        }

        #home h1 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            margin-bottom: 1rem;
            font-weight: 300;
        }

        #home p {
            font-size: 1.3rem;
            max-width: 600px;
            margin: 0 auto 2rem;
            opacity: 0.9;
        }

        .btn {
            display: inline-block;
            background: rgba(255,255,255,0.2);
            color: white;
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.3);
        }

        .btn:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }

        /* About Section */
        #about {
            background: white;
            text-align: center;
        }

        #about h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #333;
        }

        .skills {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1rem;
            margin: 2rem 0;
        }

        .skill {
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            padding: 10px 20px;
            border-radius: 25px;
            font-weight: 500;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .bio {
            max-width: 600px;
            margin: 0 auto;
            font-size: 1.1rem;
            color: #666;
            line-height: 1.8;
        }

        /* Projects Section */
        #projects {
            background: #f8f9ff;
        }

        #projects h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 3rem;
            color: #333;
        }

        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .project-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        .project-image {
            height: 200px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .project-content {
            padding: 1.5rem;
        }

        .project-content h3 {
            margin-bottom: 0.5rem;
            color: #333;
        }

        .project-content p {
            color: #666;
            margin-bottom: 1rem;
        }

        .project-links {
            display: flex;
            gap: 1rem;
        }

        .project-links a {
            color: #6c5ce7;
            text-decoration: none;
            font-weight: 500;
        }

        /* Contact Section */
        #contact {
            text-align: center;
            background: white;
        }

        #contact h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #333;
        }

        .contact-info {
            font-size: 1.2rem;
            margin: 2rem 0;
            color: #666;
        }

        .email-link {
            color: #6c5ce7;
            font-weight: 500;
            font-size: 1.3rem;
            text-decoration: none;
        }

        .email-link:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
                gap: 1rem;
                padding: 1rem;
            }

            section {
                padding: 60px 15px;
            }

            .projects-grid {
                grid-template-columns: 1fr;
            }

            .skills {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <!-- Home Section -->
    <section id="home">
        <div>
            <h1>John Doe</h1>
            <p>Full Stack Developer & UI/UX Designer creating beautiful, functional web experiences</p>
            <a href="#projects" class="btn">View My Work</a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about">
        <h2>About Me</h2>
        <div class="bio">
            I'm a passionate developer with 5+ years of experience building modern web applications. 
            I love turning complex problems into simple, beautiful solutions.
        </div>
        <div class="skills">
            <span class="skill">HTML/CSS</span>
            <span class="skill">JavaScript</span>
            <span class="skill">React</span>
            <span class="skill">Node.js</span>
            <span class="skill">Figma</span>
            <span class="skill">MongoDB</span>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects">
        <h2>Featured Projects</h2>
        <div class="projects-grid">
            <div class="project-card">
                <div class="project-image">E-Commerce Platform</div>
                <div class="project-content">
                    <h3>E-Commerce Platform</h3>
                    <p>Modern e-commerce solution built with React, Node.js, and Stripe integration. Features real-time inventory and responsive design.</p>
                    <div class="project-links">
                        <a href="#">Live Demo</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
            <div class="project-card">
                <div class="project-image">Task Management App</div>
                <div class="project-content">
                    <h3>Task Management App</h3>
                    <p>Collaborative task manager with drag-and-drop interface, real-time updates, and team collaboration features.</p>
                    <div class="project-links">
                        <a href="#">Live Demo</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
            <div class="project-card">
                <div class="project-image">Portfolio Dashboard</div>
                <div class="project-content">
                    <h3>Portfolio Dashboard</h3>
                    <p>Personal finance dashboard with data visualization, budget tracking, and investment portfolio management.</p>
                    <div class="project-links">
                        <a href="#">Live Demo</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <h2>Get In Touch</h2>
        <div class="contact-info">
            <p>Ready to work together? Send me an email!</p>
            <a href="mailto:john.doe@example.com" class="email-link">john.doe@example.com</a>
        </div>
    </section>
</body>
</html>
