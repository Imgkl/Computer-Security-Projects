.class public Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SES_ATTR:Ljava/util/UUID;


# instance fields
.field private final cfgStore:Lorg/apache/ignite/cache/store/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<**>;"
        }
    .end annotation
.end field

.field private convertPortable:Z

.field private final locStore:Z

.field private final sesHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;",
            ">;"
        }
    .end annotation
.end field

.field private final singleThreadGate:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lorg/apache/ignite/cache/store/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final writeThrough:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->SES_ATTR:Ljava/util/UUID;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/Map;Lorg/apache/ignite/cache/store/CacheStore;Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p3    # Lorg/apache/ignite/cache/store/CacheStore;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cache/store/CacheStore;",
            "Ljava/lang/ThreadLocal;",
            ">;",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "sesHolders":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cache/store/CacheStore;Ljava/lang/ThreadLocal;>;"
    .local p3, "cfgStore":Lorg/apache/ignite/cache/store/CacheStore;, "Lorg/apache/ignite/cache/store/CacheStore<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 85
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cfgStore:Lorg/apache/ignite/cache/store/CacheStore;

    .line 87
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cacheStoreWrapper(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/cache/store/CacheStore;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    .line 89
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-nez v2, :cond_1

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->singleThreadGate:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    .line 91
    invoke-virtual {p4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeThrough:Z

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "sesHolder0":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;>;"
    if-eqz p3, :cond_0

    .line 96
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sesHolder0":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;>;"
    check-cast v1, Ljava/lang/ThreadLocal;

    .line 98
    .restart local v1    # "sesHolder0":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;>;"
    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V

    .line 101
    .local v0, "locSes":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectStoreSession(Ljava/lang/Object;Lorg/apache/ignite/cache/store/CacheStoreSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->sesHolder:Ljava/lang/ThreadLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;)Ljava/lang/ThreadLocal;

    move-result-object v1

    .line 104
    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v0    # "locSes":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$ThreadLocalSession;
    :cond_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    .line 111
    const-class v2, Lorg/apache/ignite/internal/processors/cache/store/CacheLocalStore;

    invoke-static {p3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    .line 112
    return-void

    .line 89
    .end local v1    # "sesHolder0":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;>;"
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-direct {v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;-><init>(Lorg/apache/ignite/cache/store/CacheStore;)V

    goto :goto_0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    return v0
.end method

.method private cacheStoreWrapper(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/cache/store/CacheStore;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/cache/store/CacheStore;
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "cfgStore"    # Lorg/apache/ignite/cache/store/CacheStore;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 141
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p2

    .line 155
    :goto_0
    return-object v0

    .line 144
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/cache/store/CacheStore;)V

    .line 150
    .local v0, "store":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->setFlushSize(I)V

    .line 151
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushThreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->setFlushThreadCount(I)V

    .line 152
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->setFlushFrequency(J)V

    .line 153
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindBatchSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->setBatchSize(I)V

    goto :goto_0
.end method

.method private convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 307
    const/4 p1, 0x0

    .line 309
    .end local p1    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "val":Ljava/lang/Object;
    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "val":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private handleClassCastException(Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/ClassCastException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 808
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 810
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 811
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache store must work with portable objects if portables are enabled for cache [cacheName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 815
    :cond_1
    throw p1
.end method

.method private loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V
    .locals 15
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteBiInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/apache/ignite/internal/util/lang/GridInClosure3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridInClosure3",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "vis":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    .local p4, "verVis":Lorg/apache/ignite/internal/util/lang/GridInClosure3;, "Lorg/apache/ignite/internal/util/lang/GridInClosure3<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v12, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v12, :cond_2

    if-eqz p3, :cond_0

    const/4 v12, 0x1

    move v13, v12

    :goto_0
    if-eqz p4, :cond_1

    const/4 v12, 0x1

    :goto_1
    xor-int/2addr v12, v13

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_0
    const/4 v12, 0x0

    move v13, v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 375
    :cond_2
    sget-boolean v12, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v12, :cond_3

    if-eqz p4, :cond_3

    iget-boolean v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 377
    :cond_3
    if-nez p4, :cond_5

    const/4 v3, 0x1

    .line 379
    .local v3, "convert":Z
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 380
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 381
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 383
    .local v7, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz v3, :cond_6

    .line 384
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v12}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    .end local v7    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    :goto_3
    return-void

    .line 377
    .end local v3    # "convert":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 386
    .restart local v3    # "convert":Z
    .restart local v7    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 389
    .local v10, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v10, :cond_4

    .line 390
    invoke-virtual {v10}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v12, v13}, Lorg/apache/ignite/internal/util/lang/GridInClosure3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 398
    .end local v7    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v10    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_7
    iget-boolean v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    if-eqz v12, :cond_9

    .line 399
    new-instance v12, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;

    invoke-direct {v12, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)V

    const/4 v13, 0x0

    new-array v13, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    .line 413
    .local v8, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_4
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 414
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loading values from store for keys: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 416
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 418
    const/4 v11, 0x1

    .line 421
    .local v11, "thewEx":Z
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;ZLorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V

    .line 438
    .local v2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v12

    iget-object v13, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->singleThreadGate:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold()I

    move-result v13

    if-le v12, v13, :cond_a

    .line 439
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v12, v8}, Lorg/apache/ignite/cache/store/CacheStore;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v9

    .line 441
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v9, :cond_b

    .line 442
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 443
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v2, v12, v13}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/cache/integration/CacheLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 451
    .end local v2    # "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 452
    .local v4, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 464
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :goto_6
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 465
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loaded values from store for keys: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 406
    .end local v8    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v11    # "thewEx":Z
    :cond_9
    new-instance v12, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$2;

    invoke-direct {v12, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)V

    const/4 v13, 0x0

    new-array v13, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    .restart local v8    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 447
    .restart local v2    # "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v11    # "thewEx":Z
    :cond_a
    :try_start_2
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->singleThreadGate:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-virtual {v12, v8, v2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAll(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/cache/integration/CacheLoaderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :cond_b
    const/4 v11, 0x0

    .line 461
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_6

    .line 454
    .end local v2    # "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_1
    move-exception v4

    .line 455
    .local v4, "e":Ljavax/cache/integration/CacheLoaderException;
    :try_start_3
    new-instance v12, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v12, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    .end local v4    # "e":Ljavax/cache/integration/CacheLoaderException;
    :catchall_0
    move-exception v12

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v12

    .line 457
    :catch_2
    move-exception v4

    .line 458
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v12, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v13, Ljavax/cache/integration/CacheLoaderException;

    invoke-direct {v13, v4}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v12, v13}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "convert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 248
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v3

    .line 253
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {p2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "storeKey":Ljava/lang/Object;
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 258
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading value from store for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 261
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 263
    const/4 v2, 0x1

    .line 265
    .local v2, "thewEx":Z
    const/4 v3, 0x0

    .line 268
    .local v3, "val":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->singleThreadGate:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->load(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/cache/integration/CacheLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 270
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p0, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 285
    .end local v3    # "val":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 286
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded value from store [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", val="

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

    .line 288
    :cond_4
    if-eqz p3, :cond_0

    .line 289
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    .restart local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-virtual {p0, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_1

    .line 275
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljavax/cache/integration/CacheLoaderException;
    :try_start_2
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    .end local v0    # "e":Ljavax/cache/integration/CacheLoaderException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v4

    .line 278
    :catch_2
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljavax/cache/integration/CacheLoaderException;

    invoke-direct {v5, v0}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public configured()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configuredStore()Lorg/apache/ignite/cache/store/CacheStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cfgStore:Lorg/apache/ignite/cache/store/CacheStore;

    return-object v0
.end method

.method public convertPortable(Z)V
    .locals 0
    .param p1, "convertPortable"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    .line 204
    return-void
.end method

.method public convertPortable()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    return v0
.end method

.method endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "threwEx"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 823
    if-nez p1, :cond_0

    .line 824
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v1, p2}, Lorg/apache/ignite/cache/store/CacheStore;->sessionEnd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    if-nez p2, :cond_3

    .line 828
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-eqz v2, :cond_2

    .line 832
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    throw v1

    .line 831
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public forceFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->forceFlush()V

    .line 779
    :cond_0
    return-void
.end method

.method initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 840
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 843
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 847
    :cond_1
    if-eqz p1, :cond_3

    .line 848
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->SES_ATTR:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .line 850
    .local v0, "ses":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    if-nez v0, :cond_2

    .line 851
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    .end local v0    # "ses":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V

    .line 853
    .restart local v0    # "ses":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->SES_ATTR:Ljava/util/UUID;

    invoke-interface {p1, v1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;Ljava/lang/String;)V

    goto :goto_1

    .line 860
    .end local v0    # "ses":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V

    .restart local v0    # "ses":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$SessionData;
    goto :goto_1
.end method

.method public isLocalStore()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    return v0
.end method

.method public loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "vis":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 348
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v2, :cond_0

    .line 349
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V

    .line 351
    const/4 v2, 0x1

    .line 358
    :goto_0
    return v2

    .line 354
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 355
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-interface {p3, v1, v3}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 358
    .end local v1    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadCache(Lorg/apache/ignite/internal/util/lang/GridInClosure3;[Ljava/lang/Object;)Z
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridInClosure3",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "vis":Lorg/apache/ignite/internal/util/lang/GridInClosure3;, "Lorg/apache/ignite/internal/util/lang/GridInClosure3<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v5, 0x0

    .line 480
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v2, :cond_2

    .line 481
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Loading all values from store."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 484
    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 486
    const/4 v1, 0x1

    .line 489
    .local v1, "thewEx":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;

    invoke-direct {v3, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V

    invoke-interface {v2, v3, p2}, Lorg/apache/ignite/cache/store/CacheStore;->loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/cache/integration/CacheLoaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 521
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Loaded all values from store."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 524
    :cond_1
    const/4 v2, 0x1

    .line 530
    .end local v1    # "thewEx":Z
    :goto_0
    return v2

    .line 511
    .restart local v1    # "thewEx":Z
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljavax/cache/integration/CacheLoaderException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    .end local v0    # "e":Ljavax/cache/integration/CacheLoaderException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v2

    .line 514
    :catch_1
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljavax/cache/integration/CacheLoaderException;

    invoke-direct {v3, v0}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "thewEx":Z
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling Cache.loadCache() method will have no effect, CacheConfiguration.getStore() is not defined for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 530
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public localStoreLoadAll(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridInClosure3",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "vis":Lorg/apache/ignite/internal/util/lang/GridInClosure3;, "Lorg/apache/ignite/internal/util/lang/GridInClosure3<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V

    .line 333
    return-void
.end method

.method public putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z
    .locals 13
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    const/16 v12, 0x5d

    const/4 v8, 0x1

    .line 602
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v8

    .line 605
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 606
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 608
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p0, p1, v9, v10, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    goto :goto_0

    .line 611
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v9, :cond_7

    .line 612
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    const/4 v9, 0x0

    invoke-direct {v3, p0, p2, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V

    .line 614
    .local v3, "entries":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 615
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Storing values in cache store [entries="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 617
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 619
    const/4 v7, 0x1

    .line 622
    .local v7, "thewEx":Z
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v9, v3}, Lorg/apache/ignite/cache/store/CacheStore;->writeAll(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    const/4 v7, 0x0

    .line 645
    invoke-virtual {p0, p1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 648
    :goto_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 649
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored value in cache store [entries="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    invoke-virtual {p0, p1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_1

    .line 629
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    instance-of v8, v0, Ljavax/cache/integration/CacheWriterException;

    if-nez v8, :cond_4

    .line 631
    new-instance v1, Ljavax/cache/integration/CacheWriterException;

    invoke-direct {v1, v0}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 633
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 634
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/cache/Cache$Entry;

    .line 637
    .local v4, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    invoke-interface {v4}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 645
    .end local v4    # "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0, p1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v8

    .line 639
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    :try_start_3
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;

    invoke-direct {v8, v6, v0}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;-><init>(Ljava/util/Collection;Ljava/lang/Exception;)V

    throw v8

    .line 642
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 654
    .end local v3    # "entries":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;
    .end local v7    # "thewEx":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v4, :cond_5

    .line 548
    instance-of v4, p2, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-eqz v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v2

    .line 551
    :cond_1
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    if-eqz v4, :cond_2

    .line 552
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 553
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p3, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p3

    .line 556
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing value in cache store [key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", val="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 559
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 561
    const/4 v1, 0x1

    .line 564
    .local v1, "thewEx":Z
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    if-eqz v3, :cond_4

    invoke-static {p3, p4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    :goto_1
    invoke-direct {v5, p2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Lorg/apache/ignite/cache/store/CacheStore;->write(Ljavax/cache/Cache$Entry;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/cache/integration/CacheWriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    const/4 v1, 0x0

    .line 578
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 581
    :goto_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored value in cache store [key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", val="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, p3

    .line 564
    goto :goto_1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_2

    .line 571
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 572
    .local v0, "e":Ljavax/cache/integration/CacheWriterException;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    .end local v0    # "e":Ljavax/cache/integration/CacheWriterException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v2

    .line 574
    :catch_2
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljavax/cache/integration/CacheWriterException;

    invoke-direct {v3, v0}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "thewEx":Z
    :cond_5
    move v2, v3

    .line 587
    goto/16 :goto_0
.end method

.method public removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/16 v9, 0x5d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 717
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v5

    .line 720
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 721
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 723
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 726
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v7, :cond_7

    .line 727
    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7, p2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v3

    .line 729
    .local v3, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 730
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing values from cache store [keys="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 732
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 734
    const/4 v4, 0x1

    .line 737
    .local v4, "thewEx":Z
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v6, v3}, Lorg/apache/ignite/cache/store/CacheStore;->deleteAll(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    const/4 v4, 0x0

    .line 754
    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 757
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 758
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed values from cache store [keys="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v4    # "thewEx":Z
    :cond_4
    move-object v3, p2

    .line 727
    goto :goto_1

    .line 741
    .restart local v3    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v4    # "thewEx":Z
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_2

    .line 744
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    instance-of v5, v0, Ljavax/cache/integration/CacheWriterException;

    if-nez v5, :cond_5

    .line 746
    new-instance v1, Ljavax/cache/integration/CacheWriterException;

    invoke-direct {v1, v0}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 748
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 749
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;

    invoke-direct {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;-><init>(Ljava/util/Collection;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    :catchall_0
    move-exception v5

    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v5

    .line 751
    :cond_6
    :try_start_3
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v5, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v4    # "thewEx":Z
    :cond_7
    move v5, v6

    .line 763
    goto/16 :goto_0
.end method

.method public removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    const/4 v2, 0x0

    .line 666
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-eqz v3, :cond_0

    .line 668
    instance-of v3, p2, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-eqz v3, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v2

    .line 671
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    if-eqz v3, :cond_2

    .line 672
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, p2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 674
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 675
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing value from cache store [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 677
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 679
    const/4 v1, 0x1

    .line 682
    .local v1, "thewEx":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v2, p2}, Lorg/apache/ignite/cache/store/CacheStore;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/cache/integration/CacheWriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    const/4 v1, 0x0

    .line 696
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 699
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 700
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed value from cache store [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 702
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->handleClassCastException(Ljava/lang/ClassCastException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    goto :goto_1

    .line 689
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 690
    .local v0, "e":Ljavax/cache/integration/CacheWriterException;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    .end local v0    # "e":Ljavax/cache/integration/CacheWriterException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    throw v2

    .line 692
    :catch_2
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljavax/cache/integration/CacheWriterException;

    invoke-direct {v3, v0}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected start0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    instance-of v1, v1, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    check-cast v1, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v1}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->keepPortableInStore(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z

    .line 174
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start cache store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected stop0(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 178
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    instance-of v1, v1, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    check-cast v1, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v1}, Lorg/apache/ignite/lifecycle/LifecycleAware;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    const-string v2, "Failed to stop cache store."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public store()Lorg/apache/ignite/cache/store/CacheStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    return-object v0
.end method

.method public txEnd(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "commit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 787
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 789
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 792
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p2}, Lorg/apache/ignite/cache/store/CacheStore;->sessionEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 798
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->SES_ATTR:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->removeMeta(Ljava/util/UUID;)Ljava/lang/Object;

    .line 801
    :cond_1
    return-void

    .line 795
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_2

    .line 796
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->sesHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 798
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->SES_ATTR:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->removeMeta(Ljava/util/UUID;)Ljava/lang/Object;

    :cond_2
    throw v0
.end method

.method public writeThrough()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeThrough:Z

    return v0
.end method

.method public writeToStoreFromDht()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
