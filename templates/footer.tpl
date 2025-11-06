</div>
    
    <footer id="footer" class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h4>About</h4>
                    <p style="color: #8b95a5; font-size: 13px;">
                        {{{if config.description}}}
                        {config.description}
                        {{{else}}}
                        A hacker-themed community forum powered by NodeBB
                        {{{end}}}
                    </p>
                </div>
                
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="{relative_path}/">Home</a></li>
                        <li><a href="{relative_path}/categories">Categories</a></li>
                        <li><a href="{relative_path}/recent">Recent Topics</a></li>
                        <li><a href="{relative_path}/popular">Popular</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h4>Community</h4>
                    <ul>
                        <li><a href="{relative_path}/users">Members</a></li>
                        <li><a href="{relative_path}/groups">Groups</a></li>
                        <li><a href="{relative_path}/tags">Tags</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="{relative_path}/about">About</a></li>
                        <li><a href="{relative_path}/tos">Terms of Service</a></li>
                        <li><a href="{relative_path}/privacy">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>
                    &copy; {{{year}}} {title}. Powered by <a href="https://nodebb.org" target="_blank" style="color: #00ff88;">NodeBB</a>
                    <span style="margin: 0 10px;">|</span>
                    Theme: <span style="color: #00d9ff;">Hacker Terminal</span>
                </p>
            </div>
        </div>
    </footer>
    
    <script src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>
    {{{each scripts}}}
    <script src="{this}"></script>
    {{{end}}}
</body>
</html>
