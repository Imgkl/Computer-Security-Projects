.class public interface abstract Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
.super Ljava/lang/Object;
.source "CacheMetricsMXBean.java"

# interfaces
.implements Ljavax/cache/management/CacheStatisticsMXBean;
.implements Ljavax/cache/management/CacheMXBean;
.implements Lorg/apache/ignite/cache/CacheMetrics;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to cache descriptor."
.end annotation


# virtual methods
.method public abstract clear()V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Clear statistics."
    .end annotation
.end method

.method public abstract getAverageGetTime()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time to execute get."
    .end annotation
.end method

.method public abstract getAveragePutTime()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time to execute put."
    .end annotation
.end method

.method public abstract getAverageRemoveTime()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time to execute remove."
    .end annotation
.end method

.method public abstract getAverageTxCommitTime()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time to commit transaction."
    .end annotation
.end method

.method public abstract getAverageTxRollbackTime()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time to rollback transaction."
    .end annotation
.end method

.method public abstract getCacheEvictions()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of eviction entries."
    .end annotation
.end method

.method public abstract getCacheGets()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of gets."
    .end annotation
.end method

.method public abstract getCacheHitPercentage()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Percentage of successful hits."
    .end annotation
.end method

.method public abstract getCacheHits()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of hits."
    .end annotation
.end method

.method public abstract getCacheMissPercentage()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Percentage of accesses that failed to find anything."
    .end annotation
.end method

.method public abstract getCacheMisses()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of misses."
    .end annotation
.end method

.method public abstract getCachePuts()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of puts."
    .end annotation
.end method

.method public abstract getCacheRemovals()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of removals."
    .end annotation
.end method

.method public abstract getCacheTxCommits()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of transaction commits."
    .end annotation
.end method

.method public abstract getCacheTxRollbacks()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of transaction rollback."
    .end annotation
.end method

.method public abstract getDhtEvictQueueCurrentSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current size of evict queue."
    .end annotation
.end method

.method public abstract getKeySize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of keys in the cache (possibly with null values)."
    .end annotation
.end method

.method public abstract getKeyType()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Key type."
    .end annotation
.end method

.method public abstract getOffHeapAllocatedSize()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Memory size allocated in off-heap."
    .end annotation
.end method

.method public abstract getOffHeapEntriesCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of entries stored in off-heap memory."
    .end annotation
.end method

.method public abstract getOverflowSize()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of entries that was swapped to disk."
    .end annotation
.end method

.method public abstract getSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of non-null values in the cache."
    .end annotation
.end method

.method public abstract getTxCommitQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction committed queue size."
    .end annotation
.end method

.method public abstract getTxCommittedVersionsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction committed ID map size."
    .end annotation
.end method

.method public abstract getTxDhtCommitQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT committed queue size."
    .end annotation
.end method

.method public abstract getTxDhtCommittedVersionsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT committed ID map size."
    .end annotation
.end method

.method public abstract getTxDhtPrepareQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT prepared queue size."
    .end annotation
.end method

.method public abstract getTxDhtRolledbackVersionsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT rolled back ID map size."
    .end annotation
.end method

.method public abstract getTxDhtStartVersionCountsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT start version counts map size."
    .end annotation
.end method

.method public abstract getTxDhtThreadMapSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT per-thread map size."
    .end annotation
.end method

.method public abstract getTxDhtXidMapSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction DHT per-Xid map size."
    .end annotation
.end method

.method public abstract getTxPrepareQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction prepared queue size."
    .end annotation
.end method

.method public abstract getTxRolledbackVersionsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction rolled back ID map size."
    .end annotation
.end method

.method public abstract getTxStartVersionCountsSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction start version counts map size."
    .end annotation
.end method

.method public abstract getTxThreadMapSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction per-thread map size."
    .end annotation
.end method

.method public abstract getTxXidMapSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Transaction per-Xid map size."
    .end annotation
.end method

.method public abstract getValueType()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Value type."
    .end annotation
.end method

.method public abstract getWriteBehindBufferSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of cache entries that are waiting to be flushed."
    .end annotation
.end method

.method public abstract getWriteBehindCriticalOverflowCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of cache overflow events since write-behind cache has started."
    .end annotation
.end method

.method public abstract getWriteBehindErrorRetryCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of cache cache entries that are currently in retry state."
    .end annotation
.end method

.method public abstract getWriteBehindFlushFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flush frequency interval in milliseconds."
    .end annotation
.end method

.method public abstract getWriteBehindFlushSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Size of internal buffer that triggers flush procedure."
    .end annotation
.end method

.method public abstract getWriteBehindFlushThreadCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of flush threads."
    .end annotation
.end method

.method public abstract getWriteBehindStoreBatchSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum size of batch for similar operations."
    .end annotation
.end method

.method public abstract getWriteBehindTotalCriticalOverflowCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of cache overflow events since write-behind cache has started."
    .end annotation
.end method

.method public abstract isEmpty()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if cache is empty."
    .end annotation
.end method

.method public abstract isManagementEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if management is enabled."
    .end annotation
.end method

.method public abstract isReadThrough()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True when a cache is in read-through mode."
    .end annotation
.end method

.method public abstract isStatisticsEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if statistics collection is enabled."
    .end annotation
.end method

.method public abstract isStoreByValue()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if the cache is store by value."
    .end annotation
.end method

.method public abstract isWriteBehindEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True if write-behind is enabled for this cache."
    .end annotation
.end method

.method public abstract isWriteThrough()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "True when a cache is in write-through mode."
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Cache name."
    .end annotation
.end method
