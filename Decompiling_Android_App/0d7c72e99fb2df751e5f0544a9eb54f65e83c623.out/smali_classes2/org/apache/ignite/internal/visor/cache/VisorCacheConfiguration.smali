.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private affinityCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

.field private atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

.field private atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

.field private dfltCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

.field private eagerTtl:Z

.field private evictCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

.field private expiryPlcFactory:Ljava/lang/String;

.field private interceptor:Ljava/lang/String;

.field private invalidate:Z

.field private ldrFactory:Ljava/lang/String;

.field private maxConcurrentAsyncOps:I

.field private memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

.field private mgmtEnabled:Z

.field private mode:Lorg/apache/ignite/cache/CacheMode;

.field private name:Ljava/lang/String;

.field private nearCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

.field private offHeapMaxMemory:J

.field private qryCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;

.field private rebalanceCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

.field private startSize:I

.field private statisticsEnabled:Z

.field private storeCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

.field private swapEnabled:Z

.field private tmLookupClsName:Ljava/lang/String;

.field private typeMeta:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private writeSynchronizationMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field private writerFactory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/Ignite;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;
    .locals 4
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 125
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;-><init>()V

    .line 127
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->name:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->mode:Lorg/apache/ignite/cache/CacheMode;

    .line 129
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 130
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 131
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->eagerTtl:Z

    .line 132
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->writeSynchronizationMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 133
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->swapEnabled:Z

    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isInvalidate()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->invalidate:Z

    .line 135
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->startSize:I

    .line 136
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTransactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->tmLookupClsName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->offHeapMaxMemory:J

    .line 138
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMaxConcurrentAsyncOperations()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->maxConcurrentAsyncOps:I

    .line 139
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 140
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->interceptor:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->list(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->typeMeta:Ljava/util/Collection;

    .line 142
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->statisticsEnabled:Z

    .line 143
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isManagementEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->mgmtEnabled:Z

    .line 144
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheLoaderFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->ldrFactory:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheWriterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->writerFactory:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->expiryPlcFactory:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->affinityCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

    .line 149
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->rebalanceCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

    .line 150
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->evictCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

    .line 151
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->nearCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

    .line 152
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->dfltCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

    .line 153
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->from(Lorg/apache/ignite/Ignite;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->storeCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

    .line 154
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->qryCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;

    .line 156
    return-object v0
.end method

.method public static list(Lorg/apache/ignite/Ignite;[Lorg/apache/ignite/configuration/CacheConfiguration;)Ljava/lang/Iterable;
    .locals 6
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "caches"    # [Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/Ignite;",
            "[",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 173
    :cond_0
    return-object v2

    .line 168
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, "cfgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 171
    .local v1, "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-static {p0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->from(Lorg/apache/ignite/Ignite;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public affinityConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->affinityCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

    return-object v0
.end method

.method public atomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    return-object v0
.end method

.method public atomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

    return-object v0
.end method

.method public defaultConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->dfltCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

    return-object v0
.end method

.method public eagerTtl()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->eagerTtl:Z

    return v0
.end method

.method public evictConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->evictCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

    return-object v0
.end method

.method public expiryPolicyFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->expiryPlcFactory:Ljava/lang/String;

    return-object v0
.end method

.method public interceptor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->interceptor:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->invalidate:Z

    return v0
.end method

.method public loaderFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->ldrFactory:Ljava/lang/String;

    return-object v0
.end method

.method public managementEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->mgmtEnabled:Z

    return v0
.end method

.method public maxConcurrentAsyncOperations()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->maxConcurrentAsyncOps:I

    return v0
.end method

.method public memoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    return-object v0
.end method

.method public memoryMode(Lorg/apache/ignite/cache/CacheMemoryMode;)V
    .locals 0
    .param p1, "memoryMode"    # Lorg/apache/ignite/cache/CacheMemoryMode;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 272
    return-void
.end method

.method public mode()Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->mode:Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public nearConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->nearCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

    return-object v0
.end method

.method public offsetHeapMaxMemory()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->offHeapMaxMemory:J

    return-wide v0
.end method

.method public queryConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->qryCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;

    return-object v0
.end method

.method public rebalanceConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->rebalanceCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

    return-object v0
.end method

.method public startSize()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->startSize:I

    return v0
.end method

.method public statisticsEnabled()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->statisticsEnabled:Z

    return v0
.end method

.method public storeConfiguration()Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->storeCfg:Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

    return-object v0
.end method

.method public swapEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->swapEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transactionManagerLookupClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->tmLookupClsName:Ljava/lang/String;

    return-object v0
.end method

.method public typeMeta()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->typeMeta:Ljava/util/Collection;

    return-object v0
.end method

.method public writeSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->writeSynchronizationMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method

.method public writerFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->writerFactory:Ljava/lang/String;

    return-object v0
.end method
