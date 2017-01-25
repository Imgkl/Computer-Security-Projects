.class Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;
.super Ljava/lang/Object;
.source "CacheMetricsSnapshot.java"

# interfaces
.implements Lorg/apache/ignite/cache/CacheMetrics;


# instance fields
.field private cacheName:Ljava/lang/String;

.field private commitAvgTimeNanos:F

.field private dhtEvictQueueCurrentSize:I

.field private evicts:J

.field private getAvgTimeNanos:F

.field private hits:J

.field private isEmpty:Z

.field private isManagementEnabled:Z

.field private isReadThrough:Z

.field private isStatisticsEnabled:Z

.field private isStoreByValue:Z

.field private isWriteBehindEnabled:Z

.field private isWriteThrough:Z

.field private keySize:I

.field private keyType:Ljava/lang/String;

.field private misses:J

.field private offHeapAllocatedSize:J

.field private offHeapEntriesCount:J

.field private overflowSize:J

.field private putAvgTimeNanos:F

.field private puts:J

.field private reads:J

.field private removeAvgTimeNanos:F

.field private removes:J

.field private rollbackAvgTimeNanos:F

.field private size:I

.field private txCommitQueueSize:I

.field private txCommits:J

.field private txCommittedVersionsSize:I

.field private txDhtCommitQueueSize:I

.field private txDhtCommittedVersionsSize:I

.field private txDhtPrepareQueueSize:I

.field private txDhtRolledbackVersionsSize:I

.field private txDhtStartVersionCountsSize:I

.field private txDhtThreadMapSize:I

.field private txDhtXidMapSize:I

.field private txPrepareQueueSize:I

.field private txRollbacks:J

.field private txRolledbackVersionsSize:I

.field private txStartVersionCountsSize:I

.field private txThreadMapSize:I

.field private txXidMapSize:I

.field private valueType:Ljava/lang/String;

.field private writeBehindBufferSize:I

.field private writeBehindCriticalOverflowCount:I

.field private writeBehindErrorRetryCount:I

.field private writeBehindFlushFrequency:J

.field private writeBehindFlushSize:I

.field private writeBehindFlushThreadCount:I

.field private writeBehindStoreBatchSize:I

.field private writeBehindTotalCriticalOverflowCount:I


# direct methods
.method public constructor <init>(Lorg/apache/ignite/cache/CacheMetrics;)V
    .locals 3
    .param p1, "m"    # Lorg/apache/ignite/cache/CacheMetrics;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    .line 31
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->puts:J

    .line 34
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->hits:J

    .line 37
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->misses:J

    .line 40
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommits:J

    .line 43
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txRollbacks:J

    .line 46
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->evicts:J

    .line 49
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removes:J

    .line 52
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->putAvgTimeNanos:F

    .line 55
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->getAvgTimeNanos:F

    .line 58
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removeAvgTimeNanos:F

    .line 61
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->commitAvgTimeNanos:F

    .line 64
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->rollbackAvgTimeNanos:F

    .line 186
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheGets()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    .line 187
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCachePuts()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->puts:J

    .line 188
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheHits()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->hits:J

    .line 189
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheMisses()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->misses:J

    .line 190
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheTxCommits()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommits:J

    .line 191
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheTxRollbacks()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txRollbacks:J

    .line 192
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheEvictions()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->evicts:J

    .line 193
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheRemovals()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removes:J

    .line 195
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getAveragePutTime()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->putAvgTimeNanos:F

    .line 196
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageGetTime()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->getAvgTimeNanos:F

    .line 197
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageRemoveTime()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removeAvgTimeNanos:F

    .line 198
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxCommitTime()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->commitAvgTimeNanos:F

    .line 199
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxRollbackTime()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->rollbackAvgTimeNanos:F

    .line 201
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->cacheName:Ljava/lang/String;

    .line 202
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getOverflowSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->overflowSize:J

    .line 203
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getOffHeapEntriesCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->offHeapEntriesCount:J

    .line 204
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getOffHeapAllocatedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->offHeapAllocatedSize:J

    .line 205
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->size:I

    .line 206
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->keySize:I

    .line 207
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isEmpty:Z

    .line 208
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getDhtEvictQueueCurrentSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->dhtEvictQueueCurrentSize:I

    .line 209
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxThreadMapSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txThreadMapSize:I

    .line 210
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxXidMapSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txXidMapSize:I

    .line 211
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxCommitQueueSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommitQueueSize:I

    .line 212
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxPrepareQueueSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txPrepareQueueSize:I

    .line 213
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxStartVersionCountsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txStartVersionCountsSize:I

    .line 214
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxCommittedVersionsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommittedVersionsSize:I

    .line 215
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxRolledbackVersionsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txRolledbackVersionsSize:I

    .line 216
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtThreadMapSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtThreadMapSize:I

    .line 217
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtXidMapSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtXidMapSize:I

    .line 218
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtCommitQueueSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtCommitQueueSize:I

    .line 219
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtPrepareQueueSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtPrepareQueueSize:I

    .line 220
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtStartVersionCountsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtStartVersionCountsSize:I

    .line 221
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtCommittedVersionsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtCommittedVersionsSize:I

    .line 222
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtRolledbackVersionsSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtRolledbackVersionsSize:I

    .line 223
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isWriteBehindEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isWriteBehindEnabled:Z

    .line 224
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindFlushSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushSize:I

    .line 225
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindFlushThreadCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushThreadCount:I

    .line 226
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindFlushFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushFrequency:J

    .line 227
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindStoreBatchSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindStoreBatchSize:I

    .line 228
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindTotalCriticalOverflowCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindTotalCriticalOverflowCount:I

    .line 229
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindCriticalOverflowCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindCriticalOverflowCount:I

    .line 230
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindErrorRetryCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindErrorRetryCount:I

    .line 231
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getWriteBehindBufferSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindBufferSize:I

    .line 233
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getKeyType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->keyType:Ljava/lang/String;

    .line 234
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->getValueType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->valueType:Ljava/lang/String;

    .line 235
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isStoreByValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isStoreByValue:Z

    .line 236
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isStatisticsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isStatisticsEnabled:Z

    .line 237
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isManagementEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isManagementEnabled:Z

    .line 238
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isReadThrough()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isReadThrough:Z

    .line 239
    invoke-interface {p1}, Lorg/apache/ignite/cache/CacheMetrics;->isWriteThrough()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isWriteThrough:Z

    .line 240
    return-void
