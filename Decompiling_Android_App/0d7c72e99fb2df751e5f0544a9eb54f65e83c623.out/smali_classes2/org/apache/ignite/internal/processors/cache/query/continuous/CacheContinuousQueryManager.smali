.class public Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "CacheContinuousQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;,
        Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;,
        Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryLocalListener;,
        Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CREATED_FLAG:B = 0x1t

.field private static final EXPIRED_FLAG:B = 0x8t

.field private static final REMOVED_FLAG:B = 0x4t

.field private static final UPDATED_FLAG:B = 0x2t


# instance fields
.field private final intLsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final intLsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final jCacheLsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration;",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final seq:Ljava/util/concurrent/atomic/AtomicLong;

.field private topicPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 61
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->jCacheLsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 695
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .param p1, "x1"    # Ljavax/cache/event/CacheEntryUpdatedListener;
    .param p2, "x2"    # Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p12}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;
    .locals 18
    .param p1, "locLsnr"    # Ljavax/cache/event/CacheEntryUpdatedListener;
    .param p2, "rmtFilter"    # Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .param p3, "bufSize"    # I
    .param p4, "timeInterval"    # J
    .param p6, "autoUnsubscribe"    # Z
    .param p7, "internal"    # Z
    .param p8, "notifyExisting"    # Z
    .param p9, "oldValRequired"    # Z
    .param p10, "sync"    # Z
    .param p11, "ignoreExpired"    # Z
    .param p12, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 365
    if-nez p12, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object p12

    .line 368
    :cond_0
    invoke-interface/range {p12 .. p12}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v16

    .line 370
    .local v16, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    new-instance v3, Lorg/apache/ignite/cluster/ClusterTopologyException;

    const-string v4, "Failed to execute continuous query (empty cluster group is provided)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_1
    const/4 v13, 0x0

    .line 376
    .local v13, "skipPrimaryCheck":Z
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 396
    :cond_2
    :goto_0
    if-nez p7, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskNameHash()I

    move-result v12

    .line 399
    .local v12, "taskNameHash":I
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->topicPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v2 .. v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZZZZIZ)V

    .line 412
    .local v2, "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v3

    invoke-interface/range {p12 .. p12}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v9

    move-object v4, v2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    .line 415
    .local v14, "id":Ljava/util/UUID;
    if-eqz p8, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->allEntries()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 418
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v15, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljava/util/Iterator;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/cache/event/CacheEntryUpdatedListener;->onUpdated(Ljava/lang/Iterable;)V

    .line 469
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_3
    return-object v14

    .line 378
    .end local v2    # "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .end local v12    # "taskNameHash":I
    .end local v14    # "id":Ljava/util/UUID;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 379
    new-instance v3, Lorg/apache/ignite/cluster/ClusterTopologyException;

    const-string v4, "Continuous query for LOCAL cache can be executed only locally (provided projection contains remote nodes only)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Continuous query for LOCAL cache will be executed locally (provided projection is ignored)."

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 385
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/cluster/ClusterNode;

    move-object/from16 v0, p12

    invoke-interface {v0, v3, v4}, Lorg/apache/ignite/cluster/ClusterGroup;->forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object p12

    .line 387
    goto/16 :goto_0

    .line 390
    :pswitch_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v13

    goto/16 :goto_0

    .line 396
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelInternalQuery(Ljava/util/UUID;)V
    .locals 4
    .param p1, "routineId"    # Ljava/util/UUID;

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop internal continuous query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->jCacheLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;

    .line 341
    .local v0, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cancel()V

    .line 343
    :cond_0
    return-void
.end method

