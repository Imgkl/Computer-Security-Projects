.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JCacheQuery"
.end annotation


# instance fields
.field private final cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

.field private final onStart:Z

.field private volatile routineId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/configuration/CacheEntryListenerConfiguration;Z)V
    .locals 0
    .param p2, "cfg"    # Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    .param p3, "onStart"    # Z

    .prologue
    .line 541
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    .line 543
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->onStart:Z

    .line 544
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/configuration/CacheEntryListenerConfiguration;ZLorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .param p2, "x1"    # Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/configuration/CacheEntryListenerConfiguration;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->routineId:Ljava/util/UUID;

    .line 605
    .local v0, "routineId0":Ljava/util/UUID;
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$800(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 608
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$900(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->removeCacheEntryListenerConfiguration(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)Ljavax/cache/configuration/MutableConfiguration;

    .line 609
    return-void
.end method

.method execute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->onStart:Z

    if-nez v2, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$500(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-virtual {v2, v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->addCacheEntryListenerConfiguration(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)Ljavax/cache/configuration/MutableConfiguration;

    .line 554
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-interface {v2}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->getCacheEntryListenerFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    invoke-interface {v2}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/cache/event/CacheEntryListener;

    .line 556
    .local v16, "locLsnrImpl":Ljavax/cache/event/CacheEntryListener;
    if-nez v16, :cond_1

    .line 557
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Local CacheEntryListener is mandatory and can\'t be null."

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_1
    const/16 v17, 0x0

    .line 561
    .local v17, "types":B
    move-object/from16 v0, v16

    instance-of v2, v0, Ljavax/cache/event/CacheEntryCreatedListener;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    or-int v2, v2, v17

    int-to-byte v0, v2

    move/from16 v17, v0

    .line 562
    move-object/from16 v0, v16

    instance-of v2, v0, Ljavax/cache/event/CacheEntryUpdatedListener;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    or-int v2, v2, v17

    int-to-byte v0, v2

    move/from16 v17, v0

    .line 563
    move-object/from16 v0, v16

    instance-of v2, v0, Ljavax/cache/event/CacheEntryRemovedListener;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    :goto_2
    or-int v2, v2, v17

    int-to-byte v0, v2

    move/from16 v17, v0

    .line 564
    move-object/from16 v0, v16

    instance-of v2, v0, Ljavax/cache/event/CacheEntryExpiredListener;

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    :goto_3
    or-int v2, v2, v17

    int-to-byte v0, v2

    move/from16 v17, v0

    .line 566
    if-nez v17, :cond_6

    .line 567
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Listener must implement one of CacheEntryListener sub-interfaces."

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 562
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 563
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 564
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 569
    :cond_6
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$600(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;-><init>(Ljavax/cache/event/CacheEntryListener;Lorg/apache/ignite/IgniteLogger;)V

    .line 573
    .local v3, "locLsnr":Ljavax/cache/event/CacheEntryUpdatedListener;
    const/4 v15, 0x0

    .line 575
    .local v15, "fltr":Ljavax/cache/event/CacheEntryEventFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-interface {v2}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->getCacheEntryEventFilterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-interface {v2}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->getCacheEntryEventFilterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    invoke-interface {v2}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "fltr":Ljavax/cache/event/CacheEntryEventFilter;
    check-cast v15, Ljavax/cache/event/CacheEntryEventFilter;

    .line 578
    .restart local v15    # "fltr":Ljavax/cache/event/CacheEntryEventFilter;
    instance-of v2, v15, Ljava/io/Serializable;

    if-nez v2, :cond_7

    .line 579
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache entry event filter must implement java.io.Serializable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_7
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;

    move/from16 v0, v17

    invoke-direct {v4, v15, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;-><init>(Ljavax/cache/event/CacheEntryEventFilter;B)V

    .line 584
    .local v4, "rmtFilter":Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-interface {v11}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->isOldValueRequired()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cfg:Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    invoke-interface {v12}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->isSynchronous()Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;
    invoke-static/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$700(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->routineId:Ljava/util/UUID;

    .line 596
    return-void
.end method
