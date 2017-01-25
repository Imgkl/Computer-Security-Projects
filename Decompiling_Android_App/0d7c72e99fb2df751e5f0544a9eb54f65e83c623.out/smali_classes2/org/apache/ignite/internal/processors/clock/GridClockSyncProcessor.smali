.class public Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridClockSyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
    }
.end annotation


# static fields
.field private static final MAX_TIME_SYNC_HISTORY:I = 0x64


# instance fields
.field private clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

.field private rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

.field private volatile stopping:Z

.field private volatile timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

.field private timeSyncHist:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 61
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHist:Ljava/util/NavigableMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHist:Ljava/util/NavigableMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->currentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/processors/clock/GridClockServer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    .param p2, "x2"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->publish(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 10
    .param p1, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 209
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 212
    :try_start_0
    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    .line 247
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 249
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    if-nez v7, :cond_5

    .line 216
    const-wide v2, 0x7fffffffffffffffL

    .line 218
    .local v2, "minNodeOrder":J
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyNodes()Ljava/util/Collection;

    move-result-object v5

    .line 220
    .local v5, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 221
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-gez v7, :cond_1

    .line 222
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    goto :goto_1

    .line 225
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 227
    .local v1, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_5

    .line 228
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 229
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Detected local node to be the eldest node in topology, starting time coordinator thread [discoEvt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locNode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 232
    :cond_3
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->stopping:Z

    if-nez v7, :cond_4

    .line 234
    new-instance v7, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    invoke-direct {v7, p0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/events/DiscoveryEvent;)V

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    .line 236
    new-instance v6, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    invoke-direct {v6, v7}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 238
    .local v6, "th":Lorg/apache/ignite/thread/IgniteThread;
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lorg/apache/ignite/thread/IgniteThread;->setPriority(I)V

    .line 240
    invoke-virtual {v6}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 242
    .end local v6    # "th":Lorg/apache/ignite/thread/IgniteThread;
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "minNodeOrder":J
    .end local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 242
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v2    # "minNodeOrder":J
    .restart local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "minNodeOrder":J
    .end local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v7
.end method

.method private currentTime()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSource;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private publish(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;)V
    .locals 7
    .param p1, "snapshot"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    .param p2, "top"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    .prologue
    .line 284
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryReadLock()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHist:Ljava/util/NavigableMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->version()Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 291
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v2, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->version()Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .local v2, "msg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TIME_SYNC:Lorg/apache/ignite/internal/GridTopic;

    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v4, v3, v5, v2, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send time sync snapshot to remote node (did not leave grid?) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 308
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v4

    .line 301
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "msg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
    .restart local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send time sync snapshot to remote node (did not leave grid?) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 308
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "msg":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0
.end method


# virtual methods
.method public adjustedTime(J)J
    .locals 13
    .param p1, "topVer"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 259
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHistory()Ljava/util/NavigableMap;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    const-wide/16 v8, 0x1

    add-long/2addr v8, p1

    invoke-direct {v6, v10, v11, v8, v9}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;-><init>(JJ)V

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 262
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;>;"
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 264
    .local v4, "snap":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/clock/GridClockSource;->currentTimeMillis()J

    move-result-wide v2

    .line 266
    .local v2, "now":J
    if-nez v4, :cond_1

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 274
    :goto_1
    return-wide v6

    .line 262
    .end local v2    # "now":J
    .end local v4    # "snap":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    move-object v4, v5

    goto :goto_0

    .line 269
    .restart local v2    # "now":J
    .restart local v4    # "snap":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 271
    .local v0, "delta":Ljava/lang/Long;
    if-nez v0, :cond_2

    .line 272
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 274
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    goto :goto_1
.end method

.method public onKernalStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->onKernalStart()V

    .line 121
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->afterStart()V

    .line 124
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localJoinEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v0

    .line 126
    .local v0, "locJoinEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 127
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 131
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->onKernalStop(Z)V

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 136
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->stopping:Z

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->cancel()V

    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->beforeStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v0
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->currentTime()J

    move-result-wide v2

    .line 188
    .local v2, "rcvTs":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->originatingNodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTimestamp(J)V

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sendPacket(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send time server reply to remote node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    # invokes: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->onMessage(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;J)V
    invoke-static {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->access$300(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;Lorg/apache/ignite/internal/processors/clock/GridClockMessage;J)V

    goto :goto_0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->start()V

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeSource()Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    .line 80
    new-instance v0, Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->start(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TIME_SYNC:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)V

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-string v1, "org.apache.ignite.time.host"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->host()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-string v1, "org.apache.ignite.time.port"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->port()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void

    .line 97
    :array_0
    .array-data 4
        0xc
        0xa
    .end array-data
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->stop(Z)V

    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->stop()V

    .line 160
    :cond_0
    return-void
.end method

.method public timeSyncHistory()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHist:Ljava/util/NavigableMap;

    return-object v0
.end method