.end method


# virtual methods
.method public getAverageGetTime()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->getAvgTimeNanos:F

    return v0
.end method

.method public getAveragePutTime()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->putAvgTimeNanos:F

    return v0
.end method

.method public getAverageRemoveTime()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removeAvgTimeNanos:F

    return v0
.end method

.method public getAverageTxCommitTime()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->commitAvgTimeNanos:F

    return v0
.end method

.method public getAverageTxRollbackTime()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->rollbackAvgTimeNanos:F

    return v0
.end method

.method public getCacheEvictions()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->evicts:J

    return-wide v0
.end method

.method public getCacheGets()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    return-wide v0
.end method

.method public getCacheHitPercentage()F
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 249
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->hits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->hits:J

    long-to-float v0, v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCacheHits()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->hits:J

    return-wide v0
.end method

.method public getCacheMissPercentage()F
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 262
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->misses:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->misses:J

    long-to-float v0, v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->reads:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCacheMisses()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->misses:J

    return-wide v0
.end method

.method public getCachePuts()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->puts:J

    return-wide v0
.end method

.method public getCacheRemovals()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->removes:J

    return-wide v0
.end method

.method public getCacheTxCommits()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommits:J

    return-wide v0
.end method

.method public getCacheTxRollbacks()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txRollbacks:J

    return-wide v0
.end method

.method public getDhtEvictQueueCurrentSize()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->dhtEvictQueueCurrentSize:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->keySize:I

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getOffHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->offHeapAllocatedSize:J

    return-wide v0
.end method

.method public getOffHeapEntriesCount()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->offHeapEntriesCount:J

    return-wide v0
.end method

.method public getOverflowSize()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->overflowSize:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->size:I

    return v0
.end method

.method public getTxCommitQueueSize()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommitQueueSize:I

    return v0
.end method

.method public getTxCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txCommittedVersionsSize:I

    return v0
.end method

.method public getTxDhtCommitQueueSize()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtCommitQueueSize:I

    return v0
.end method

.method public getTxDhtCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtCommittedVersionsSize:I

    return v0
.end method

.method public getTxDhtPrepareQueueSize()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtPrepareQueueSize:I

    return v0
.end method

.method public getTxDhtRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtRolledbackVersionsSize:I

    return v0
.end method

.method public getTxDhtStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtStartVersionCountsSize:I

    return v0
.end method

.method public getTxDhtThreadMapSize()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtThreadMapSize:I

    return v0
.end method

.method public getTxDhtXidMapSize()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txDhtXidMapSize:I

    return v0
.end method

.method public getTxPrepareQueueSize()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txPrepareQueueSize:I

    return v0
.end method

.method public getTxRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txRolledbackVersionsSize:I

    return v0
.end method

.method public getTxStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txStartVersionCountsSize:I

    return v0
.end method

.method public getTxThreadMapSize()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txThreadMapSize:I

    return v0
.end method

.method public getTxXidMapSize()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->txXidMapSize:I

    return v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->valueType:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteBehindBufferSize()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindBufferSize:I

    return v0
.end method

.method public getWriteBehindCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindCriticalOverflowCount:I

    return v0
.end method

.method public getWriteBehindErrorRetryCount()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindErrorRetryCount:I

    return v0
.end method

.method public getWriteBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushFrequency:J

    return-wide v0
.end method

.method public getWriteBehindFlushSize()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushSize:I

    return v0
.end method

.method public getWriteBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindFlushThreadCount:I

    return v0
.end method

.method public getWriteBehindStoreBatchSize()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindStoreBatchSize:I

    return v0
.end method

.method public getWriteBehindTotalCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->writeBehindTotalCriticalOverflowCount:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isEmpty:Z

    return v0
.end method

.method public isManagementEnabled()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isManagementEnabled:Z

    return v0
.end method

.method public isReadThrough()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isReadThrough:Z

    return v0
.end method

.method public isStatisticsEnabled()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isStatisticsEnabled:Z

    return v0
.end method

.method public isStoreByValue()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isStoreByValue:Z

    return v0
.end method

.method public isWriteBehindEnabled()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isWriteBehindEnabled:Z

    return v0
.end method

.method public isWriteThrough()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->isWriteThrough:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
