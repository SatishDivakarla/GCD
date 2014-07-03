library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#
#    Use http://localhost:1410 as the callback url
myapp <- oauth_app("http://localhost:1410", key="e65f95f25aaa8a05fbe2",secret="76e27229238337d81035c9f320c61d3d758e5922")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
stop_for_status(req)
json1 = content(req)

json2 = jsonlite::fromJSON(toJSON(json1))

#print(json2)

df <- subset(json2,name=="datasharing")
print(df$created_at)