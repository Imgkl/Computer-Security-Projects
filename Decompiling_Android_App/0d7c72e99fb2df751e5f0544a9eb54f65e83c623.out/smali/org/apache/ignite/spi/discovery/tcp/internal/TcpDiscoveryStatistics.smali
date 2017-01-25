.class public Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;
.super Ljava/lang/Object;
.source "TcpDiscoveryStatistics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ackTimeoutsCnt:I

.field private avgClientSockInitTime:J

.field private avgMsgProcTime:J

.field private avgMsgQueueTime:J

.field private final avgMsgsSndTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private avgRingMsgTime:J

.field private avgSrvSockInitTime:J

.field private clientSockCreatedCnt:I

.field private final crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

.field private failedNodesCnt:I

.field private joinFinishedTs:J

.field private joinStartedTs:J

.field private joinedNodesCnt:I

.field private leftNodesCnt:I

.field private maxClientSockInitTime:J

.field private maxMsgProcTime:J

.field private maxMsgQueueTime:J

.field private final maxMsgsSndTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private maxProcTimeMsgCls:Ljava/lang/String;

.field private maxRingMsgTime:J

.field private maxRingTimeMsgCls:Ljava/lang/String;

.field private maxSrvSockInitTime:J

.field private final msgsProcStartTs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final msgsRcvTs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pendingMsgsDiscarded:I

.field private pendingMsgsRegistered:I

.field private final procMsgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final rcvdMsgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ringMsgsSent:I

.field private final ringMsgsSndTs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sentMsgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sockReadersCreated:I

.field private sockReadersRmv:I

.field private sockTimeoutsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->rcvdMsgs:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->procMsgs:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgsSndTimes:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgsSndTimes:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sentMsgs:Ljava/util/Map;

    .line 80
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsRcvTs:Ljava/util/Map;

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsProcStartTs:Ljava/util/Map;

    .line 86
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSndTs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized ackTimeoutsCount()I
    .locals 1

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ackTimeoutsCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized avgMessageProcessingTime()J
    .locals 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgProcTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized avgMessagesSendTimes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgsSndTimes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 610
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ackTimeoutsCnt:I

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgClientSockInitTime:J

    .line 612
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgProcTime:J

    .line 613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgQueueTime:J

    .line 614
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgsSndTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgRingMsgTime:J

    .line 616
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgSrvSockInitTime:J

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clientSockCreatedCnt:I

    .line 618
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCnt:I

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCnt:I

    .line 621
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinFinishedTs:J

    .line 622
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinStartedTs:J

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCnt:I

    .line 624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxClientSockInitTime:J

    .line 625
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgProcTime:J

    .line 626
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgQueueTime:J

    .line 627
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgsSndTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxProcTimeMsgCls:Ljava/lang/String;

    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingMsgTime:J

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingTimeMsgCls:Ljava/lang/String;

    .line 631
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxSrvSockInitTime:J

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsDiscarded:I

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsRegistered:I

    .line 634
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->procMsgs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 635
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->rcvdMsgs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    .line 637
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sentMsgs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersRmv:I

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockTimeoutsCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public coordinatorSinceTimestamp()J
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized failedNodesCount()I
    .locals 1

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized joinFinished()J
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinFinishedTs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized joinStarted()J
    .locals 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinStartedTs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized joinedNodesCount()I
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized leftNodesCount()I
    .locals 1

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxMessageProcessingTime()J
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgProcTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxMessagesSendTimes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgsSndTimes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxProcessingTimeMessageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxProcTimeMsgCls:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxRingDurationMessageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingTimeMsgCls:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxRingMessageTime()J
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingMsgTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAckTimeout()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ackTimeoutsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ackTimeoutsCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBecomingCoordinator()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 182
    return-void
.end method

