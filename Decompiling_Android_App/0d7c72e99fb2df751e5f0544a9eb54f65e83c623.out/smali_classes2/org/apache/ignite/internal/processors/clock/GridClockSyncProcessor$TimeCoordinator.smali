.class Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridClockSyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeCoordinator"
.end annotation


# instance fields
.field private volatile lastSnapshot:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

.field private volatile pendingSnapshot:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

.field private verCnt:J


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 4
    .param p2, "evt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    .line 331
    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$400(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid-time-coordinator"

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$500(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 323
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->verCnt:J

    .line 333
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    invoke-virtual {p2}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;-><init>(JLjava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->lastSnapshot:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    .line 334
    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;Lorg/apache/ignite/internal/processors/clock/GridClockMessage;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .param p2, "x2"    # J

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->onMessage(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;J)V

    return-void
.end method

.method private onMessage(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;J)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .param p2, "rcvTs"    # J

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->pendingSnapshot:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    .line 405
    .local v0, "curr":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->originatingTimestamp()J

    move-result-wide v4

    add-long/2addr v4, p2

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTimestamp()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 408
    .local v2, "delta":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->onDeltaReceived(Ljava/util/UUID;J)Z

    move-result v1

    .line 410
    .local v1, "needMore":Z
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->requestTime(Ljava/util/UUID;)V

    .line 413
    .end local v1    # "needMore":Z
    .end local v2    # "delta":J
    :cond_0
    return-void
.end method

.method private onNodeLeft(Ljava/util/UUID;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->pendingSnapshot:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    .line 449
    .local v0, "curr":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->onNodeLeft(Ljava/util/UUID;)V

    .line 451
    :cond_0
    return-void
.end method

.method private requestTime(Ljava/util/UUID;)V
    .locals 11
    .param p1, "rmtNodeId"    # Ljava/util/UUID;

    .prologue
    .line 421
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$1000(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    .line 423
    .local v9, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v9, :cond_0

    .line 424
    const-string v2, "org.apache.ignite.time.host"

    invoke-interface {v9, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 425
    .local v0, "addr":Ljava/net/InetAddress;
    const-string v2, "org.apache.ignite.time.port"

    invoke-interface {v9, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 428
    .local v10, "port":I
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$1100(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->currentTime()J
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$1200(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;JJ)V

    .line 430
    .local v1, "req":Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->srv:Lorg/apache/ignite/internal/processors/clock/GridClockServer;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$1300(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/processors/clock/GridClockServer;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v10}, Lorg/apache/ignite/internal/processors/clock/GridClockServer;->sendPacket(Lorg/apache/ignite/internal/processors/clock/GridClockMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "req":Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .end local v10    # "port":I
    :goto_0
    return-void

    .line 432
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v10    # "port":I
    :catch_0
    move-exception v8

    .line 433
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send time request to remote node [rmtNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v8, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v10    # "port":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_0
.end method


# virtual methods
.method protected body()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 338
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 339
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->lastSnapshot:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    .line 341
    .local v3, "top":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating time sync snapshot for topology: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 344
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    new-instance v4, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->verCnt:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->verCnt:J

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyVersion()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;-><init>(JJ)V

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$600(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$700(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClockSyncSamples()I

    move-result v6

    invoke-direct {v2, v4, v5, v3, v6}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;I)V

    .line 350
    .local v2, "snapshot":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->pendingSnapshot:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    .line 352
    :goto_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->ready()Z

    move-result v4

    if-nez v4, :cond_4

    .line 353
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting time from remote nodes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingNodeIds()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 356
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->pendingNodeIds()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 357
    .local v1, "nodeId":Ljava/util/UUID;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->requestTime(Ljava/util/UUID;)V

    goto :goto_2

    .line 359
    .end local v1    # "nodeId":Ljava/util/UUID;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for snapshot to be ready: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 363
    :cond_3
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->awaitReady(J)V

    goto :goto_1

    .line 367
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->pendingSnapshot:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    .line 369
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 370
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collected time sync results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;->deltas()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 372
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->publish(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;)V
    invoke-static {v4, v2, v3}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$800(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;)V

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyVersion()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->lastSnapshot:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topologyVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 376
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$900(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClockSyncFrequency()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 377
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 379
    .end local v2    # "snapshot":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
    .end local v3    # "top":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;
    :cond_7
    return-void
.end method

.method public onDiscoveryEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing discovery event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 389
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->onNodeLeft(Ljava/util/UUID;)V

    .line 391
    :cond_2
    monitor-enter p0

    .line 392
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;-><init>(JLjava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->lastSnapshot:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
