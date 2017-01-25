.class Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;
.super Ljava/lang/Object;
.source "CacheMetricsMXBeanImpl.java"

# interfaces
.implements Lorg/apache/ignite/mxbean/CacheMetricsMXBean;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->clear()V

    .line 199
    return-void
.end method

.method public getAverageGetTime()F
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getAverageGetTime()F

    move-result v0

    return v0
.end method

.method public getAveragePutTime()F
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getAveragePutTime()F

    move-result v0

    return v0
.end method

.method public getAverageRemoveTime()F
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getAverageRemoveTime()F

    move-result v0

    return v0
.end method

.method public getAverageTxCommitTime()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getAverageTxCommitTime()F

    move-result v0

    return v0
.end method

.method public getAverageTxRollbackTime()F
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getAverageTxRollbackTime()F

    move-result v0

    return v0
.end method

.method public getCacheEvictions()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheEvictions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheGets()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheGets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheHitPercentage()F
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheHitPercentage()F

    move-result v0

    return v0
.end method

.method public getCacheHits()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheHits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMissPercentage()F
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheMissPercentage()F

    move-result v0

    return v0
.end method

.method public getCacheMisses()J
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheMisses()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachePuts()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCachePuts()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheRemovals()J
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheRemovals()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheTxCommits()J
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheTxCommits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheTxRollbacks()J
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getCacheTxRollbacks()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDhtEvictQueueCurrentSize()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getDhtEvictQueueCurrentSize()I

    move-result v0

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getKeySize()I

    move-result v0

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getOffHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapEntriesCount()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getOffHeapEntriesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOverflowSize()J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getOverflowSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getSize()I

    move-result v0

    return v0
.end method

.method public getTxCommitQueueSize()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxCommitQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxCommittedVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtCommitQueueSize()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtCommitQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtCommittedVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtPrepareQueueSize()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtPrepareQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtRolledbackVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtStartVersionCountsSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtThreadMapSize()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtThreadMapSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtXidMapSize()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxDhtXidMapSize()I

    move-result v0

    return v0
.end method

.method public getTxPrepareQueueSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxPrepareQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxRolledbackVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxStartVersionCountsSize()I

    move-result v0

    return v0
.end method

.method public getTxThreadMapSize()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxThreadMapSize()I

    move-result v0

    return v0
.end method

.method public getTxXidMapSize()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTxXidMapSize()I

    move-result v0

    return v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getValueType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriteBehindBufferSize()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindBufferSize()I

    move-result v0

    return v0
.end method

.method public getWriteBehindCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindCriticalOverflowCount()I

    move-result v0

    return v0
.end method

.method public getWriteBehindErrorRetryCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindErrorRetryCount()I

    move-result v0

    return v0
.end method

.method public getWriteBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindFlushFrequency()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWriteBehindFlushSize()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindFlushSize()I

    move-result v0

    return v0
.end method

.method public getWriteBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindFlushThreadCount()I

    move-result v0

    return v0
.end method

.method public getWriteBehindStoreBatchSize()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindStoreBatchSize()I

    move-result v0

    return v0
.end method

.method public getWriteBehindTotalCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getWriteBehindTotalCriticalOverflowCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isManagementEnabled()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isManagementEnabled()Z

    move-result v0

    return v0
.end method

.method public isReadThrough()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isReadThrough()Z

    move-result v0

    return v0
.end method

.method public isStatisticsEnabled()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isStatisticsEnabled()Z

    move-result v0

    return v0
.end method

.method public isStoreByValue()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isStoreByValue()Z

    move-result v0

    return v0
.end method

.method public isWriteBehindEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isWriteBehindEnabled()Z

    move-result v0

    return v0
.end method

.method public isWriteThrough()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->isWriteThrough()Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
