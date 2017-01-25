.class public Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.source "GridLocalAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J


# instance fields
.field private preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    .line 54
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllInternal(Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/lang/Iterable;
    .param p4, "x4"    # [Ljava/lang/Object;
    .param p5, "x5"    # Ljavax/cache/expiry/ExpiryPolicy;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p9, "x9"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct/range {p0 .. p9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1559
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1561
    .local v1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v0

    .line 1563
    .local v0, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    if-nez v0, :cond_0

    .line 1564
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v0

    .line 1566
    :cond_0
    return-object v0

    .line 1561
    .end local v0    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllInternal(Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;
    .locals 35
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "swapOrOffheap"    # Z
    .param p3, "storeEnabled"    # Z
    .param p4, "clone"    # Z
    .param p5, "taskName"    # Ljava/lang/String;
    .param p6, "deserializePortable"    # Z
    .param p7, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZZ",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 572
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 657
    :goto_0
    return-object v3

    .line 575
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v32

    .line 577
    .local v32, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object v11

    .line 579
    .local v11, "subjId":Ljava/util/UUID;
    new-instance v34, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 581
    .local v34, "vals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v3, :cond_1

    .line 582
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 584
    :cond_1
    if-eqz v32, :cond_3

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v14

    .line 586
    .local v14, "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    const/16 v33, 0x1

    .line 588
    .local v33, "success":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .line 589
    .local v30, "key":Ljava/lang/Object;, "TK;"
    if-nez v30, :cond_4

    .line 590
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null key."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    .end local v14    # "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v30    # "key":Ljava/lang/Object;, "TK;"
    .end local v33    # "success":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 592
    .restart local v14    # "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .restart local v28    # "i$":Ljava/util/Iterator;
    .restart local v30    # "key":Ljava/lang/Object;, "TK;"
    .restart local v33    # "success":Z
    :cond_4
    const/4 v2, 0x0

    .line 594
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v26

    .line 598
    .local v26, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_5
    if-eqz p2, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 600
    :goto_3
    if-eqz v2, :cond_9

    .line 601
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    if-nez p7, :cond_7

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v4, p2

    move-object/from16 v13, p5

    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 614
    .local v6, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v6, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, v34

    move-object/from16 v5, v26

    move/from16 v7, p7

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_5
    if-eqz v2, :cond_2

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_2

    .line 598
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    goto :goto_3

    .line 601
    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 617
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_8
    const/16 v33, 0x0

    goto :goto_5

    .line 620
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_9
    if-nez p3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez p7, :cond_a

    .line 621
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :cond_a
    const/16 v33, 0x0

    goto :goto_5

    .line 628
    :catch_0
    move-exception v3

    .line 636
    if-eqz v2, :cond_b

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 640
    :cond_b
    if-nez v33, :cond_5

    if-eqz p3, :cond_5

    goto/16 :goto_2

    .line 631
    :catch_1
    move-exception v29

    .line 636
    .local v29, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    if-eqz v2, :cond_2

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_2

    .line 636
    .end local v29    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_c

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_c
    throw v3

    .line 645
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v26    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v30    # "key":Ljava/lang/Object;, "TK;"
    :cond_d
    if-nez v33, :cond_e

    if-nez p3, :cond_11

    .line 646
    :cond_e
    if-nez p4, :cond_f

    move-object/from16 v3, v34

    .line 647
    goto/16 :goto_0

    .line 649
    :cond_f
    new-instance v31, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct/range {v31 .. v31}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    .line 651
    .local v31, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 652
    .local v27, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .end local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_10
    move-object/from16 v3, v31

    .line 654
    goto/16 :goto_0

    .line 657
    .end local v31    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_11
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v20, v11

    move-object/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v24, v14

    move/from16 v25, p7

    invoke-virtual/range {v15 .. v25}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllAsync(Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZLjava/util/UUID;Ljava/lang/String;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto/16 :goto_0
.end method

.method private lockEntries(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1467
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1470
    .local v5, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1471
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_1

    .line 1472
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Null key."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1474
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1476
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1479
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1480
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1482
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->monitorEnter(Ljava/lang/Object;)V

    .line 1484
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1486
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-gt v3, v1, :cond_3

    .line 1487
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    .line 1486
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1490
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1497
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v3    # "j":I
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1498
    return-object v5

    .line 1479
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .locals 2

    .prologue
    .line 1521
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    const-string v1, "Failed to update keys (retry update if possible)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "retval"    # Z
    .param p3, "rawRetval"    # Z
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v7

    .line 868
    .local v7, "writeThrough":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v9

    .line 870
    .local v9, "statsEnabled":Z
    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 872
    .local v10, "start":J
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v3

    .line 874
    .local v3, "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->asyncOp(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v8

    .line 888
    .local v8, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v9, :cond_0

    .line 889
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v8, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 891
    :cond_0
    return-object v8

    .line 870
    .end local v3    # "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v8    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    .end local v10    # "start":J
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method private unlockEntries(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1508
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "locked":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1509
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    goto :goto_0

    .line 1511
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 1513
    .local v2, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1514
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_1

    .line 1515
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    return-void
.end method

.method private updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "retval"    # Z
    .param p5, "rawRetval"    # Z
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor;",
            ">;[",
            "Ljava/lang/Object;",
            "ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor;>;"
    if-eqz p2, :cond_0

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 827
    .local v2, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 830
    .local v3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 832
    .local v4, "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v10

    .line 834
    .local v10, "writeThrough":Z
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v6

    .line 836
    .local v6, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;

    move-object v1, p0

    move-object v5, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->asyncOp(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    .line 825
    .end local v2    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .end local v4    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v6    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v10    # "writeThrough":Z
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_0

    .line 827
    .restart local v2    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 830
    .restart local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;
    .locals 39
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p3    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "retval"    # Z
    .param p7, "rawRetval"    # Z
    .param p8, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p9, "storeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p3, "vals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v2, :cond_0

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 922
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v3, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 927
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v11

    .line 929
    .local v11, "taskName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 931
    .local v8, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v10

    .line 933
    .local v10, "subjId":Ljava/util/UUID;
    if-eqz p9, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p8

    .line 934
    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateWithBatch(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v35

    .line 1040
    :cond_1
    :goto_1
    return-object v35

    .line 925
    .end local v8    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v10    # "subjId":Ljava/util/UUID;
    .end local v11    # "taskName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v3, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    goto :goto_0

    .line 945
    .restart local v8    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v10    # "subjId":Ljava/util/UUID;
    .restart local v11    # "taskName":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 947
    .local v38, "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    const/16 v33, 0x0

    .line 949
    .local v33, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    const/16 v29, 0x0

    .line 951
    .local v29, "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v23, 0x1

    .line 953
    .local v23, "intercept":Z
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 954
    .local v32, "key":Ljava/lang/Object;, "TK;"
    if-nez v32, :cond_7

    .line 955
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null key."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 945
    .end local v23    # "intercept":Z
    .end local v29    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Object;, "TK;"
    .end local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .end local v38    # "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    const/16 v38, 0x0

    goto :goto_2

    .line 951
    .restart local v29    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v38    # "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    const/16 v23, 0x0

    goto :goto_3

    .line 957
    .restart local v23    # "intercept":Z
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v32    # "key":Ljava/lang/Object;, "TK;"
    :cond_7
    if-eqz v38, :cond_8

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    .line 959
    .local v37, "val":Ljava/lang/Object;
    :goto_5
    if-nez v37, :cond_9

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_9

    .line 960
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null value."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    .end local v37    # "val":Ljava/lang/Object;
    :cond_8
    const/16 v37, 0x0

    goto :goto_5

    .line 962
    .restart local v37    # "val":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v26

    .line 964
    .local v26, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v37

    .local v37, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v15, v37

    .line 968
    .end local v37    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_a
    :goto_6
    const/4 v12, 0x0

    .line 971
    .local v12, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v12

    .line 973
    if-nez v15, :cond_c

    sget-object v14, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    :goto_7
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v8

    move-object/from16 v16, p4

    move/from16 v17, p9

    move/from16 v18, p6

    move-object/from16 v19, p5

    move-object/from16 v22, p8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    invoke-interface/range {v12 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerUpdateLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLjavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v36

    .line 988
    .local v36, "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 989
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 992
    if-nez v33, :cond_d

    .line 993
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v27

    .line 995
    .local v27, "computedMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    new-instance v34, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .local v34, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v33, v34

    .line 1000
    .end local v34    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    :goto_8
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    .end local v27    # "computedMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    :cond_b
    :goto_9
    if-eqz v12, :cond_4

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_4

    .end local v36    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :cond_c
    move-object/from16 v14, p1

    .line 973
    goto :goto_7

    .line 998
    .restart local v36    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :cond_d
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map;

    .restart local v27    # "computedMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    goto :goto_8

    .line 1003
    .end local v27    # "computedMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    :cond_e
    if-nez v33, :cond_b

    .line 1004
    new-instance v34, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v34    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v33, v34

    .end local v34    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v33    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    goto :goto_9

    .line 1008
    .end local v36    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v31

    .line 1009
    .local v31, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed entry while updating (will retry): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1012
    :cond_f
    const/4 v12, 0x0

    .line 1025
    if-eqz v12, :cond_a

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_6

    .line 1014
    .end local v31    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v28

    .line 1015
    .local v28, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v29, :cond_10

    .line 1016
    :try_start_3
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v29

    .line 1018
    :cond_10
    invoke-static/range {v32 .. v32}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1025
    if-eqz v12, :cond_4

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_4

    .line 1025
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_11

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_11
    throw v2

    .line 1031
    .end local v12    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v26    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v32    # "key":Ljava/lang/Object;, "TK;"
    :cond_12
    if-eqz v29, :cond_13

    .line 1032
    throw v29

    .line 1034
    :cond_13
    if-nez v33, :cond_14

    const/16 v35, 0x0

    .line 1037
    .local v35, "ret":Ljava/lang/Object;
    :goto_a
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    if-nez v35, :cond_1

    .line 1038
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v35

    .local v35, "ret":Ljava/util/Map;
    goto/16 :goto_1

    .line 1034
    .end local v35    # "ret":Ljava/util/Map;
    :cond_14
    if-eqz p7, :cond_15

    new-instance v35, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x1

    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V

    goto :goto_a

    :cond_15
    if-nez p6, :cond_16

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_17

    :cond_16
    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v35

    goto :goto_a

    :cond_17
    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v35

    goto :goto_a

    .restart local v26    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v32    # "key":Ljava/lang/Object;, "TK;"
    .local v37, "val":Ljava/lang/Object;
    :cond_18
    move-object/from16 v15, v37

    goto/16 :goto_6
.end method

.method private updatePartialBatch(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .locals 24
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "err"    # Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "subjId"    # Ljava/util/UUID;
    .param p9, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1367
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .local p3, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local p4, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p5, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez p4, :cond_0

    const/4 v4, 0x1

    move v7, v4

    :goto_0
    if-nez p5, :cond_1

    const/4 v4, 0x1

    :goto_1
    xor-int/2addr v4, v7

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x0

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1370
    :cond_2
    const/16 v22, 0x0

    .line 1373
    .local v22, "storeErr":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    if-eqz p4, :cond_3

    .line 1375
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$9;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, p4

    invoke-static {v0, v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1385
    :goto_2
    :try_start_1
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1407
    .local v5, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_6

    const/16 v21, 0x1

    .line 1409
    .local v21, "intercept":Z
    :goto_4
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_e

    .line 1410
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1412
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1381
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v19    # "i":I
    .end local v21    # "intercept":Z
    :catch_0
    move-exception v17

    .line 1382
    .local v17, "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    move-object/from16 v22, v17

    goto :goto_2

    .line 1389
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v4, v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1395
    :goto_6
    :try_start_3
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    goto :goto_3

    .line 1391
    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :catch_1
    move-exception v17

    .line 1392
    .restart local v17    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    move-object/from16 v22, v17

    goto :goto_6

    .line 1398
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    :catch_2
    move-exception v17

    .line 1399
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez p7, :cond_4

    .line 1400
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object p7

    .line 1402
    :cond_4
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    .end local p5    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v0, p7

    move-object/from16 v1, p5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V

    move-object/from16 v18, p7

    .line 1457
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local p7    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .local v18, "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :goto_7
    return-object v18

    .line 1407
    .end local v18    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local p5    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local p7    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :cond_6
    const/16 v21, 0x0

    goto :goto_4

    .line 1414
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v19    # "i":I
    .restart local v21    # "intercept":Z
    :cond_7
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->failedKeys()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1409
    :cond_8
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1420
    :cond_9
    :try_start_4
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_a

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v6, v4

    .line 1422
    .local v6, "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_9
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    if-nez v6, :cond_b

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    const-string v7, "null write value found."

    invoke-direct {v4, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1446
    .end local v6    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v20

    .line 1447
    .local v20, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    const-string v7, "Entry cannot become obsolete while holding lock."

    invoke-direct {v4, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1420
    .end local v20    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_a
    const/4 v6, 0x0

    goto :goto_9

    .line 1424
    .restart local v6    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p2

    move-object/from16 v10, p6

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    :try_start_5
    invoke-interface/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerUpdateLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLjavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v23

    .line 1439
    .local v23, "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    if-eqz v21, :cond_8

    .line 1440
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_d

    .line 1441
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v4, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterPut(Ljavax/cache/Cache$Entry;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 1449
    .end local v6    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v23    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :catch_4
    move-exception v17

    .line 1450
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez p7, :cond_c

    .line 1451
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object p7

    .line 1453
    :cond_c
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1443
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v6    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v23    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterRemove(Ljavax/cache/Cache$Entry;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_8

    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v6    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v23    # "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Boolean;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;>;"
    :cond_e
    move-object/from16 v18, p7

    .line 1457
    .end local p7    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v18    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    goto/16 :goto_7
.end method

.method private updateWithBatch(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;Ljava/lang/String;)Ljava/util/Map;
    .locals 62
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p3    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "subjId"    # Ljava/util/UUID;
    .param p9, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p3, "vals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->lockEntries(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v53

    .line 1073
    .local v53, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :try_start_0
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v56

    .line 1075
    .local v56, "size":I
    const/16 v17, 0x0

    .line 1077
    .local v17, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v26, 0x0

    .line 1079
    .local v26, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/16 v16, 0x0

    .line 1081
    .local v16, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    invoke-static/range {v56 .. v56}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v52

    .line 1084
    .local v52, "invokeResMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    :goto_0
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1086
    .local v43, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    const/16 v20, 0x0

    .line 1088
    .local v20, "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .line 1090
    .local v60, "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v47, 0x1

    .line 1092
    .local v47, "intercept":Z
    :goto_2
    const/16 v45, 0x0

    .local v45, "i":I
    move-object/from16 v44, v43

    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .local v44, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_3
    move/from16 v0, v45

    move/from16 v1, v56

    if-ge v0, v1, :cond_1a

    .line 1093
    move-object/from16 v0, v53

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1095
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v60, :cond_3

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    .line 1097
    .local v59, "val":Ljava/lang/Object;
    :goto_4
    if-nez v59, :cond_4

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    .line 1098
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null value."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v20    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v45    # "i":I
    .end local v47    # "intercept":Z
    .end local v52    # "invokeResMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    .end local v56    # "size":I
    .end local v59    # "val":Ljava/lang/Object;
    .end local v60    # "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->unlockEntries(Ljava/lang/Iterable;)V

    throw v3

    .line 1081
    .restart local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v56    # "size":I
    :cond_0
    const/16 v52, 0x0

    goto :goto_0

    .line 1088
    .restart local v20    # "err":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v52    # "invokeResMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult;>;"
    :cond_1
    const/16 v60, 0x0

    goto :goto_1

    .line 1090
    .restart local v60    # "valsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    const/16 v47, 0x0

    goto :goto_2

    .line 1095
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v45    # "i":I
    .restart local v47    # "intercept":Z
    :cond_3
    const/16 v59, 0x0

    goto :goto_4

    .line 1102
    .restart local v59    # "val":Ljava/lang/Object;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAllLocked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry did not pass the filter (will skip write) [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    move-object/from16 v43, v44

    .line 1092
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_6
    :goto_5
    add-int/lit8 v45, v45, 0x1

    move-object/from16 v44, v43

    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_3

    .line 1110
    :catch_0
    move-exception v42

    .line 1111
    .local v42, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v20, :cond_7

    .line 1112
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v20

    .line 1114
    :cond_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V

    move-object/from16 v43, v44

    .line 1116
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto :goto_5

    .line 1119
    .end local v42    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_8
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 1120
    move-object/from16 v0, v59

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    move-object v12, v0

    .line 1123
    .local v12, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v11, p8

    move-object/from16 v13, p9

    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1136
    .local v7, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v8, 0x0

    .line 1138
    .local v8, "oldVal":Ljava/lang/Object;
    new-instance v50, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-direct {v0, v3, v4, v7}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1141
    .local v50, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v58, 0x0

    .line 1142
    .local v58, "updatedVal":Ljava/lang/Object;
    const/16 v51, 0x0

    .line 1145
    .local v51, "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    :try_start_3
    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-interface {v12, v0, v1}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 1147
    .local v41, "computed":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v50 .. v50}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v57

    .line 1151
    .local v57, "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v41, :cond_9

    .line 1152
    new-instance v51, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1160
    .end local v41    # "computed":Ljava/lang/Object;
    .end local v58    # "updatedVal":Ljava/lang/Object;
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    :cond_9
    :goto_6
    if-eqz v51, :cond_a

    .line 1161
    :try_start_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_a
    if-nez v57, :cond_e

    .line 1164
    if-eqz v47, :cond_b

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v9

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual/range {v50 .. v50}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    invoke-interface {v9, v3}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v48

    .line 1169
    .local v48, "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v43, v44

    .line 1170
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_5

    .line 1154
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v48    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :catch_1
    move-exception v42

    .line 1155
    .local v42, "e":Ljava/lang/Exception;
    new-instance v51, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    move-object/from16 v0, v51

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Exception;)V

    .line 1157
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    move-object/from16 v57, v7

    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_6

    .line 1174
    .end local v42    # "e":Ljava/lang/Exception;
    :cond_b
    if-eqz v17, :cond_20

    .line 1175
    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, v44

    move-object/from16 v15, p6

    move-object/from16 v19, p5

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    invoke-direct/range {v13 .. v22}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updatePartialBatch(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v20

    .line 1186
    const/16 v17, 0x0

    .line 1187
    const/16 v16, 0x0

    .line 1189
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1193
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_7
    if-nez v26, :cond_c

    .line 1194
    :try_start_5
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v56}, Ljava/util/ArrayList;-><init>(I)V

    .end local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local v55, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v26, v55

    .line 1196
    .end local v55    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_c
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1301
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_8
    move-object/from16 v0, v43

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 1303
    :catch_2
    move-exception v42

    .line 1304
    .local v42, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_9
    if-nez v20, :cond_d

    .line 1305
    :try_start_6
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->partialUpdateException()Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v20

    .line 1307
    :cond_d
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 1199
    .end local v42    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_e
    if-eqz v47, :cond_10

    .line 1200
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v9

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual/range {v50 .. v50}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v58

    invoke-interface {v9, v3, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .line 1204
    .local v49, "interceptorVal":Ljava/lang/Object;
    if-nez v49, :cond_f

    move-object/from16 v43, v44

    .line 1205
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_5

    .line 1207
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v57

    .line 1211
    .end local v49    # "interceptorVal":Ljava/lang/Object;
    :cond_10
    if-eqz v26, :cond_1f

    .line 1212
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v44

    move-object/from16 v23, p6

    move-object/from16 v27, p5

    move-object/from16 v28, v20

    move-object/from16 v29, p8

    move-object/from16 v30, p9

    invoke-direct/range {v21 .. v30}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updatePartialBatch(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v20

    .line 1223
    const/16 v26, 0x0

    .line 1225
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1228
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_a
    if-nez v17, :cond_11

    .line 1229
    :try_start_8
    new-instance v54, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-direct {v0, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1230
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v54, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_9
    new-instance v61, Ljava/util/ArrayList;

    move-object/from16 v0, v61

    move/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local v61, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v16, v61

    .end local v61    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v17, v54

    .line 1233
    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_11
    :try_start_a
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    move-object/from16 v0, v16

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_8

    .line 1309
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v46

    .line 1310
    .local v46, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_b
    :try_start_b
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Entry cannot become obsolete while holding lock."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1237
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v46    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_12
    :try_start_c
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_16

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v40

    .line 1240
    .local v40, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v47, :cond_14

    .line 1241
    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v27, v2

    move-object/from16 v36, p8

    move-object/from16 v38, p9

    invoke-interface/range {v27 .. v39}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1254
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    move-object/from16 v0, v59

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .line 1257
    .restart local v49    # "interceptorVal":Ljava/lang/Object;
    if-nez v49, :cond_13

    move-object/from16 v43, v44

    .line 1258
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_5

    .line 1260
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v40

    .line 1263
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v49    # "interceptorVal":Ljava/lang/Object;
    :cond_14
    if-nez v17, :cond_15

    .line 1264
    new-instance v54, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-direct {v0, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V
    :try_end_c
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1265
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_d
    new-instance v61, Ljava/util/ArrayList;

    move-object/from16 v0, v61

    move/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_d
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v61    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v16, v61

    .end local v61    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v16    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v17, v54

    .line 1268
    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_15
    :try_start_e
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v43, v44

    .line 1270
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_8

    .line 1272
    .end local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_16
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_17

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_17

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1303
    :catch_4
    move-exception v42

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_9

    .line 1274
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_17
    if-eqz v47, :cond_18

    .line 1275
    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v27, v2

    move-object/from16 v36, p8

    move-object/from16 v38, p9

    invoke-interface/range {v27 .. v39}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1288
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v48

    .line 1291
    .restart local v48    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v43, v44

    .line 1292
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_5

    .line 1295
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v48    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_18
    if-nez v26, :cond_19

    .line 1296
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v56}, Ljava/util/ArrayList;-><init>(I)V

    .end local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v55    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v26, v55

    .line 1298
    .end local v55    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v26    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_19
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_8

    .line 1312
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :catch_5
    move-exception v46

    move-object/from16 v43, v44

    .line 1313
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .local v46, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :goto_c
    :try_start_f
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Filter should never fail with failFast=false and empty filter."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1318
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v46    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .end local v59    # "val":Ljava/lang/Object;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_1a
    if-nez v17, :cond_1b

    if-eqz v26, :cond_1d

    :cond_1b
    move-object/from16 v13, p0

    move-object/from16 v14, v44

    move-object/from16 v15, p6

    move-object/from16 v18, v26

    move-object/from16 v19, p5

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    .line 1319
    invoke-direct/range {v13 .. v22}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updatePartialBatch(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    move-result-object v20

    .line 1333
    :cond_1c
    if-eqz v20, :cond_1e

    .line 1334
    throw v20

    .line 1331
    :cond_1d
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_1c

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1339
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->unlockEntries(Ljava/lang/Iterable;)V

    return-object v52

    .line 1312
    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v59    # "val":Ljava/lang/Object;
    :catch_6
    move-exception v46

    goto :goto_c

    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_7
    move-exception v46

    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_c

    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_8
    move-exception v46

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_c

    .line 1309
    .end local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :catch_9
    move-exception v46

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_b

    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_a
    move-exception v46

    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_b

    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_b
    move-exception v46

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_b

    .line 1303
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_c
    move-exception v42

    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .end local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_d
    move-exception v42

    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    move-object/from16 v17, v54

    .end local v54    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v40    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v12    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v50    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v51    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .restart local v57    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1f
    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_a

    .end local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_20
    move-object/from16 v43, v44

    .end local v44    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    .restart local v43    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    goto/16 :goto_7
.end method


# virtual methods
.method protected asyncOp(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 1575
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "op":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->asyncOpAcquire()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 1577
    .local v1, "fail":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1607
    :goto_0
    return-object v0

    .line 1580
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->lastFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    .line 1582
    .local v3, "holder":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock()V

    .line 1585
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1587
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1588
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/concurrent/Callable;)V

    invoke-direct {v0, v2, v4}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .line 1595
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .line 1600
    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1602
    .restart local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    throw v4
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 487
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "taskName":Ljava/lang/String;
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v4

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllInternal(Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v8

    .line 497
    .local v8, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 499
    :cond_0
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAll(Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 8
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;Z)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 508
    const-string v0, "keys"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "taskName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->getAllInternal(Ljava/util/Collection;ZZZLjava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "forcePrimary"    # Z
    .param p3, "skipTx"    # Z
    .param p4, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .param p7, "deserializePortable"    # Z
    .param p8, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 536
    const-string v0, "keys"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    .line 539
    .local v3, "swapOrOffheap":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v4

    .line 540
    .local v4, "storeEnabled":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v5

    .line 542
    .local v5, "clone":Z
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$3;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;ZZZLjava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->asyncOp(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V

    .line 91
    return-void
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 2
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessorResult;

    .line 667
    .local v0, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    .end local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    const/4 v6, 0x0

    .line 768
    const-string v0, "map"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 771
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 775
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v4, p2

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 11
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v6, 0x0

    .line 674
    const-string v0, "keys"

    const-string v1, "entryProcessor"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 681
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$4;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$4;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljavax/cache/processor/EntryProcessor;)V

    new-array v1, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v10

    .line 687
    .local v10, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    const/4 v1, 0x0

    .line 791
    const-string v0, "map"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 798
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 742
    const-string v0, "keys"

    const-string v3, "entryProcessor"

    invoke-static {p1, v0, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 749
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljavax/cache/processor/EntryProcessor;)V

    new-array v3, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v2

    .line 755
    .local v2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 703
    const-string v0, "key"

    const-string v3, "entryProcessor"

    invoke-static {p1, v0, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->validateCacheKey(Ljava/lang/Object;)V

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 710
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .local v2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor;>;"
    move-object v0, p0

    move-object v3, p3

    move v5, v4

    move-object v6, v1

    .line 713
    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    .line 720
    .local v7, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$5;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)V

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public varargs lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Locks are not supported for CacheAtomicityMode.ATOMIC mode (use CacheAtomicityMode.TRANSACTIONAL instead)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1613
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1614
    :cond_0
    return-void
.end method

.method public preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 10
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 114
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 10
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v6, 0x0

    .line 322
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 324
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move v7, v6

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    move-object v6, p2

    .line 340
    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 173
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 177
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/F0;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 136
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 151
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 155
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move v7, v6

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 192
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 196
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/F0;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 10
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 355
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v4, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 444
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 448
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 468
    return-void
.end method

.method public varargs removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 10
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 380
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 382
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move v7, v6

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;-><init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 398
    invoke-direct {p0, p1, v1, v1, p2}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 373
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 279
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 283
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 14
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v11

    .line 408
    .local v11, "statsEnabled":Z
    if-eqz v11, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 410
    .local v12, "start":J
    :goto_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 414
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 424
    .local v10, "rmv":Ljava/lang/Boolean;
    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    .line 427
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 408
    .end local v10    # "rmv":Ljava/lang/Boolean;
    .end local v12    # "start":J
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    .line 297
    const-string v0, "key"

    const-string v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 301
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 435
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 439
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, p3}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v0, "oldVal"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x1

    .line 261
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 265
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->expiryPerCall()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v9

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 307
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 311
    invoke-static {p1, p3}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v6

    move-object v0, p0

    move-object v2, v8

    move-object v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isRead"    # Z
    .param p6, "retval"    # Z
    .param p7, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p8, "invalidate"    # Z
    .param p9, "accessTtl"    # J
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "ZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Locks are not supported for CacheAtomicityMode.ATOMIC mode (use CacheAtomicityMode.TRANSACTIONAL instead)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public varargs unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1551
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Locks are not supported for CacheAtomicityMode.ATOMIC mode (use CacheAtomicityMode.TRANSACTIONAL instead)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
