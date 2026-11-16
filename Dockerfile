# Thin BinderHub wrapper around the published ml-platform-cpu image, so
# BinderHub launches it without rebuilding ml_platform from source.
#
# On main this tracks :latest (the HEAD of ml_platform main) and Renovate
# updates the digest whenever :latest moves. Release tags pin a CalVer tag
# instead (see README.md). The digest is always present because BinderHub
# caches builds by commit: a FROM line naming only a moving tag would never
# be rebuilt.
FROM hub.opensciencegrid.org/usatlas/ml-platform-cpu:latest@sha256:956e2f997244402ecf7b4083ea6e95453ba2b4c02c41f49974693b0308501e52
