.class public final Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridLocalLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cache:Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private err:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private timeout:J

.field private timeoutObj:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture",
            "<TK;TV;>.",
            "LockTimeoutObject;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "timeout"    # J
    .param p7, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache",
            "<TK;TV;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p4, "cache":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->trackable:Z

    .line 105
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 109
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cache:Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    .line 110
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeout:J

    .line 111
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 112
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    .line 114
    if-nez p3, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->threadId:J

    .line 116
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 118
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    .line 122
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_2

    .line 123
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 125
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_3

    .line 126
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    .line 128
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 130
    :cond_3
    return-void

    .line 114
    :cond_4
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->threadId()J

    move-result-wide v0

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeout:J

    return-wide v0
.end method

.method static synthetic access$100()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onComplete(Z)V

    return-void
.end method

.method private checkError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 404
    :cond_0
    return-void
.end method

.method private filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    const/4 v1, 0x0

    .line 277
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter didn\'t pass for entry (will fail lock): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onFailed()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return v1

    .line 286
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private implicitSingle()Z
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->implicitSingle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inTx()Z
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 2
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->threadId:J

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onComplete(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    if-nez p1, :cond_0

    .line 383
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->undoLocks()V

    .line 385
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completing future: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cache:Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->onFutureDone(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)V

    .line 391
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 394
    :cond_2
    return-void
.end method

.method private undoLocks()V
    .locals 6

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    .line 245
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got removed entry while undoing locks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 10
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-wide v1, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->threadId:J

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeout:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->inTx()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->inTx()Z

    move-result v7

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->implicitSingle()Z

    move-result v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    .line 220
    .local v9, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    if-nez v9, :cond_3

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 223
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire lock with negative timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onFailed()V

    .line 228
    const/4 v9, 0x0

    .line 236
    .end local v9    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    :goto_1
    return-object v9

    .line 211
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 231
    .restart local v9    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    if-eqz v9, :cond_1

    .line 233
    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    goto :goto_1
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->undoLocks()V

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onComplete(Z)V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method checkLocks()V
    .locals 6

    .prologue
    .line 299
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 302
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 305
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 327
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 312
    .restart local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 313
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got removed entry in onOwnerChanged method (will retry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 317
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cache:Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 300
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_3
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local lock acquired for entries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 325
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onComplete(Z)V

    goto :goto_2
.end method

.method entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    return-object v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method lockVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->trackable:Z

    .line 160
    return-void
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onFailed()V

    .line 269
    :cond_0
    return-void
.end method

.method onFailed()V
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->undoLocks()V

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onComplete(Z)V

    .line 261
    return-void
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 7
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    const/4 v4, 0x1

    .line 331
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_4

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 334
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 337
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 360
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 344
    .restart local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 345
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry in onOwnerChanged method (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->cache:Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    invoke-interface {v5, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 332
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local lock acquired for entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->entries:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 357
    :cond_3
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onComplete(Z)V

    .line 360
    .end local v1    # "i":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
