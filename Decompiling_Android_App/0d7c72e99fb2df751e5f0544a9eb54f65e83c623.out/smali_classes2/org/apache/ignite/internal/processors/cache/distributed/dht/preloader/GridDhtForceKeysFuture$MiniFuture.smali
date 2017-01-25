.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridDhtForceKeysFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private curTopVer:I

.field private exc:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field private pauseLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 366
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;ILjava/util/Collection;)V
    .locals 2
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "curTopVer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;I",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    .local p3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p5, "exc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 371
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 383
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 395
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 396
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_2
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 400
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->keys:Ljava/util/Collection;

    .line 401
    iput p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->curTopVer:I

    .line 402
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->exc:Ljava/util/Collection;

    .line 403
    return-void
.end method

.method private pause()Z
    .locals 5

    .prologue
    .line 534
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    const/4 v1, 0x1

    .line 542
    :goto_0
    return v1

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method onDiscoveryEvent()V
    .locals 1

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 424
    return-void
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 435
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node left grid while sending or waiting for reply (will retry): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->keys:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Ljava/lang/Iterable;Ljava/util/Collection;)Z

    .line 447
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    .locals 28
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .prologue
    .line 454
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->missedKeys()Ljava/util/Collection;

    move-result-object v22

    .line 456
    .local v22, "missedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/16 v25, 0x0

    .line 458
    .local v25, "remapMissed":Z
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->curTopVer:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topCntr:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v22

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    invoke-static {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Ljava/lang/Iterable;Ljava/util/Collection;)Z

    .line 466
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->keys:Ljava/util/Collection;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->forcedInfos()Ljava/util/Collection;

    move-result-object v7

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->info2Key()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v27

    .line 472
    .local v27, "retryKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->exc:Ljava/util/Collection;

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, v27

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    invoke-static {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Ljava/lang/Iterable;Ljava/util/Collection;)Z

    .line 476
    .end local v27    # "retryKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v24

    .line 478
    .local v24, "rec":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v26

    .line 480
    .local v26, "replicate":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->forcedInfos()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 481
    .local v20, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v23

    .line 483
    .local v23, "p":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v6, 0x0

    move/from16 v0, v23

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v21

    .line 485
    .local v21, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v4, v5, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 489
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl()J

    move-result-wide v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime()J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    if-eqz v26, :cond_6

    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_2
    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    if-eqz v24, :cond_4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v4

    if-nez v4, :cond_4

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v5

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v8, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v9, 0x0

    const/16 v10, 0x54

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v4 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    goto/16 :goto_1

    .line 462
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v21    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v23    # "p":I
    .end local v24    # "rec":Z
    .end local v26    # "replicate":Z
    :cond_5
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 489
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v21    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v23    # "p":I
    .restart local v24    # "rec":Z
    .restart local v26    # "replicate":Z
    :cond_6
    :try_start_1
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 525
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v21    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v23    # "p":I
    :goto_3
    return-void

    .line 509
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v21    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v23    # "p":I
    :catch_1
    move-exception v19

    .line 510
    .local v19, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_3
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to rebalance removed entry (will ignore) [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    goto/16 :goto_1

    .end local v19    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catchall_0
    move-exception v4

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    throw v4

    .line 520
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v21    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v23    # "p":I
    :cond_8
    if-eqz v25, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->pause()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v22

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    invoke-static {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Ljava/lang/Iterable;Ljava/util/Collection;)Z

    .line 524
    :cond_9
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
