.class public Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheTtlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$1;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;
    }
.end annotation


# instance fields
.field private cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

.field private final mux:Ljava/lang/Object;

.field private final pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 71
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$1;)V

    .line 73
    .local v0, "wrapper":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 79
    monitor-exit v2

    .line 81
    :cond_0
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onKernalStart0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    invoke-direct {v0, v1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v0}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 63
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> TTL processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   pendingEntriesSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public removeTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->pendingEntries:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$EntryWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method protected start0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->cleanupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager$CleanupWorker;

    goto :goto_0
.end method
