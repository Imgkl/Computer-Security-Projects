.class public Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;
.super Ljava/lang/Object;
.source "TransactionProxyImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private async:Z

.field private asyncRes:Lorg/apache/ignite/lang/IgniteFuture;

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    .local p2, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 71
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 72
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    .line 73
    return-void
.end method

.method private enter()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onEnter()V

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 98
    throw v0

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private leave()V
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method private save(Ljava/lang/Object;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 298
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->asyncRes:Lorg/apache/ignite/lang/IgniteFuture;

    .line 299
    return-void
.end method

.method private saveFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;)V

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 311
    .local v0, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/transactions/Transaction;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->asyncRes:Lorg/apache/ignite/lang/IgniteFuture;

    .line 312
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->enter()V

    .line 264
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->endTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    .line 272
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    throw v1
.end method

.method public commit()V
    .locals 4

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->enter()V

    .line 244
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->commitTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 246
    .local v0, "commitFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v2, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->saveFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    .line 257
    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v0    # "commitFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    throw v2
.end method

.method public concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    return-object v0
.end method

.method public future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->asyncRes:Lorg/apache/ignite/lang/IgniteFuture;

    return-object v0
.end method

.method public implicit()Z
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicit()Z

    move-result v0

    return v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    return v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isInvalidate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isInvalidate()Z

    move-result v0

    return v0
.end method

.method public isRollbackOnly()Z
    .locals 1

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->enter()V

    .line 229
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isRollbackOnly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isRollbackOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 235
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    throw v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 322
    return-void
.end method

.method public rollback()V
    .locals 4

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->enter()V

    .line 279
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->rollbackTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 281
    .local v1, "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v2, :cond_0

    .line 282
    new-instance v2, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->asyncRes:Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    .line 292
    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    .end local v1    # "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    throw v2
.end method

.method public setRollbackOnly()Z
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->enter()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 220
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->leave()V

    throw v0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public state()Lorg/apache/ignite/transactions/TransactionState;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->async:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->save(Ljava/lang/Object;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout(J)J
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method public withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 4

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public xid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method
