.class public interface abstract Lorg/apache/ignite/cache/CacheMetrics;
.super Ljava/lang/Object;
.source "CacheMetrics.java"


# virtual methods
.method public abstract getAverageGetTime()F
.end method

.method public abstract getAveragePutTime()F
.end method

.method public abstract getAverageRemoveTime()F
.end method

.method public abstract getAverageTxCommitTime()F
.end method

.method public abstract getAverageTxRollbackTime()F
.end method

.method public abstract getCacheEvictions()J
.end method

.method public abstract getCacheGets()J
.end method

.method public abstract getCacheHitPercentage()F
.end method

.method public abstract getCacheHits()J
.end method

.method public abstract getCacheMissPercentage()F
.end method

.method public abstract getCacheMisses()J
.end method

.method public abstract getCachePuts()J
.end method

.method public abstract getCacheRemovals()J
.end method

.method public abstract getCacheTxCommits()J
.end method

.method public abstract getCacheTxRollbacks()J
.end method

.method public abstract getDhtEvictQueueCurrentSize()I
.end method

.method public abstract getKeySize()I
.end method

.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public abstract getOffHeapAllocatedSize()J
.end method

.method public abstract getOffHeapEntriesCount()J
.end method

.method public abstract getOverflowSize()J
.end method

.method public abstract getSize()I
.end method

.method public abstract getTxCommitQueueSize()I
.end method

.method public abstract getTxCommittedVersionsSize()I
.end method

.method public abstract getTxDhtCommitQueueSize()I
.end method

.method public abstract getTxDhtCommittedVersionsSize()I
.end method

.method public abstract getTxDhtPrepareQueueSize()I
.end method

.method public abstract getTxDhtRolledbackVersionsSize()I
.end method

.method public abstract getTxDhtStartVersionCountsSize()I
.end method

.method public abstract getTxDhtThreadMapSize()I
.end method

.method public abstract getTxDhtXidMapSize()I
.end method

.method public abstract getTxPrepareQueueSize()I
.end method

.method public abstract getTxRolledbackVersionsSize()I
.end method

.method public abstract getTxStartVersionCountsSize()I
.end method

.method public abstract getTxThreadMapSize()I
.end method

.method public abstract getTxXidMapSize()I
.end method

.method public abstract getValueType()Ljava/lang/String;
.end method

.method public abstract getWriteBehindBufferSize()I
.end method

.method public abstract getWriteBehindCriticalOverflowCount()I
.end method

.method public abstract getWriteBehindErrorRetryCount()I
.end method

.method public abstract getWriteBehindFlushFrequency()J
.end method

.method public abstract getWriteBehindFlushSize()I
.end method

.method public abstract getWriteBehindFlushThreadCount()I
.end method

.method public abstract getWriteBehindStoreBatchSize()I
.end method

.method public abstract getWriteBehindTotalCriticalOverflowCount()I
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isManagementEnabled()Z
.end method

.method public abstract isReadThrough()Z
.end method

.method public abstract isStatisticsEnabled()Z
.end method

.method public abstract isStoreByValue()Z
.end method

.method public abstract isWriteBehindEnabled()Z
.end method

.method public abstract isWriteThrough()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method
