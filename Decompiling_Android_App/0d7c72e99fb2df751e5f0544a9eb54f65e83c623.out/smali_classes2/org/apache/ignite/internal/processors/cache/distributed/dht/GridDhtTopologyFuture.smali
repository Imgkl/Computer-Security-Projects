.class public interface abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
.super Ljava/lang/Object;
.source "GridDhtTopologyFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract topologySnapshot()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method
