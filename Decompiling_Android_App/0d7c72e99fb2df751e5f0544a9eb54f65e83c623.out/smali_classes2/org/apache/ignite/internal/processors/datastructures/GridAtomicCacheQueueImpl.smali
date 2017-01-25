.class public Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;
.super Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.source "GridAtomicCacheQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final RETRY_TIMEOUT:J = 0xbb8L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;
    .param p2, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    .local p3, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 42
    return-void
.end method

.method private transformHeader(Ljavax/cache/processor/EntryProcessor;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
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
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    .local p1, "c":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 242
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v3

    invoke-interface {v3}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    .line 246
    throw v2

    .line 248
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update queue header, will retry [err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 250
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    move v1, v0

    .line 252
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-wide/16 v10, 0x1

    .line 142
    const-string v7, "items"

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_0
    new-instance v7, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;I)V

    invoke-direct {p0, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->transformHeader(Ljavax/cache/processor/EntryProcessor;)Ljava/lang/Long;

    move-result-object v4

    .line 147
    .local v4, "idx":Ljava/lang/Long;
    if-nez v4, :cond_0

    .line 148
    const/4 v7, 0x0

    .line 179
    :goto_0
    return v7

    .line 150
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 152
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v6, "putMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 158
    goto :goto_1

    .line 160
    .end local v5    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 164
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_2
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    const/4 v7, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_2

    .line 170
    :try_start_2
    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idx":Ljava/lang/Long;
    .end local v6    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;TT;>;"
    :catch_1
    move-exception v2

    .line 182
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 172
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "idx":Ljava/lang/Long;
    .restart local v6    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;TT;>;"
    :cond_2
    :try_start_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add items, will retry [err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 174
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    move v1, v0

    .line 176
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_2
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    :try_start_0
    new-instance v7, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;I)V

    invoke-direct {p0, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->transformHeader(Ljavax/cache/processor/EntryProcessor;)Ljava/lang/Long;

    move-result-object v3

    .line 50
    .local v3, "idx":Ljava/lang/Long;
    if-nez v3, :cond_0

    .line 76
    :goto_0
    return v5

    .line 53
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "cnt":I
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    move v1, v0

    .line 61
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v5, v4, p1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    .line 76
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v5, 0x64

    if-ne v1, v5, :cond_1

    .line 67
    :try_start_2
    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v3    # "idx":Ljava/lang/Long;
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v5

    throw v5

    .line 69
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v3    # "idx":Ljava/lang/Long;
    .restart local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to put queue item, will retry [err="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 71
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    move v1, v0

    .line 73
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_1
.end method

.method public poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    const/4 v8, 0x0

    .line 88
    :goto_0
    :try_start_0
    new-instance v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v9, v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->transformHeader(Ljavax/cache/processor/EntryProcessor;)Ljava/lang/Long;

    move-result-object v4

    .line 90
    .local v4, "idx":Ljava/lang/Long;
    if-nez v4, :cond_1

    move-object v2, v8

    .line 115
    :cond_0
    :goto_1
    return-object v2

    .line 93
    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 95
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 97
    .local v5, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    const/4 v0, 0x0

    .line 99
    .local v0, "cnt":I
    const-wide/16 v6, 0x0

    .local v6, "stop":J
    move v1, v0

    .line 103
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_2
    :try_start_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "data":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 108
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 109
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    add-long v6, v10, v12

    .line 111
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-gez v9, :cond_4

    .line 112
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    goto :goto_1

    .line 120
    .end local v2    # "data":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v9, 0x64

    if-ne v1, v9, :cond_3

    .line 122
    :try_start_2
    throw v3
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    .end local v0    # "cnt":I
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v4    # "idx":Ljava/lang/Long;
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .end local v6    # "stop":J
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v8

    throw v8

    .line 124
    .restart local v0    # "cnt":I
    .local v3, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v4    # "idx":Ljava/lang/Long;
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .restart local v6    # "stop":J
    :cond_3
    :try_start_3
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to remove queue item, will retry [err="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 126
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    move v1, v0

    .line 128
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_2

    .line 131
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v2    # "data":Ljava/lang/Object;, "TT;"
    :cond_4
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get item, will retry poll [queue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->queueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", idx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected removeItem(J)V
    .locals 13
    .param p1, "rmvIdx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl<TT;>;"
    const/16 v12, 0x5d

    .line 189
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Long;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v5

    invoke-interface {v5}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 191
    .local v3, "idx":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 194
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v4

    .line 196
    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    const/4 v0, 0x0

    .line 198
    .local v0, "cnt":I
    const-wide/16 v6, 0x0

    .local v6, "stop":J
    move v1, v0

    .line 202
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    .end local v1    # "cnt":I
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .end local v6    # "stop":J
    :cond_0
    :goto_1
    return-void

    .line 205
    .restart local v1    # "cnt":I
    .restart local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .restart local v6    # "stop":J
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 206
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xbb8

    add-long v6, v8, v10

    .line 208
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_4

    .line 209
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v5, 0x64

    if-ne v1, v5, :cond_3

    .line 217
    throw v2

    .line 219
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add items, will retry [err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 221
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    move v1, v0

    .line 223
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0

    .line 226
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to remove item, [queue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;->queueName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_1
.end method
