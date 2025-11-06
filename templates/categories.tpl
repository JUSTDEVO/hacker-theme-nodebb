<!-- IMPORT header.tpl -->

<div class="categories-page" style="padding: 40px 0;">
    <div class="page-header" style="margin-bottom: 40px;">
        <h1 style="font-size: 36px; font-weight: 700; color: #00ff88; text-shadow: 0 0 10px rgba(0, 255, 136, 0.5); margin-bottom: 10px;">
            <span style="color: #00d9ff;">&gt;</span> Categories
        </h1>
        <p style="color: #8b95a5; font-size: 16px;">Browse all forum categories</p>
    </div>
    
    <div class="categories-list">
        {{{each categories}}}
        <div class="category-item">
            <div class="category-icon" style="background: linear-gradient(135deg, {./bgColor}, {./color});">
                <i class="fa {./icon}"></i>
            </div>
            
            <div class="category-info">
                <a href="{config.relative_path}/category/{./slug}" class="category-title">
                    {./name}
                </a>
                <div class="category-description">{./description}</div>
                
                {{{if ./children.length}}}
                <div style="margin-top: 10px; display: flex; gap: 10px; flex-wrap: wrap;">
                    {{{each ./children}}}
                    <a href="{config.relative_path}/category/{./slug}" 
                       class="badge badge-secondary" 
                       style="text-decoration: none;">
                        {./name}
                    </a>
                    {{{end}}}
                </div>
                {{{end}}}
            </div>
            
            <div class="category-stats">
                <div class="stat">
                    <div class="stat-value">{./topic_count}</div>
                    <div class="stat-label">Topics</div>
                </div>
                <div class="stat">
                    <div class="stat-value">{./post_count}</div>
                    <div class="stat-label">Posts</div>
                </div>
            </div>
        </div>
        {{{end}}}
    </div>
</div>

<!-- IMPORT footer.tpl -->
