.class public Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;
.super Ljava/lang/Object;
.source "GridCachePreloaderAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

.field protected final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final finFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

.field protected final log:Lorg/apache/ignite/IgniteLogger;

.field protected preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 59
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 61
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->finFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 62
    return-void
.end method


# virtual methods
.method public addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V
    .locals 0
    .param p2, "forcePreload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    .local p1, "assignments":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    return-void
.end method

.method public assign(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;
    .locals 1
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public forcePreload()V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public onExchangeFutureAdded()V
    .locals 0

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public onInitialExchangeComplete(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public onKernalStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public onKernalStop()V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public preloadPredicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    .local p1, "preloadPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 92
    return-void
.end method

.method public request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
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

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    return-object v0
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->finFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method

.method public syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->finFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public unwindUndeploys()V
    .locals 2

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->unwind(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 112
    return-void
.end method

.method public updateLastExchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 0
    .param p1, "lastFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter<TK;TV;>;"
    return-void
.end method
