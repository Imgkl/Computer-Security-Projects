.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridCachePartitionExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile busy:Z

.field private final futQ:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 817
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 3

    .prologue
    .line 828
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ExchangeWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .line 829
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "partition-exchanger"

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 819
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 830
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    .prologue
    .line 817
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ExchangeWorker;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method


# virtual methods
.method addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 3
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ExchangeWorker;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 838
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->dummy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z

    if-nez v0, :cond_2

    .line 839
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 841
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added exchange future to exchange worker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 843
    :cond_3
    return-void
.end method

.method protected body()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ExchangeWorker;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v28

    .line 849
    .local v28, "timeout":J
    const/16 v27, 0x0

    .line 851
    .local v27, "startEvtFired":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 852
    const/16 v23, 0x0

    .line 855
    .local v23, "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    const/16 v26, 0x1

    .line 857
    .local v26, "preloadFinished":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 858
    .local v13, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v5

    and-int v26, v26, v5

    .line 860
    if-nez v26, :cond_1

    .line 866
    .end local v13    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v26, :cond_3

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-wide/from16 v0, v28

    invoke-static {v5, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1600(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;J)V

    .line 869
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v28

    .line 873
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 874
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before waiting for exchange futures [futs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->values()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v9, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->unfinishedFutures()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", worker="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 878
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    invoke-static {v5, v6, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-object/from16 v23, v0

    .line 880
    if-eqz v23, :cond_0

    .line 883
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z

    .line 885
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 887
    .local v12, "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->dummyReassign()Z

    move-result v20

    .line 888
    .local v20, "dummyReassign":Z
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->forcePreload()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    .line 891
    .local v24, "forcePreload":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 960
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 981
    .end local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .end local v20    # "dummyReassign":Z
    .end local v23    # "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .end local v24    # "forcePreload":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "preloadFinished":Z
    :cond_5
    return-void

    .line 894
    .restart local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .restart local v20    # "dummyReassign":Z
    .restart local v23    # "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .restart local v24    # "forcePreload":Z
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "preloadFinished":Z
    :cond_6
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->dummy()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->forcePreload()Z

    move-result v5

    if-nez v5, :cond_f

    .line 895
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1802(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .line 897
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->init()V

    .line 899
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->get()Ljava/lang/Object;

    .line 901
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 902
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After waiting for exchange future [exchFut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", worker="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 905
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->nodeId()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 906
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1900(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 908
    :cond_8
    const/16 v16, 0x0

    .line 913
    .local v16, "changed":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_9
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 914
    .restart local v13    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v5

    if-nez v5, :cond_9

    .line 917
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->afterExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z

    move-result v5

    or-int v16, v16, v5

    .line 920
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 921
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v27, :cond_9

    .line 922
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v17

    .line 924
    .local v17, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    const/4 v6, -0x1

    const/16 v7, 0x50

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/events/DiscoveryEvent;->timestamp()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addPreloadEvent(IILorg/apache/ignite/cluster/ClusterNode;IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 960
    .end local v13    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v16    # "changed":Z
    .end local v17    # "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z

    throw v5
    :try_end_4
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 973
    .end local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .end local v20    # "dummyReassign":Z
    .end local v24    # "forcePreload":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v21

    .line 974
    .local v21, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    throw v21

    .line 930
    .end local v21    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .restart local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .restart local v16    # "changed":Z
    .restart local v20    # "dummyReassign":Z
    .restart local v24    # "forcePreload":Z
    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_b
    const/16 v27, 0x1

    .line 932
    if-eqz v16, :cond_c

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 933
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->refreshPartitions()V

    .line 946
    .end local v16    # "changed":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 947
    .restart local v13    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v18

    .line 949
    .local v18, "delay":J
    const/4 v4, 0x0

    .line 952
    .local v4, "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-eqz v5, :cond_d

    if-eqz v24, :cond_e

    .line 953
    :cond_d
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->assign(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;

    move-result-object v4

    .line 955
    :cond_e
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 936
    .end local v4    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    .end local v13    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v18    # "delay":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 937
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Got dummy exchange (will reassign)"

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 939
    :cond_10
    if-nez v20, :cond_c

    .line 940
    const-wide/16 v28, 0x0

    .line 960
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z
    :try_end_6
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 976
    .end local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .end local v20    # "dummyReassign":Z
    .end local v24    # "forcePreload":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v21

    .line 977
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to wait for completion of partition map exchange (preloading will not start): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 960
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v12    # "assignsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    .restart local v20    # "dummyReassign":Z
    .restart local v24    # "forcePreload":Z
    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_11
    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z

    .line 963
    if-eqz v12, :cond_0

    .line 964
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 965
    .local v22, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 967
    .local v15, "cacheId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v14

    .line 969
    .local v14, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;

    move/from16 v0, v24

    invoke-interface {v6, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method

.method topologyChanged()Z
    .locals 1

    .prologue
    .line 987
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ExchangeWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->futQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->busy:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
