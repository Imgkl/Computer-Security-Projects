.class public Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
.super Ljava/lang/Object;
.source "GridCacheAttributes.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 49
    return-void
.end method

.method private static className(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public affinityHashIdResolverClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    .line 148
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    instance-of v1, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-virtual {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->getHashIdResolver()Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .restart local v0    # "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public affinityIncludeNeighbors()Z
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    .line 124
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    instance-of v1, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-virtual {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->isExcludeNeighbors()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public affinityKeyBackups()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v0

    return v0
.end method

.method public affinityPartitionsCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I

    move-result v0

    return v0
.end method

.method public atomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    .line 87
    .local v0, "atomicityMode":Lorg/apache/ignite/cache/CacheAtomicityMode;
    if-eqz v0, :cond_0

    .end local v0    # "atomicityMode":Lorg/apache/ignite/cache/CacheAtomicityMode;
    :goto_0
    return-object v0

    .restart local v0    # "atomicityMode":Lorg/apache/ignite/cache/CacheAtomicityMode;
    :cond_0
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_ATOMICITY_MODE:Lorg/apache/ignite/cache/CacheAtomicityMode;

    goto :goto_0
.end method

.method public cacheAffinityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cacheAffinityMapperClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cacheMode()Lorg/apache/ignite/cache/CacheMode;
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    .line 78
    .local v0, "cacheMode":Lorg/apache/ignite/cache/CacheMode;
    if-eqz v0, :cond_0

    .end local v0    # "cacheMode":Lorg/apache/ignite/cache/CacheMode;
    :goto_0
    return-object v0

    .restart local v0    # "cacheMode":Lorg/apache/ignite/cache/CacheMode;
    :cond_0
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    goto :goto_0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cacheRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v0

    return-object v0
.end method

.method public configuration()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    return-object v0
.end method

.method public defaultLockTimeout()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultLockTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public defaultTimeToLive()J
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultTimeToLive()J

    move-result-wide v0

    return-wide v0
.end method

.method public evictMaxOverflowRatio()F
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictMaxOverflowRatio()F

    move-result v0

    return v0
.end method

.method public evictSynchronized()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v0

    return v0
.end method

.method public evictionFilterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evictionPolicyClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptorClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreviousValue()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isLoadPreviousValue()Z

    move-result v0

    return v0
.end method

.method public nearCacheEnabled()Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearEvictionPolicyClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v0

    .line 174
    .local v0, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;
    if-nez v0, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readThrough()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v0

    return v0
.end method

.method public rebalanceBatchSize()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v0

    return v0
.end method

.method public storeFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->className(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public swapEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transactionManagerLookupClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTransactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBehindBatchSize()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindBatchSize()I

    move-result v0

    return v0
.end method

.method public writeBehindEnabled()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v0

    return v0
.end method

.method public writeBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeBehindFlushSize()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v0

    return v0
.end method

.method public writeBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushThreadCount()I

    move-result v0

    return v0
.end method

.method public writeSynchronization()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    return-object v0
.end method

.method public writeThrough()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->ccfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v0

    return v0
.end method
