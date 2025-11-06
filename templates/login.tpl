<!-- IMPORT header.tpl -->

<div class="login-page" style="padding: 60px 0; min-height: 70vh; display: flex; align-items: center; justify-content: center;">
    <div class="card" style="max-width: 450px; width: 100%;">
        <div class="card-header" style="text-align: center;">
            <i class="fa fa-terminal" style="font-size: 48px; color: #00ff88; margin-bottom: 15px; display: block;"></i>
            <h2 style="color: #00ff88; font-size: 24px; margin: 0;">System Login</h2>
        </div>
        
        <div style="padding: 30px;">
            <form id="login-form">
                <div class="form-group">
                    <label for="username">
                        <i class="fa fa-user"></i> Username or Email
                    </label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" required />
                </div>
                
                <div class="form-group">
                    <label for="password">
                        <i class="fa fa-lock"></i> Password
                    </label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required />
                </div>
                
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                    <label style="display: flex; align-items: center; color: #8b95a5; font-size: 13px; cursor: pointer;">
                        <input type="checkbox" name="remember" style="margin-right: 8px;" />
                        Remember me
                    </label>
                    
                    <a href="{config.relative_path}/reset" style="color: #00d9ff; font-size: 13px; text-decoration: none;">
                        Forgot password?
                    </a>
                </div>
                
                <button type="submit" class="btn btn-primary" style="width: 100%; padding: 12px;">
                    <i class="fa fa-sign-in"></i> Access System
                </button>
            </form>
            
            <div style="text-align: center; margin-top: 25px; padding-top: 25px; border-top: 1px solid #1e2433;">
                <p style="color: #8b95a5; font-size: 13px; margin-bottom: 10px;">
                    Don't have an account?
                </p>
                <a href="{config.relative_path}/register" class="btn btn-secondary">
                    <i class="fa fa-user-plus"></i> Create Account
                </a>
            </div>
        </div>
    </div>
</div>

<!-- IMPORT footer.tpl -->
