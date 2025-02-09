# Create site.yml

FileText <- paste0('
name: "More-recipes"
title: "More recipes"
base_url: https://pat-reen.github.io/More-Modelling-Recipes/
theme: main.css 
navbar:
  logo: img/logo.png
  search: false
  right:
    - icon: fas fa-home
      href: index.html
    - icon: fab fa-linkedin
      href: https://www.linkedin.com/in/patrick-reen/
    - icon: fab fa-github
      href: https://github.com/Pat-Reen
output_dir: "docs"
output: distill::distill_article
collections:
  posts:
    share: [twitter, linkedin]
    citations: false
    categories: false
    categories_metadata: true
')

readr::write_lines(FileText, file = "_site.yml")

# Create main.css

FileText <- paste0('

.posts-list-caption {
    display: none;
}

.distill-site-header {
  --bkgd-color:     #010101;
  --title-size:     25px;
  --text-size:      20px;
}

.distill-site-header .logo img {
    float: left;
    padding: 5px 5px 5px 0px;
    width: 100px;
    height: 100px;
    max-height: 100px;
}

.distill-site-header a, .distill-site-header .title {
    float: left;
    padding: 45px 10px 10px 10px;
}

.d-title {
    position:relative; top:80px
}

d-article {
    position:relative; top:80px
}

d-byline {
    position:relative; top:80px
}

@media screen and (min-width: 320px) and (max-width: 1024px){
  .distill-site-header .logo img {
      display: inline-block;
  }
  .distill-site-header a, .distill-site-header .title {
    float: left;
    text-align: center;
  }
}

@media screen and (max-width: 768px){
  .distill-site-header.responsive {
      min-height: 100px;
  }
  .nav-right a {
      padding: 10px
  }
  .nav-right a.nav-toggle {
      padding: 45px 10px 10px 10px;
  }
}

')

readr::write_lines(FileText, file = "main.css")
