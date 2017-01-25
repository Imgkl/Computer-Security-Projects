.class public interface abstract Lorg/apache/ignite/internal/IgniteEx;
.super Ljava/lang/Object;
.source "IgniteEx.java"

# interfaces
.implements Lorg/apache/ignite/Ignite;


# virtual methods
.method public abstract allEventsUserRecordable([I)Z
.end method

.method public varargs abstract cachesx([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract cachex()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;
.end method

.method public abstract compatibleVersions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract context()Lorg/apache/ignite/internal/GridKernalContext;
.end method

.method public abstract eventUserRecordable(I)Z
.end method

.method public abstract hadoop()Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
.end method

.method public abstract igfsx(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isJmxRemoteEnabled()Z
.end method

.method public abstract isRestartEnabled()Z
.end method

.method public abstract latestVersion()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract localNode()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract utilityCache(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation
.end method
