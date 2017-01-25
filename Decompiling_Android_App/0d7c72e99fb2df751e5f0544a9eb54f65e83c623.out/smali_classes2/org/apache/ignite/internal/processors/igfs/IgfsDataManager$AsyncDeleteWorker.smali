.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDeleteWorker"
.end annotation


# instance fields
.field private delReqs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final stopInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 1670
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 1671
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1659
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->stopInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1662
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    .line 1672
    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 1657
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->deleteAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    .prologue
    .line 1657
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->stop()V

    return-void
.end method

.method private deleteAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1688
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1690
    return-object v0
.end method

.method private stop()V
    .locals 3

    .prologue
    .line 1678
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->stopInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1679
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1696
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1699
    .local v19, "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1700
    .local v16, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1703
    .local v15, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->stopInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    if-ne v15, v2, :cond_2

    .line 1704
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    .end local v15    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping asynchronous igfs file delete thread: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1761
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1763
    .restart local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :goto_1
    if-eqz v19, :cond_c

    .line 1764
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onCancelled()Z

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    check-cast v19, Lorg/apache/ignite/lang/IgniteBiTuple;

    .restart local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    goto :goto_1

    .line 1709
    .restart local v15    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v16    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataStreamer()Lorg/apache/ignite/IgniteDataStreamer;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/IgniteDataStreamer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 1712
    .local v17, "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :try_start_2
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v18

    .line 1714
    .local v18, "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    const-wide/16 v6, 0x0

    .local v6, "block":J
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v20

    .local v20, "size":J
    :goto_2
    cmp-long v2, v6, v20

    if-gez v2, :cond_5

    .line 1715
    if-nez v18, :cond_4

    const/4 v4, 0x0

    .line 1717
    .local v4, "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_3
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 1720
    if-eqz v4, :cond_3

    .line 1721
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 1714
    :cond_3
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_2

    .line 1715
    .end local v4    # "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_4
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->affinityKey(JZ)Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteInterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    move-result-object v4

    goto :goto_3

    .line 1733
    :cond_5
    :try_start_3
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1735
    .local v9, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    const-wide/16 v6, 0x0

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v20

    :goto_4
    cmp-long v2, v6, v20

    if-gez v2, :cond_6

    .line 1736
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1735
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_4

    .line 1744
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1751
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1758
    .end local v6    # "block":J
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v15    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v17    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    .end local v18    # "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    .end local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v20    # "size":J
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping asynchronous igfs file delete thread: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1761
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1763
    .restart local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :goto_5
    if-eqz v19, :cond_b

    .line 1764
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onCancelled()Z

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->delReqs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    check-cast v19, Lorg/apache/ignite/lang/IgniteBiTuple;

    .restart local v19    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    goto :goto_5

    .line 1746
    .restart local v6    # "block":J
    .restart local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v15    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v16    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .restart local v17    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    .restart local v18    # "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    .restart local v20    # "size":J
    :catch_0
    move-exception v14

    .line 1747
    .local v14, "e":Lorg/apache/ignite/IgniteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1751
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_1
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1739
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    :catch_1
    move-exception v14

    .line 1740
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1744
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1751
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1746
    :catch_2
    move-exception v14

    .line 1747
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1751
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1743
    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_3
    move-exception v2

    .line 1744
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_d
    .catch Lorg/apache/ignite/IgniteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1751
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    :goto_6
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1746
    :catch_3
    move-exception v14

    .line 1747
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1751
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_6

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_4
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1725
    .end local v6    # "block":J
    .end local v18    # "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    .end local v20    # "size":J
    :catch_4
    move-exception v2

    .line 1733
    :try_start_11
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1735
    .restart local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    const-wide/16 v6, 0x0

    .restart local v6    # "block":J
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v20

    .restart local v20    # "size":J
    :goto_7
    cmp-long v2, v6, v20

    if-gez v2, :cond_8

    .line 1736
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_11
    .catch Lorg/apache/ignite/IgniteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1735
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_7

    .line 1744
    :cond_8
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_12
    .catch Lorg/apache/ignite/IgniteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1751
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 1746
    :catch_5
    move-exception v14

    .line 1747
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 1751
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_5
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1739
    .end local v6    # "block":J
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v20    # "size":J
    :catch_6
    move-exception v14

    .line 1740
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 1744
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_17
    .catch Lorg/apache/ignite/IgniteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1751
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_0

    .line 1746
    :catch_7
    move-exception v14

    .line 1747
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1751
    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1743
    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_7
    move-exception v2

    .line 1744
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_1b
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 1751
    :try_start_1c
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    :goto_8
    throw v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1746
    :catch_8
    move-exception v14

    .line 1747
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 1751
    :try_start_1e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_8

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_8
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1728
    :catch_9
    move-exception v14

    .line 1729
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 1733
    :try_start_20
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1735
    .restart local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    const-wide/16 v6, 0x0

    .restart local v6    # "block":J
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v20

    .restart local v20    # "size":J
    :goto_9
    cmp-long v2, v6, v20

    if-gez v2, :cond_9

    .line 1736
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_20
    .catch Lorg/apache/ignite/IgniteException; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 1735
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_9

    .line 1744
    :cond_9
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_21
    .catch Lorg/apache/ignite/IgniteException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 1751
    :try_start_22
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_0

    .line 1746
    :catch_a
    move-exception v14

    .line 1747
    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 1751
    :try_start_24
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1739
    .end local v6    # "block":J
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v20    # "size":J
    :catch_b
    move-exception v14

    .line 1740
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 1744
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_26
    .catch Lorg/apache/ignite/IgniteException; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 1751
    :try_start_27
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_0

    .line 1746
    :catch_c
    move-exception v14

    .line 1747
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 1751
    :try_start_29
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 1743
    :catchall_b
    move-exception v2

    .line 1744
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_2a
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2a .. :try_end_2a} :catch_d
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 1751
    :try_start_2b
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    :goto_a
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 1746
    :catch_d
    move-exception v14

    .line 1747
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 1751
    :try_start_2d
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_a

    :catchall_c
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 1732
    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_d
    move-exception v2

    .line 1733
    :try_start_2e
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1735
    .restart local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    const-wide/16 v6, 0x0

    .restart local v6    # "block":J
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v20

    .restart local v20    # "size":J
    :goto_b
    cmp-long v3, v6, v20

    if-gez v3, :cond_a

    .line 1736
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_2e
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2e .. :try_end_2e} :catch_f
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    .line 1735
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    goto :goto_b

    .line 1744
    :cond_a
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_2f
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2f .. :try_end_2f} :catch_e
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    .line 1751
    :try_start_30
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .end local v6    # "block":J
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v20    # "size":J
    :goto_c
    throw v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 1746
    .restart local v6    # "block":J
    .restart local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v20    # "size":J
    :catch_e
    move-exception v14

    .line 1747
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    .line 1751
    :try_start_32
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_c

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_e
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 1739
    .end local v6    # "block":J
    .end local v9    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v20    # "size":J
    :catch_f
    move-exception v14

    .line 1740
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove file contents: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    .line 1744
    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_34
    .catch Lorg/apache/ignite/IgniteException; {:try_start_34 .. :try_end_34} :catch_10
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    .line 1751
    :try_start_35
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    goto :goto_c

    .line 1746
    :catch_10
    move-exception v14

    .line 1747
    :try_start_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    .line 1751
    :try_start_37
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_c

    :catchall_f
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 1743
    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_10
    move-exception v2

    .line 1744
    :try_start_38
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->isCancelled()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteDataStreamer;->close(Z)V
    :try_end_38
    .catch Lorg/apache/ignite/IgniteException; {:try_start_38 .. :try_end_38} :catch_11
    .catchall {:try_start_38 .. :try_end_38} :catchall_11

    .line 1751
    :try_start_39
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    :goto_d
    throw v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 1746
    :catch_11
    move-exception v14

    .line 1747
    .restart local v14    # "e":Lorg/apache/ignite/IgniteException;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to stop data streamer while shutting down igfs async delete thread."

    invoke-interface {v3, v5, v14}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11

    .line 1751
    :try_start_3b
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_d

    .end local v14    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_11
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    throw v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 1768
    .end local v15    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v17    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_b
    throw v3

    .line 1769
    :cond_c
    return-void
.end method
