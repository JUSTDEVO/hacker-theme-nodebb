<!-- IMPORT header.tpl -->

<div class="topic-page" style="padding: 40px 0;">
    <div class="topic-header" style="margin-bottom: 30px;">
        <h1 style="font-size: 28px; font-weight: 700; color: #e0e6ed; margin-bottom: 15px;">
            {{{if locked}}}
            <i class="fa fa-lock" style="color: #ff0055; margin-right: 10px;"></i>
            {{{end}}}
            {{{if pinned}}}
            <i class="fa fa-thumbtack" style="color: #00d9ff; margin-right: 10px;"></i>
            {{{end}}}
            {title}
        </h1>
        
        <div style="display: flex; gap: 20px; align-items: center; color: #8b95a5; font-size: 13px;">
            <span>
                <i class="fa fa-user" style="margin-right: 5px;"></i>
                Started by <span style="color: #00d9ff; font-weight: 600;">{./user.username}</span>
            </span>
            <span>
                <i class="fa fa-clock" style="margin-right: 5px;"></i>
                {./timestamp}
            </span>
            <span>
                <i class="fa fa-eye" style="margin-right: 5px;"></i>
                {./viewcount} views
            </span>
        </div>
        
        {{{if tags.length}}}
        <div style="margin-top: 15px; display: flex; gap: 8px; flex-wrap: wrap;">
            {{{each tags}}}
            <a href="{config.relative_path}/tags/{./value}" class="badge badge-primary" style="text-decoration: none;">
                <i class="fa fa-tag"></i> {./value}
            </a>
            {{{end}}}
        </div>
        {{{end}}}
    </div>
    
    <div class="posts-container">
        {{{each posts}}}
        <div class="post-container" data-pid="{./pid}">
            <div class="post-header">
                <img src="{./user.picture}" alt="{./user.username}" class="post-avatar" />
                
                <div class="post-author-info">
                    <a href="{config.relative_path}/user/{./user.userslug}" class="username">
                        {./user.username}
                    </a>
                    <div class="user-title">
                        {{{if ./user.banned}}}
                        <span style="color: #ff0055;">BANNED</span>
                        {{{else}}}
                        {./user.reputation} reputation
                        {{{end}}}
                    </div>
                </div>
                
                <div class="post-timestamp">
                    <i class="fa fa-clock"></i> {./timestamp}
                </div>
            </div>
            
            <div class="post-content">
                {./content}
            </div>
            
            <div class="post-footer">
                {{{if privileges.topics:reply}}}
                <button class="post-action" data-action="reply">
                    <i class="fa fa-reply"></i> Reply
                </button>
                {{{end}}}
                
                <button class="post-action" data-action="upvote">
                    <i class="fa fa-arrow-up"></i> Upvote ({./votes})
                </button>
                
                {{{if ./display_edit_tools}}}
                <button class="post-action" data-action="edit">
                    <i class="fa fa-edit"></i> Edit
                </button>
                <button class="post-action" data-action="delete">
                    <i class="fa fa-trash"></i> Delete
                </button>
                {{{end}}}
                
                <button class="post-action" data-action="share">
                    <i class="fa fa-share"></i> Share
                </button>
            </div>
        </div>
        {{{end}}}
    </div>
    
    {{{if privileges.topics:reply}}}
    <div class="card" style="margin-top: 30px;">
        <div class="card-header">
            <i class="fa fa-reply"></i> Post a Reply
        </div>
        <div style="padding: 20px;">
            <form id="reply-form">
                <div class="form-group">
                    <textarea id="reply-content" placeholder="Type your reply here..." rows="6"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-paper-plane"></i> Submit Reply
                </button>
            </form>
        </div>
    </div>
    {{{end}}}
    
    <!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT footer.tpl -->
