.class Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridCacheTtlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanupWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)V
    .locals 4

    .prologue
    .line 106
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    .line 107
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ttl-cleanup-worker-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const-class v3, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 112
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 113
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    .local v2, "now":J
    const/4 v4, 0x0

    .line 117
    .local v4, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .line 120
    .local v5, "wrapper":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gtz v8, :cond_4

    .line 121
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to remove expired entry from cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 124
    :cond_0
    if-nez v4, :cond_1

    .line 125
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 127
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onTtlExpired(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 130
    :cond_2
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 131
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onEvict()V

    .line 133
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 139
    .end local v5    # "wrapper":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 145
    :goto_2
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    .line 147
    .local v0, "first":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    if-eqz v0, :cond_5

    .line 148
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->expireTime:J
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;)J

    move-result-wide v10

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 150
    .local v6, "waitTime":J
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-lez v8, :cond_6

    .line 151
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 158
    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    .end local v6    # "waitTime":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 156
    .restart local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 158
    .restart local v6    # "waitTime":J
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 160
    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;>;"
    .end local v2    # "now":J
    .end local v4    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v6    # "waitTime":J
    :cond_7
    return-void
.end method
