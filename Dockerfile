# Thin BinderHub wrapper around the published ml-platform-cpu image, so
# BinderHub launches it without rebuilding ml_platform from source.
#
# On main this tracks :latest (the HEAD of ml_platform main) and Renovate
# updates the digest whenever :latest moves. Release tags pin a CalVer tag
# instead (see README.md). The digest is always present because BinderHub
# caches builds by commit: a FROM line naming only a moving tag would never
# be rebuilt.
FROM hub.opensciencegrid.org/usatlas/ml-platform-cpu:2026.8.17@sha256:1ef9e63f563712318d56f1002af2b46088840622fb267cbf336c3219a9a080a3