.method public declared-synchronized onClientSocketInitialized(J)V
    .locals 5
    .param p1, "initTime"    # J

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 412
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clientSockCreatedCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clientSockCreatedCnt:I

    .line 414
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxClientSockInitTime:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 415
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxClientSockInitTime:J

    .line 417
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgClientSockInitTime:J

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clientSockCreatedCnt:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clientSockCreatedCnt:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgClientSockInitTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onJoinFinished()V
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinFinishedTs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onJoinStarted()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinStartedTs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMessageProcessingFinished(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 273
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsProcStartTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 275
    .local v2, "startTs":Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 276
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 278
    .local v0, "duration":J
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgProcTime:J

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalProcessedMessages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalProcessedMessages()I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgProcTime:J

    .line 280
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgProcTime:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 281
    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgProcTime:J

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxProcTimeMsgCls:Ljava/lang/String;

    .line 286
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsProcStartTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v0    # "duration":J
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onMessageProcessingStarted(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 241
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->procMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$2;

    invoke-direct {v6, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$2;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 247
    .local v0, "cnt":Ljava/lang/Integer;
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 249
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->procMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsRcvTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 253
    .local v1, "rcvdTs":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 254
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 256
    .local v2, "duration":J
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgQueueTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 257
    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgQueueTime:J

    .line 259
    :cond_2
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgQueueTime:J

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalReceivedMessages()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalProcessedMessages()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgQueueTime:J

    .line 262
    .end local v2    # "duration":J
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsProcStartTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 6
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 220
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->rcvdMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 226
    .local v0, "cnt":Ljava/lang/Integer;
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->rcvdMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->msgsRcvTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onMessageSent(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;J)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p2, "time"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 297
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 298
    :cond_0
    :try_start_1
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    cmp-long v3, p2, v6

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, p2, p3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v3

    .line 300
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->crdSinceTs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    instance-of v3, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    if-nez v3, :cond_3

    :cond_2
    instance-of v3, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    if-nez v3, :cond_3

    instance-of v3, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    if-eqz v3, :cond_4

    .line 304
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSndTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    .line 309
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sentMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$3;

    invoke-direct {v5, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$3;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 315
    .local v1, "cnt":Ljava/lang/Integer;
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez v1, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 317
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sentMsgs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgsSndTimes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$4;

    invoke-direct {v5, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$4;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 325
    .local v0, "avgTime":Ljava/lang/Long;
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 327
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    add-long/2addr v4, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 329
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMsgsSndTimes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgsSndTimes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$5;

    invoke-direct {v5, p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$5;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 337
    .local v2, "maxTime":Ljava/lang/Long;
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 339
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, p2, v4

    if-lez v3, :cond_8

    .line 340
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMsgsSndTimes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_8
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onNodeFailed()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNodeJoined()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNodeLeft()V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPendingMessageDiscarded()V
    .locals 1

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsDiscarded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsDiscarded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPendingMessageRegistered()V
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsRegistered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsRegistered:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 351
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSndTs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 353
    .local v2, "sentTs":Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 354
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 356
    .local v0, "duration":J
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingMsgTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 357
    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingMsgTime:J

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxRingTimeMsgCls:Ljava/lang/String;

    .line 362
    :cond_1
    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    if-eqz v3, :cond_2

    .line 363
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgRingMsgTime:J

    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    iget v3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->ringMsgsSent:I

    int-to-long v6, v3

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgRingMsgTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .end local v0    # "duration":J
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onServerSocketInitialized(J)V
    .locals 5
    .param p1, "initTime"    # J

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 400
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxSrvSockInitTime:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 401
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxSrvSockInitTime:J

    .line 403
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgSrvSockInitTime:J

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgSrvSockInitTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSocketReaderCreated()V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSocketReaderRemoved()V
    .locals 1

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersRmv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersRmv:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSocketTimeout()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockTimeoutsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockTimeoutsCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pendingMessagesDiscarded()J
    .locals 2

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsDiscarded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pendingMessagesRegistered()J
    .locals 2

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMsgsRegistered:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processedMessages()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->procMsgs:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized receivedMessages()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->rcvdMsgs:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socketReadersCreated()I
    .locals 1

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersCreated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socketReadersRemoved()I
    .locals 1

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockReadersRmv:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socketTimeoutsCount()I
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->sockTimeoutsCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized totalProcessedMessages()I
    .locals 1

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->processedMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->sumInt(Ljava/lang/Iterable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized totalReceivedMessages()I
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->receivedMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->sumInt(Ljava/lang/Iterable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
