.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCache;
.super Ljava/lang/Object;
.source "GridCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/CacheProjection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract affinity()Lorg/apache/ignite/cache/affinity/Affinity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract affinityNode()Z
.end method

.method public abstract configuration()Lorg/apache/ignite/configuration/CacheConfiguration;
.end method

.method public abstract forceRepartition()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract metrics()Lorg/apache/ignite/cache/CacheMetrics;
.end method

.method public abstract mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
.end method

.method public abstract offHeapAllocatedSize()J
.end method

.method public abstract offHeapEntriesCount()J
.end method

.method public abstract offHeapIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract overflowSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract randomEntry()Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract swapIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract swapKeys()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract swapSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract txSynchronizations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/transactions/TransactionSynchronization;",
            ">;"
        }
    .end annotation
.end method

.method public abstract txSynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .param p1    # Lorg/apache/ignite/transactions/TransactionSynchronization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract txUnsynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .param p1    # Lorg/apache/ignite/transactions/TransactionSynchronization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
