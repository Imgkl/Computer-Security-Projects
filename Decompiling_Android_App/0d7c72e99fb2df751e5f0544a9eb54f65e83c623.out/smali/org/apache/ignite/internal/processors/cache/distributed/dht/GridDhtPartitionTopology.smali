.class public interface abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
.super Ljava/lang/Object;
.source "GridDhtPartitionTopology.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# virtual methods
.method public abstract afterExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract beforeExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract currentLocalPartitions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract localPartition(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
.end method

.method public abstract localPartitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract moving(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAdded(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
.end method

.method public abstract onEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V
.end method

.method public abstract onRemoved(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V
.end method

.method public abstract own(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Z
.end method

.method public abstract owners(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract partitionMap(Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
.end method

.method public abstract partitions(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract printMemoryStats(I)V
.end method

.method public abstract readLock()V
.end method

.method public abstract readUnlock()V
.end method

.method public abstract stopping()Z
.end method

.method public abstract topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
.end method

.method public abstract update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .param p1    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .param p1    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract updateSequence()J
.end method

.method public abstract updateTopologyVersion(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;JZ)V
.end method
