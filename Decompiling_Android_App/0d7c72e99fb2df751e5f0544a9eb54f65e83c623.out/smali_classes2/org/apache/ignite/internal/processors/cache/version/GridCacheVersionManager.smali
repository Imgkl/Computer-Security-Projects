.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "GridCacheVersionManager.java"


# static fields
.field public static final TOP_VER_BASE_TIME:J = 0x1434a3dca00L


# instance fields
.field private dataCenterId:B

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private gridStartTime:J

.field private volatile last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private final loadOrder:Ljava/util/concurrent/atomic/AtomicLong;

.field private final order:Ljava/util/concurrent/atomic/AtomicLong;

.field private txSerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->loadOrder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method private next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 13
    .param p1, "topVer"    # J
    .param p3, "addTime"    # Z
    .param p4, "forLoad"    # Z

    .prologue
    .line 232
    const-wide/16 v8, -0x1

    cmp-long v1, p1, v8

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide p1

    .line 235
    :cond_0
    if-eqz p3, :cond_2

    .line 236
    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->gridStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gridStartTime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->gridStartTime:J

    .line 239
    :cond_1
    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->gridStartTime:J

    const-wide v10, 0x1434a3dca00L

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr p1, v8

    .line 242
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->clockSync()Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->adjustedTime(J)J

    move-result-wide v2

    .line 244
    .local v2, "globalTime":J
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    long-to-int v6, v8

    .line 246
    .local v6, "locNodeOrder":I
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->txSerEnabled:Z

    if-eqz v1, :cond_4

    .line 247
    monitor-enter p0

    .line 248
    if-eqz p4, :cond_3

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->loadOrder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 250
    .local v4, "ord":J
    :goto_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    long-to-int v1, p1

    iget-byte v7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->dataCenterId:B

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    .line 257
    .local v0, "next":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 259
    monitor-exit p0

    .line 274
    :goto_1
    return-object v0

    .line 248
    .end local v0    # "next":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "ord":J
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 263
    :cond_4
    if-eqz p4, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->loadOrder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 265
    .restart local v4    # "ord":J
    :goto_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    long-to-int v1, p1

    iget-byte v7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->dataCenterId:B

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    .line 272
    .restart local v0    # "next":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_1

    .line 263
    .end local v0    # "next":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "ord":J
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    goto :goto_2
.end method

.method private uuid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dataCenterId(B)V
    .locals 8
    .param p1, "dataCenterId"    # B

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->dataCenterId:B

    .line 116
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move v6, v1

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 117
    return-void
.end method

.method public last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->txSerEnabled:Z

    if-eqz v0, :cond_0

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    monitor-exit p0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 180
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public next(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 3
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public nextForLoad()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public nextForLoad(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 3
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    const/4 v2, 0x1

    .line 198
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public nextForLoad(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(JZZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method protected onKernalStart0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 100
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;J)V

    goto :goto_0

    .line 101
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    return-void
.end method

.method public onReceived(Ljava/util/UUID;J)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ver"    # J

    .prologue
    const/16 v5, 0x5d

    .line 132
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 137
    .local v0, "order":J
    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated version from node [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 151
    .end local v0    # "order":J
    :cond_1
    :goto_0
    return-void

    .line 144
    .restart local v0    # "order":J
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not update version from node (version has lower order) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curOrder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 124
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;J)V

    .line 125
    return-void
.end method

.method public onReceivedAndNext(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 161
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public start0()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->txSerEnabled:Z

    .line 92
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->order:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-byte v7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->dataCenterId:B

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v3, 0xd

    new-array v1, v1, [I

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 95
    return-void
.end method

.method protected stop0(Z)V
    .locals 5
    .param p1, "cancel"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 106
    return-void
.end method
