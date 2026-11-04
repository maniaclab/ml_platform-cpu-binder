# Thin BinderHub wrapper around the published ml-platform-cpu image, so
# BinderHub launches it without rebuilding ml_platform from source.
#
# On main this tracks :latest (the HEAD of ml_platform main) and Renovate
# updates the digest whenever :latest moves. Release tags pin a CalVer tag
# instead (see README.md). The digest is always present because BinderHub
# caches builds by commit: a FROM line naming only a moving tag would never
# be rebuilt.
FROM hub.opensciencegrid.org/usatlas/ml-platform-cpu:2026.11.4@sha256:940780a8de44b11a6cb48c9663b3a3fc73d4ef580b982c4138fe87582d6288ef
