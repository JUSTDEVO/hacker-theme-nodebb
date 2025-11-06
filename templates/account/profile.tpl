<!-- IMPORT header.tpl -->

<div class="account-page" style="padding: 40px 0;">
    <div class="account-header">
        <div style="display: flex; gap: 30px; align-items: center;">
            <img src="{picture}" alt="{username}" class="profile-avatar" />
            
            <div class="profile-info">
                <h1 class="username">{username}</h1>
                
                {{{if aboutme}}}
                <p style="color: #8b95a5; font-size: 14px; margin-bottom: 15px;">{aboutme}</p>
                {{{end}}}
                
                <div class="user-stats">
                    <div class="stat">
                        <div class="stat-value">{postcount}</div>
                        <div class="stat-label">Posts</div>
                    </div>
                    <div class="stat">
                        <div class="stat-value">{reputation}</div>
                        <div class="stat-label">Reputation</div>
                    </div>
                    <div class="stat">
                        <div class="stat-value">{followerCount}</div>
                        <div class="stat-label">Followers</div>
                    </div>
                    <div class="stat">
                        <div class="stat-value">{followingCount}</div>
                        <div class="stat-label">Following</div>
                    </div>
                </div>
                
                <div style="margin-top: 20px; display: flex; gap: 10px;">
                    {{{if !isSelf}}}
                    <button class="btn btn-primary">
                        <i class="fa fa-user-plus"></i> Follow
                    </button>
                    <button class="btn btn-secondary">
                        <i class="fa fa-envelope"></i> Message
                    </button>
                    {{{else}}}
                    <a href="{config.relative_path}/user/{userslug}/settings" class="btn btn-primary">
                        <i class="fa fa-cog"></i> Edit Profile
                    </a>
                    {{{end}}}
                </div>
            </div>
        </div>
    </div>
    
    <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 30px; margin-top: 30px;">
        <div>
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-comments"></i> Recent Posts
                </div>
                <div style="padding: 20px;">
                    {{{if posts.length}}}
                    {{{each posts}}}
                    <div style="padding: 15px 0; border-bottom: 1px solid #1e2433;">
                        <a href="{config.relative_path}/topic/{./topic.slug}" style="color: #e0e6ed; text-decoration: none; font-weight: 600; display: block; margin-bottom: 8px;">
                            {./topic.title}
                        </a>
                        <div style="color: #8b95a5; font-size: 13px;">
                            {./content}
                        </div>
                        <div style="color: #5a6270; font-size: 12px; margin-top: 8px;">
                            <i class="fa fa-clock"></i> {./timestamp}
                        </div>
                    </div>
                    {{{end}}}
                    {{{else}}}
                    <p style="color: #8b95a5; text-align: center; padding: 20px;">No posts yet</p>
                    {{{end}}}
                </div>
            </div>
        </div>
        
        <div>
            <div class="widget">
                <div class="widget-title">
                    <i class="fa fa-info-circle"></i> Information
                </div>
                <div class="widget-content">
                    <div style="margin-bottom: 15px;">
                        <div style="color: #5a6270; font-size: 11px; text-transform: uppercase; margin-bottom: 5px;">Joined</div>
                        <div style="color: #e0e6ed;">{joindateISO}</div>
                    </div>
                    
                    <div style="margin-bottom: 15px;">
                        <div style="color: #5a6270; font-size: 11px; text-transform: uppercase; margin-bottom: 5px;">Last Seen</div>
                        <div style="color: #e0e6ed;">{lastonlineISO}</div>
                    </div>
                    
                    {{{if email}}}
                    <div style="margin-bottom: 15px;">
                        <div style="color: #5a6270; font-size: 11px; text-transform: uppercase; margin-bottom: 5px;">Email</div>
                        <div style="color: #e0e6ed;">{email}</div>
                    </div>
                    {{{end}}}
                    
                    {{{if website}}}
                    <div style="margin-bottom: 15px;">
                        <div style="color: #5a6270; font-size: 11px; text-transform: uppercase; margin-bottom: 5px;">Website</div>
                        <a href="{website}" target="_blank" style="color: #00ff88;">{website}</a>
                    </div>
                    {{{end}}}
                </div>
            </div>
            
            {{{if groups.length}}}
            <div class="widget">
                <div class="widget-title">
                    <i class="fa fa-users"></i> Groups
                </div>
                <div class="widget-content">
                    {{{each groups}}}
                    <span class="badge badge-primary" style="margin: 4px;">
                        {./name}
                    </span>
                    {{{end}}}
                </div>
            </div>
            {{{end}}}
        </div>
    </div>
</div>

<!-- IMPORT footer.tpl -->
