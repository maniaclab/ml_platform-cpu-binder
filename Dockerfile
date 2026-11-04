# Thin BinderHub wrapper around the published ml-platform-cpu image, so
# BinderHub launches it without rebuilding ml_platform from source.
#
# On main this tracks :latest (the HEAD of ml_platform main) and Renovate
# updates the digest whenever :latest moves. Release tags pin a CalVer tag
# instead (see README.md). The digest is always present because BinderHub
# caches builds by commit: a FROM line naming only a moving tag would never
# be rebuilt.
FROM hub.opensciencegrid.org/usatlas/ml-platform-cpu:latest@sha256:3a0fbe4a0d00e6c645f881d0f799076f27260d439b817924cce2303fd09ac665
