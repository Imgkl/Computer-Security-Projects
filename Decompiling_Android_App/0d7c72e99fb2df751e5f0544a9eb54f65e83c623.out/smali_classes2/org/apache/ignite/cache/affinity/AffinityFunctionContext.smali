.class public interface abstract Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;
.super Ljava/lang/Object;
.source "AffinityFunctionContext.java"


# virtual methods
.method public abstract backups()I
.end method

.method public abstract currentTopologySnapshot()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract currentTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract previousAssignment(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
