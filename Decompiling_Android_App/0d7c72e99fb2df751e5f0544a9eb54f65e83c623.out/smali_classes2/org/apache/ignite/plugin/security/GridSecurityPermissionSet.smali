.class public interface abstract Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;
.super Ljava/lang/Object;
.source "GridSecurityPermissionSet.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract cachePermissions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecurityPermission;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract defaultAllowAll()Z
.end method

.method public abstract systemPermissions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecurityPermission;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract taskPermissions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecurityPermission;",
            ">;>;"
        }
    .end annotation
.end method
