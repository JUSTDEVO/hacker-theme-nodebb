<!-- IMPORT header.tpl -->

<div class="register-page" style="padding: 60px 0; min-height: 70vh; display: flex; align-items: center; justify-content: center;">
    <div class="card" style="max-width: 500px; width: 100%;">
        <div class="card-header" style="text-align: center;">
            <i class="fa fa-user-plus" style="font-size: 48px; color: #00d9ff; margin-bottom: 15px; display: block;"></i>
            <h2 style="color: #00d9ff; font-size: 24px; margin: 0;">Create Account</h2>
        </div>
        
        <div style="padding: 30px;">
            <form id="register-form">
                <div class="form-group">
                    <label for="email">
                        <i class="fa fa-envelope"></i> Email Address
                    </label>
                    <input type="email" id="email" name="email" placeholder="your@email.com" required />
                </div>
                
                <div class="form-group">
                    <label for="username">
                        <i class="fa fa-user"></i> Username
                    </label>
                    <input type="text" id="username" name="username" placeholder="Choose a username" required />
                </div>
                
                <div class="form-group">
                    <label for="password">
                        <i class="fa fa-lock"></i> Password
                    </label>
                    <input type="password" id="password" name="password" placeholder="Create a strong password" required />
                </div>
                
                <div class="form-group">
                    <label for="password-confirm">
                        <i class="fa fa-lock"></i> Confirm Password
                    </label>
                    <input type="password" id="password-confirm" name="password-confirm" placeholder="Confirm your password" required />
                </div>
                
                <div style="margin-bottom: 20px;">
                    <label style="display: flex; align-items: flex-start; color: #8b95a5; font-size: 13px; cursor: pointer;">
                        <input type="checkbox" name="agree" required style="margin-right: 8px; margin-top: 3px;" />
                        <span>
                            I agree to the <a href="{config.relative_path}/tos" style="color: #00ff88;">Terms of Service</a> 
                            and <a href="{config.relative_path}/privacy" style="color: #00ff88;">Privacy Policy</a>
                        </span>
                    </label>
                </div>
                
                <button type="submit" class="btn btn-primary" style="width: 100%; padding: 12px;">
                    <i class="fa fa-rocket"></i> Initialize Account
                </button>
            </form>
            
            <div style="text-align: center; margin-top: 25px; padding-top: 25px; border-top: 1px solid #1e2433;">
                <p style="color: #8b95a5; font-size: 13px; margin-bottom: 10px;">
                    Already have an account?
                </p>
                <a href="{config.relative_path}/login" class="btn btn-secondary">
                    <i class="fa fa-sign-in"></i> Login
                </a>
            </div>
        </div>
    </div>
</div>

<!-- IMPORT footer.tpl -->
