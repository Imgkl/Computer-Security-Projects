.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
.super Ljava/lang/Object;
.source "GridCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;Z)V"
        }
    .end annotation
.end method

.method public abstract assign(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract forcePreload()V
.end method

.method public abstract onExchangeFutureAdded()V
.end method

.method public abstract onInitialExchangeComplete(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onKernalStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract onKernalStop()V
.end method

.method public abstract preloadPredicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract unwindUndeploys()V
.end method

.method public abstract updateLastExchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
.end method