.method public executeInternalQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZ)Ljava/util/UUID;
    .locals 13
    .param p2, "rmtFilter"    # Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .param p3, "loc"    # Z
    .param p4, "notifyExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<**>;",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;",
            "ZZ)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "locLsnr":Ljavax/cache/event/CacheEntryUpdatedListener;, "Ljavax/cache/event/CacheEntryUpdatedListener<**>;"
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forLocal()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v12

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v8, p4

    invoke-direct/range {v0 .. v12}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public executeJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;Z)V
    .locals 6
    .param p1, "cfg"    # Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    .param p2, "onStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Ljavax/cache/configuration/CacheEntryListenerConfiguration;ZLorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;)V

    .line 319
    .local v1, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->jCacheLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;

    .line 321
    .local v2, "old":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    if-eqz v2, :cond_0

    .line 322
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener is already registered for configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 325
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->execute()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cancelJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V

    .line 330
    throw v0
.end method

.method public executeQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;
    .locals 14
    .param p1, "locLsnr"    # Ljavax/cache/event/CacheEntryUpdatedListener;
    .param p2, "rmtFilter"    # Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .param p3, "bufSize"    # I
    .param p4, "timeInterval"    # J
    .param p6, "autoUnsubscribe"    # Z
    .param p7, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery0(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZZZZZZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public onEntryExpired(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 14
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "oldVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 200
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 201
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 203
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    :cond_2
    return-void

    .line 206
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 208
    .local v11, "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    :goto_0
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v12

    .line 213
    .local v12, "primary":Z
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x61

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v13

    .line 215
    .local v13, "recordIgniteEvt":Z
    const/4 v9, 0x0

    .line 217
    .local v9, "initialized":Z
    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;

    .line 218
    .local v10, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    if-nez v9, :cond_7

    .line 219
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->oldValueRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast p3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 222
    .restart local p3    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_5
    if-eqz p3, :cond_6

    .line 223
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 225
    :cond_6
    const/4 v9, 0x1

    .line 228
    :cond_7
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    sget-object v3, Ljavax/cache/event/EventType;->EXPIRED:Ljavax/cache/event/EventType;

    const/4 v5, 0x0

    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->oldValueRequired()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v6, p3

    :goto_2
    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;-><init>(ILjavax/cache/event/EventType;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 235
    .local v1, "e0":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v7, v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;-><init>(Ljavax/cache/Cache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)V

    .line 238
    .local v7, "evt":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;
    invoke-interface {v10, v7, v12, v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;ZZ)V

    goto :goto_1

    .line 206
    .end local v1    # "e0":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .end local v7    # "evt":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "initialized":Z
    .end local v10    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    .end local v11    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    .end local v12    # "primary":Z
    .end local v13    # "recordIgniteEvt":Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 228
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "initialized":Z
    .restart local v10    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    .restart local v11    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    .restart local v12    # "primary":Z
    .restart local v13    # "recordIgniteEvt":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V
    .locals 17
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "newVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p4, "oldVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "preload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 129
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 130
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 132
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v12

    .line 134
    .local v12, "internal":Z
    if-eqz p5, :cond_3

    if-nez v12, :cond_3

    .line 190
    :cond_2
    return-void

    .line 139
    :cond_3
    if-eqz v12, :cond_b

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 144
    .local v14, "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    :goto_0
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    if-eqz p3, :cond_d

    const/4 v8, 0x1

    .line 148
    .local v8, "hasNewVal":Z
    :goto_1
    if-eqz p4, :cond_e

    const/4 v9, 0x1

    .line 150
    .local v9, "hasOldVal":Z
    :goto_2
    if-nez v8, :cond_4

    if-eqz v9, :cond_2

    .line 153
    :cond_4
    if-nez v8, :cond_f

    sget-object v3, Ljavax/cache/event/EventType;->REMOVED:Ljavax/cache/event/EventType;

    .line 155
    .local v3, "evtType":Ljavax/cache/event/EventType;
    :goto_3
    const/4 v11, 0x0

    .line 157
    .local v11, "initialized":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v15

    .line 158
    .local v15, "primary":Z
    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v4, 0x61

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v16, 0x1

    .line 160
    .local v16, "recordIgniteEvt":Z
    :goto_4
    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;

    .line 161
    .local v13, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    if-eqz p5, :cond_6

    invoke-interface {v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->notifyExisting()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    :cond_6
    if-nez v11, :cond_9

    .line 165
    invoke-interface {v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->oldValueRequired()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast p4, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 168
    .restart local p4    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz p4, :cond_7

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 172
    :cond_7
    if-eqz p3, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 175
    :cond_8
    const/4 v11, 0x1

    .line 178
    :cond_9
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-interface {v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->oldValueRequired()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v6, p4

    :goto_6
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;-><init>(ILjavax/cache/event/EventType;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 185
    .local v1, "e0":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v7, v2, v4, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;-><init>(Ljavax/cache/Cache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)V

    .line 188
    .local v7, "evt":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;
    move/from16 v0, v16

    invoke-interface {v13, v7, v15, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;ZZ)V

    goto/16 :goto_5

    .line 140
    .end local v1    # "e0":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .end local v3    # "evtType":Ljavax/cache/event/EventType;
    .end local v7    # "evt":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;
    .end local v8    # "hasNewVal":Z
    .end local v9    # "hasOldVal":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "initialized":Z
    .end local v13    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    .end local v14    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    .end local v15    # "primary":Z
    .end local v16    # "recordIgniteEvt":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 142
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    .restart local v14    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    :goto_7
    goto/16 :goto_0

    .end local v14    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    .line 147
    .restart local v14    # "lsnrCol":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;>;"
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 148
    .restart local v8    # "hasNewVal":Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 153
    .restart local v9    # "hasOldVal":Z
    :cond_f
    if-nez v9, :cond_10

    sget-object v3, Ljavax/cache/event/EventType;->CREATED:Ljavax/cache/event/EventType;

    goto/16 :goto_3

    :cond_10
    sget-object v3, Ljavax/cache/event/EventType;->UPDATED:Ljavax/cache/event/EventType;

    goto/16 :goto_3

    .line 158
    .restart local v3    # "evtType":Ljavax/cache/event/EventType;
    .restart local v11    # "initialized":Z
    .restart local v15    # "primary":Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 178
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    .restart local v16    # "recordIgniteEvt":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_6
.end method

.method protected onKernalStart0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheEntryListenerConfigurations()Ljava/lang/Iterable;

    move-result-object v1

    .line 93
    .local v1, "cfgs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/configuration/CacheEntryListenerConfiguration;>;"
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/configuration/CacheEntryListenerConfiguration;

    .line 95
    .local v0, "cfg":Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;Z)V

    goto :goto_0

    .line 97
    .end local v0    # "cfg":Ljavax/cache/configuration/CacheEntryListenerConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->onKernalStop0(Z)V

    .line 103
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->jCacheLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;

    .line 105
    .local v2, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;->cancel()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop JCache entry listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQuery;
    :cond_1
    return-void
.end method

.method registerListener(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;Z)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 3
    .param p1, "lsnrId"    # Ljava/util/UUID;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    .param p3, "internal"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    if-eqz p3, :cond_2

    .line 484
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 486
    .local v0, "added":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 499
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    :goto_2
    return-object v1

    .end local v0    # "added":Z
    :cond_1
    move v0, v1

    .line 484
    goto :goto_0

    .line 490
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 492
    .restart local v0    # "added":Z
    :goto_3
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 495
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->onExecution()V

    goto :goto_1

    .end local v0    # "added":Z
    :cond_3
    move v0, v1

    .line 490
    goto :goto_3

    .line 499
    .restart local v0    # "added":Z
    :cond_4
    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->NOT_REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    goto :goto_2
.end method

.method protected start0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTINUOUS_QUERY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->topicPrefix:Ljava/lang/String;

    .line 86
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method unregisterListener(ZLjava/util/UUID;)V
    .locals 2
    .param p1, "internal"    # Z
    .param p2, "id"    # Ljava/util/UUID;

    .prologue
    .line 509
    if-eqz p1, :cond_1

    .line 510
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;

    .local v0, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->intLsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 513
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->onUnregister()V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 517
    .end local v0    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;

    .restart local v0    # "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->lsnrCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 520
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;->onUnregister()V

    goto :goto_0
.end method
