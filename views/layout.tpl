<!DOCTYPE html>
<html>
<head>
    <meta charset="latin9" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - Genshin</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/general">General information</a></li>
                    <li><a href="/lore">Lore</a></li>
                    <li><a href="/characters">Characters</a></li>
                    <li><a href="/regions">Regions</a></li>

                    <li><a href="/reviews">Reviews</a></li>
                    <li><a href="/articles">Useful articles</a></li>
                    <li><a href="/orders">Completed orders</a></li>
                    <li><a href="/novelties">Current novelties</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - Genshin</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
