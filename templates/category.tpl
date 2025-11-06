<!-- IMPORT header.tpl -->

<div class="category-page" style="padding: 40px 0;">
    <div class="page-header" style="margin-bottom: 30px; display: flex; justify-content: space-between; align-items: center;">
        <div>
            <h1 style="font-size: 32px; font-weight: 700; color: #00ff88; text-shadow: 0 0 10px rgba(0, 255, 136, 0.5); margin-bottom: 10px;">
                <i class="fa {icon}" style="margin-right: 10px;"></i>
                {name}
            </h1>
            <p style="color: #8b95a5; font-size: 14px;">{description}</p>
        </div>
        
        {{{if privileges.topics:create}}}
        <a href="{config.relative_path}/compose?cid={cid}" class="btn btn-primary">
            <i class="fa fa-plus"></i> New Topic
        </a>
        {{{end}}}
    </div>
    
    <div class="topic-list">
        {{{if !topics.length}}}
        <div class="alert alert-info">
            <i class="fa fa-info-circle"></i> No topics found in this category.
        </div>
        {{{else}}}
        {{{each topics}}}
        <div class="topic-list-item">
            <img src="{./user.picture}" alt="{./user.username}" class="topic-avatar" />
            
            <div class="topic-content">
                <div class="topic-title">
                    <a href="{config.relative_path}/topic/{./slug}">
                        {{{if ./pinned}}}
                        <i class="fa fa-thumbtack" style="color: #00d9ff; margin-right: 5px;"></i>
                        {{{end}}}
                        {{{if ./locked}}}
                        <i class="fa fa-lock" style="color: #ff0055; margin-right: 5px;"></i>
                        {{{end}}}
                        {./title}
                    </a>
                </div>
                <div class="topic-meta">
                    <span class="username">{./user.username}</span>
                    <span class="timeago" title="{./timestampISO}">{./timestamp}</span>
                    {{{if ./tags.length}}}
                    <span style="display: flex; gap: 5px; margin-left: 10px;">
                        {{{each ./tags}}}
                        <span class="badge badge-secondary">{./value}</span>
                        {{{end}}}
                    </span>
                    {{{end}}}
                </div>
            </div>
            
            <div class="topic-stats">
                <div class="stat">
                    <div class="stat-value">{./postcount}</div>
                    <div class="stat-label">Replies</div>
                </div>
                <div class="stat">
                    <div class="stat-value">{./viewcount}</div>
                    <div class="stat-label">Views</div>
                </div>
            </div>
        </div>
        {{{end}}}
        {{{end}}}
    </div>
    
    <!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT footer.tpl -->
