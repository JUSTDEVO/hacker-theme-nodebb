<!DOCTYPE html>
<html lang="{language}" data-dir="{userLang}" style="direction: {languageDirection};">
<head>
    <title>{browserTitle}</title>
    {{{each metaTags}}}
    <meta{{{each this}}} {key}="{value}"{{{end}}} />
    {{{end}}}
    <link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
    {{{each linkTags}}}
    <link{{{each this}}} {key}="{value}"{{{end}}} />
    {{{end}}}
    <script>
        var config = JSON.parse('{{configJSON}}');
        var app = {
            user: JSON.parse('{{userJSON}}')
        };
    </script>
</head>
<body class="{bodyClass}">
    <nav id="header" class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="{relative_path}/">
                {{{if brand:logo}}}
                <img alt="{brand:logo:alt}" src="{brand:logo}" />
                {{{else}}}
                {title}
                {{{end}}}
            </a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/">
                            <i class="fa fa-home"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/categories">
                            <i class="fa fa-list"></i> Categories
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/recent">
                            <i class="fa fa-clock"></i> Recent
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/tags">
                            <i class="fa fa-tags"></i> Tags
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/users">
                            <i class="fa fa-users"></i> Users
                        </a>
                    </li>
                    
                    {{{if user.uid}}}
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <img src="{user.picture}" alt="{user.username}" style="width: 24px; height: 24px; border-radius: 4px; margin-right: 5px;" />
                            {user.username}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{relative_path}/user/{user.userslug}">Profile</a></li>
                            <li><a class="dropdown-item" href="{relative_path}/user/{user.userslug}/settings">Settings</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#" component="user/logout">Logout</a></li>
                        </ul>
                    </li>
                    {{{else}}}
                    <li class="nav-item">
                        <a class="nav-link" href="{relative_path}/login">
                            <i class="fa fa-sign-in"></i> Login
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="{relative_path}/register">
                            Register
                        </a>
                    </li>
                    {{{end}}}
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">
