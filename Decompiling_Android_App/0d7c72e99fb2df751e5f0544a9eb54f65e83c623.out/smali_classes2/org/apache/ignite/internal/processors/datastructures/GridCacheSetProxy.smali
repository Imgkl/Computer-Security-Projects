.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;
.super Ljava/lang/Object;
.source "GridCacheSetProxy.java"

# interfaces
.implements Lorg/apache/ignite/IgniteSet;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/IgniteSet",
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
.field private busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->stash:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)V
    .locals 1
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p2, "delegate":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 73
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    .line 75
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    return-object v0
.end method

.method private enterBusy()V
    .locals 3

    .prologue
    .line 513
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set has been removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    return-void
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 522
    return-void
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
    .line 236
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 239
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$7;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$7;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 255
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 249
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 255
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 259
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

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
    .line 323
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 326
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$10;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$10;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 342
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 336
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 342
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 346
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 346
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public blockOnRemove()V
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->removed(Z)V

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 87
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 413
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$13;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$13;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    .line 438
    return-void

    .line 426
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->clear()V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 436
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 471
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 474
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$15;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$15;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 492
    return-void

    .line 484
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->close()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 501
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 152
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 168
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 162
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 168
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 172
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

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
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 297
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 313
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 307
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->containsAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 313
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 317
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$3;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 139
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 133
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->isEmpty()Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 139
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

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
    .line 442
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 445
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 448
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 465
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return-object v1

    .line 455
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 461
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 465
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 461
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 465
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 532
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 534
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 535
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 548
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

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 554
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 550
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 551
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

    .line 554
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 268
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$8;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$8;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 284
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 278
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 284
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 288
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

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
    .line 381
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 384
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$12;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$12;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 400
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 394
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->removeAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 400
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 400
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 404
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 506
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->removed()Z

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
    .line 352
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 355
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$11;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$11;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 371
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 365
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 371
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 375
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 110
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return v1

    .line 104
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->size()I
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 110
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$5;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return-object v1

    .line 191
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->toArray()[Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 197
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 201
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT1;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->enterBusy()V

    .line 210
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    :goto_0
    return-object v1

    .line 220
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 226
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 230
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->leaveBusy()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->toString()Ljava/lang/String;

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
    .line 526
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 528
    return-void
.end method
