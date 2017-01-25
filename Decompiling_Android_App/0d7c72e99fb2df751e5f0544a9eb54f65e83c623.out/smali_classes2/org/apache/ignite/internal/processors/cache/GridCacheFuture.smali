.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
.super Ljava/lang/Object;
.source "GridCacheFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract futureId()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract markNotTrackable()V
.end method

.method public abstract nodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNodeLeft(Ljava/util/UUID;)Z
.end method

.method public abstract trackable()Z
.end method

.method public abstract version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method
