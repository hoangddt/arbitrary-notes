ref:
- http://stackoverflow.com/questions/29013457/how-to-store-releases-binaries-in-gitlab
- https://docs.gitlab.com/ee/api/projects.html#upload-a-file
- https://docs.gitlab.com/ee/api/tags.html#create-a-new-release

# git lab api for upload release

$ http https://gitlab.com/api/v3/projects/1737016/repository/tags  PRIVATE-TOKEN:xkw2SxTC7J6TzRs9Ub_b

# create a tag
/projects/:id/repository/tags

$ http POST https://gitlab.com/api/v3/projects/1737016/repository/tags  PRIVATE-TOKEN:xkw2SxTC7J6TzRs9Ub_b id=1737016 tag_name=test_release ref=21f59a6baecb48095423ddf6b721d4b5738c4804 message="not important tag" release_description="test for ci"

# Upload file
POST /projects/:id/uploads
$ http -f POST https://gitlab.com/api/v3/projects/1737016/uploads PRIVATE-TOKEN:xkw2SxTC7J6TzRs9Ub_b id=1737016 file@/Users/admin/working/credentialing/src/Credentialing/android/app/build/outputs/apk/app-debug.apk

response:
```
{
    "alt": "app-debug.apk",
    "markdown": "[app-debug.apk](/uploads/7906b909fe1239679663d8479fed39ef/app-debug.apk)",
    "url": "/uploads/7906b909fe1239679663d8479fed39ef/app-debug.apk"
}
```
# create new release
$ /projects/:id/repository/tags/:tag_name/release

$ http POST https://gitlab.com/api/v3/projects/1737016/repository/tags/test_release/release PRIVATE-TOKEN:xkw2SxTC7J6TzRs9Ub_b id=1737016 tag_name=test_release description="Latest build: [app-debug.apk](/uploads/7906b909fe1239679663d8479fed39ef/app-debug.apk)"

$ http PUT https://gitlab.com/api/v3/projects/1737016/repository/tags/test_release/release PRIVATE-TOKEN:xkw2SxTC7J6TzRs9Ub_b id=1737016 tag_name=test_release description="Latest build: [app-debug.apk](/uploads/7906b909fe1239679663d8479fed39ef/app-debug.apk)"