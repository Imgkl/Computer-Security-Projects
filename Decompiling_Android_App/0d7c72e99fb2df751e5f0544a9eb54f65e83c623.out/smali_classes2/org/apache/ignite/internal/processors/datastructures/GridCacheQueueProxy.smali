.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
.super Ljava/lang/Object;
.source "GridCacheQueueProxy.java"

# interfaces
.implements Lorg/apache/ignite/IgniteQueue;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/IgniteQueue",
        "<TT;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J

.field private static final stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->stash:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;)V
    .locals 1
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p2, "delegate":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 69
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    .line 71
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 130
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 143
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 143
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public bounded()Z
    .locals 1

    .prologue
    .line 702
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 697
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$7;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$7;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 215
    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->clear()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public clear(I)V
    .locals 3
    .param p1, "batchSize"    # I

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 444
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$18;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$18;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;I)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 462
    return-void

    .line 454
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->clear(I)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 667
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 670
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$28;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$28;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 688
    return-void

    .line 680
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->close()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 707
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->collocated()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$5;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 166
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 160
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 166
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 188
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 182
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->containsAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 188
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 491
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$20;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$20;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 504
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 498
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->drainTo(Ljava/util/Collection;)I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 504
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 513
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$21;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;I)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 526
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 520
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->drainTo(Ljava/util/Collection;I)I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 526
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public element()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 557
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$23;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$23;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 570
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 564
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->element()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 570
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 722
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    if-ne p0, p1, :cond_0

    .line 723
    const/4 v1, 0x1

    .line 730
    :goto_0
    return v1

    .line 725
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 726
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 728
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .line 730
    .local v0, "that":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 264
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 280
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 274
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->isEmpty()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 280
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 289
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$11;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$11;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 296
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 302
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 108
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 121
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 115
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 121
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 604
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$25;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$25;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 617
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 611
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 617
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 422
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$17;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$17;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 435
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 429
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->peek()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 435
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 400
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$16;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$16;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 413
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 407
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 413
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 648
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$27;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;JLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 661
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 655
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 661
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 579
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$24;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$24;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 597
    return-void

    .line 589
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 743
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 744
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 745
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 757
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 763
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 759
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/InvalidObjectException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 466
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 469
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$19;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$19;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 482
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 476
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->remainingCapacity()I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 482
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 535
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$22;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 548
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 542
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->remove()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 548
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$8;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$8;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 236
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 230
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 236
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 245
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$9;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$9;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 258
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 252
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 258
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 712
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->removed()Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 356
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$14;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$14;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 369
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 363
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 369
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 378
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$15;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$15;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 391
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return v1

    .line 385
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->size()I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 391
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 626
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$26;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$26;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 639
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 633
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->take()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 639
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 308
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 311
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$12;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$12;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 318
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 324
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">([TT1;)[TT1;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 334
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$13;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$13;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_0
    return-object v1

    .line 341
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 347
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 735
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 736
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 737
    return-void
.end method
