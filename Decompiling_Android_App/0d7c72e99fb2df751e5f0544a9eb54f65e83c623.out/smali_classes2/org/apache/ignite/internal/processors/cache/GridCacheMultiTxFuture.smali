.class public final Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheMultiTxFuture.java"


# annotations
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
.field private remainingTxs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->$assertionsDisabled:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 51
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->checkRemaining()Z

    move-result v0

    return v0
.end method

.method private checkRemaining()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture<TK;TV;>;"
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing multi-tx future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->onDone(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    .line 72
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->onDone(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 77
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 78
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->done()Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;

    invoke-direct {v3, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->checkRemaining()Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    const-string v2, "remaining"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->tx2xidVersion()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
