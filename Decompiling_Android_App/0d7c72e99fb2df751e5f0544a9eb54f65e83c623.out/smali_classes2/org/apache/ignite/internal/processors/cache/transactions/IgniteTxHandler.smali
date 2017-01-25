.class public Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
.super Ljava/lang/Object;
.source "IgniteTxHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 67
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    .line 69
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 75
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$3;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 87
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$4;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$4;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$6;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$6;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 105
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$7;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$7;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 111
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$8;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$8;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 117
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$9;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$9;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$10;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$10;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processNearTxPrepareResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processNearTxFinishResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processDhtTxPrepareResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processDhtTxFinishResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private finishDhtLocal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 34
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "locTx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v29

    .line 488
    .local v29, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/16 v32, 0x0

    .line 490
    .local v32, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    if-nez v29, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received transaction finish request for unknown near version (was lock explicit?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    if-nez v32, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->explicitLock()Z

    move-result v3

    if-nez v3, :cond_5

    .line 498
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHT local tx should never be lost for near local tx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 495
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v32

    .end local v32    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    check-cast v32, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    .restart local v32    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    goto :goto_0

    .line 500
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received finish request for completed transaction (the message may be too late and transaction could have been DGCed by now) [commit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->commit()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", xid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 505
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->threadId()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    const-string v9, "Transaction has been already completed."

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V

    .line 509
    .local v2, "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_3
    :goto_1
    const/16 v31, 0x0

    .line 611
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :goto_2
    return-object v31

    .line 511
    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :catch_0
    move-exception v30

    .line 513
    .local v30, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node left while sending finish response [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send finish response to node [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 527
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .end local v30    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->commit()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 528
    if-nez v32, :cond_8

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    const/16 v33, 0x0

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->threadId()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->system()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v17, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    const-wide/16 v18, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->isInvalidate()Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled()Z

    move-result v21

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->txSize()I

    move-result v22

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->subjectId()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->taskNameHash()I

    move-result v27

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/Map;Ljava/util/UUID;I)V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    move-object/from16 v32, v0

    .line 554
    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 555
    :cond_6
    new-instance v3, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to start a completed transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 599
    :catch_1
    move-exception v30

    .line 600
    .restart local v30    # "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed completing transaction [commit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->commit()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 602
    if-eqz v32, :cond_e

    .line 603
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v31

    .line 606
    .local v31, "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->errorLogger(Lorg/apache/ignite/IgniteLogger;[Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_2

    .line 557
    .end local v30    # "e":Ljava/lang/Throwable;
    .end local v31    # "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_7
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 560
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->storeEnabled()Z

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->storeEnabled(Z)V

    .line 562
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will not finish transaction (it is handled by another thread): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 566
    :cond_9
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 569
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->syncCommit()Z

    move-result v3

    if-nez v3, :cond_b

    .line 570
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->syncCommit()Z

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->syncCommit(Z)V

    .line 572
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->nearFinishFutureId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->nearFinishMiniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 575
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v28

    .line 578
    .local v28, "commitFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->errorLogger(Lorg/apache/ignite/IgniteLogger;[Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    move-object/from16 v31, v28

    .line 580
    goto/16 :goto_2

    .line 583
    .end local v28    # "commitFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_c
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_d

    if-nez v32, :cond_d

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction is null for near rollback request [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 586
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->syncRollback()Z

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->syncRollback(Z)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->nearFinishFutureId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->nearFinishMiniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 591
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v31

    .line 594
    .restart local v31    # "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->errorLogger(Lorg/apache/ignite/IgniteLogger;[Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 611
    .end local v31    # "rollbackFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .restart local v30    # "e":Ljava/lang/Throwable;
    :cond_e
    new-instance v31, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private invalidateNearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 3
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    .line 1011
    .local v0, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    :goto_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1013
    .local v1, "nearEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v1, :cond_0

    .line 1014
    const/4 v2, 0x0

    invoke-interface {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1015
    :cond_0
    return-void

    .line 1009
    .end local v0    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .end local v1    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private prepareColocatedTx(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "locTx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "completeCb":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 178
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)V

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$12;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$12;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    return-object v1
.end method

.method private prepareNearTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 32
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, "completeCb":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v30

    .line 230
    .local v30, "nearNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v30, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received transaction request from node that left grid (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 234
    :cond_0
    const/16 v27, 0x0

    .line 346
    :goto_0
    return-object v27

    .line 238
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->reads()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 239
    .local v26, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    .end local v26    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v28    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v26

    .line 242
    .local v26, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v27, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    .end local v26    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v29

    .line 249
    .local v29, "mappedVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v29, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    .line 252
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    if-nez v2, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing local transaction for mapped near version [nearVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mappedVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 294
    :cond_3
    :goto_2
    if-eqz v2, :cond_c

    .line 295
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->transactionNodes(Ljava/util/Map;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->onePhaseCommit()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 298
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->last()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 256
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-ne v3, v4, :cond_3

    .line 257
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->nearFutureId(Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_2

    .line 261
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    :cond_5
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-interface/range {v30 .. v30}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->threadId()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->implicitSingle()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->implicitSingle()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->system()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->timeout()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->isInvalidate()Z

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->txSize()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->partitionLock()Z

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->subjectId()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->taskNameHash()I

    move-result v25

    invoke-direct/range {v2 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/Map;Ljava/util/UUID;I)V

    .line 285
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v2

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    .line 287
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    if-eqz v2, :cond_6

    .line 288
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    goto/16 :goto_2

    .line 290
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create local transaction (was transaction rolled back?) [xid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 299
    :cond_7
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->lastBackups()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->lastBackups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 301
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->onePhaseCommit(Z)V

    .line 304
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->returnValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->needReturnValue(Z)V

    .line 307
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->reads()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->dhtVersions()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->messageId()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->last()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->lastBackups()Ljava/util/Collection;

    move-result-object v11

    move-object/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->prepareAsync(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Map;JLorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;ZLjava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v27

    .line 318
    .local v27, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->isRollbackOnly()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 320
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->rollback()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_b
    :goto_3
    move-object/from16 v31, v2

    .line 329
    .local v31, "tx0":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 322
    .end local v31    # "tx0":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    :catch_1
    move-exception v26

    .line 323
    .restart local v26    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rollback transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 346
    .end local v26    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v27    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_c
    new-instance v27, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v3, 0x0

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private processDhtTxFinishResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    .prologue
    .line 409
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 410
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;->xid()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    .line 415
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;
    if-nez v0, :cond_3

    .line 416
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response for unknown future (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 423
    :cond_2
    :goto_0
    return-void

    .line 422
    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V

    goto :goto_0
.end method

.method private processDhtTxPrepareResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    .prologue
    .line 391
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .line 394
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    if-nez v0, :cond_1

    .line 395
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response for unknown future (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V

    goto :goto_0
.end method

.method private processNearTxFinishResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    .prologue
    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->threadId()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onFinishedRemote(Ljava/util/UUID;J)V

    .line 373
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->xid()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .line 376
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    if-nez v0, :cond_1

    .line 377
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find future for finish response [sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V

    goto :goto_0
.end method

.method private processNearTxPrepareResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 354
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    .line 357
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    if-nez v0, :cond_0

    .line 358
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find future for prepare response [sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    goto :goto_0
.end method


# virtual methods
.method public finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "locTx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 441
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 442
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 445
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped()Z

    move-result v3

    if-nez v3, :cond_2

    .line 446
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2, p2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 475
    :goto_0
    return-object v2

    .line 448
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing near tx finish request [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 451
    :cond_3
    const/4 v0, 0x0

    .line 453
    .local v0, "colocatedFinishFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->commit()Z

    move-result v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finishColocatedLocal(ZLorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 456
    :cond_4
    const/4 v1, 0x0

    .line 458
    .local v1, "nearFinishFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 459
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finishDhtLocal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 461
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 462
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 464
    .local v2, "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 465
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 467
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    goto :goto_0

    .line 472
    .end local v2    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_7
    if-eqz v0, :cond_8

    move-object v2, v0

    .line 473
    goto :goto_0

    :cond_8
    move-object v2, v1

    .line 475
    goto :goto_0
.end method

.method protected finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 844
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No transaction for one-phase commit prepare request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 847
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 848
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->isInvalidate()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->invalidate(Z)V

    .line 851
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 853
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commit()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 868
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;
    throw v0

    .line 859
    .end local v0    # "e":Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;
    :catch_1
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed committing transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 863
    invoke-virtual {p2, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->invalidate(Z)V

    .line 864
    invoke-virtual {p2, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->systemInvalidate(Z)V

    .line 866
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->rollback()V

    goto :goto_0
.end method

.method protected finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x5d

    const/4 v4, 0x0

    .line 784
    if-nez p2, :cond_2

    .line 785
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->commit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addCommittedTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 791
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received finish request for non-existing transaction (added to completed set) [senderNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 833
    :cond_0
    :goto_1
    return-void

    .line 789
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addRolledbackTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    goto :goto_0

    .line 797
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 798
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received finish request for transaction [senderNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 802
    :cond_3
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->commit()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isSystemInvalidate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 803
    :cond_4
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isInvalidate()Z

    move-result v2

    invoke-interface {p2, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->invalidate(Z)V

    .line 805
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->isSystemInvalidate()Z

    move-result v2

    invoke-interface {p2, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->systemInvalidate(Z)V

    .line 808
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->baseVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p2, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 810
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->commit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed completing transaction [commit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->commit()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 823
    invoke-interface {p2, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->invalidate(Z)V

    .line 824
    invoke-interface {p2, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->systemInvalidate(Z)V

    .line 827
    :try_start_1
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->commit()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 829
    :catch_1
    move-exception v1

    .line 830
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invalidate transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 814
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->baseVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p2, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 816
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->rollback()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public finishColocatedLocal(ZLorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "commit"    # Z
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    if-eqz p1, :cond_2

    .line 623
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not finish transaction (it is handled by another thread): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 627
    :cond_0
    const/4 v1, 0x0

    .line 641
    :goto_0
    return-object v1

    .line 630
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitAsyncLocal()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackAsyncLocal()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed completing transaction [commit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 638
    if-eqz p2, :cond_3

    .line 639
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 641
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public prepareTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "locTx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .param p4    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p4, "completeCb":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_1
    if-eqz p2, :cond_4

    .line 148
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_2
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->near()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->cloneEntries()V

    .line 154
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareNearTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareColocatedTx(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareNearTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method protected processCheckPreparedTxRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    .prologue
    const/16 v7, 0x5d

    .line 1087
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1088
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing check prepared transaction requests [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1090
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->transactions()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txsPreparedOrCommitted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)Z

    move-result v2

    .line 1092
    .local v2, "prepared":Z
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 1096
    .local v3, "res":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1097
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending check prepared transaction response [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1099
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;->system()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_0
    invoke-virtual {v5, p1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 1109
    :cond_2
    :goto_1
    return-void

    .line 1099
    :cond_3
    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1103
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send check prepared transaction response (did node leave grid?) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1106
    .end local v1    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 1107
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send response to node [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected processCheckPreparedTxResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    .prologue
    .line 1116
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing check prepared transaction response [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1119
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    .line 1122
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;
    if-nez v0, :cond_2

    .line 1123
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response for unknown future (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1130
    :cond_1
    :goto_0
    return-void

    .line 1129
    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V

    goto :goto_0
.end method

.method protected final processDhtTxFinishRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    .prologue
    .line 742
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 743
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 745
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing dht tx finish request [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 748
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    .line 749
    .local v0, "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    .line 752
    .local v1, "nearTx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->local()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    const/4 v1, 0x0

    .line 755
    :cond_3
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V

    .line 757
    if-eqz v1, :cond_4

    .line 758
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V

    .line 760
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->done()Z

    move-result v2

    if-nez v2, :cond_5

    .line 761
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;

    invoke-direct {v3, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 769
    :goto_0
    return-void

    .line 768
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->sendReply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V

    goto :goto_0
.end method

.method protected final processDhtTxPrepareRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    .prologue
    const/16 v7, 0x5d

    .line 650
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 651
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 653
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 655
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 656
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing dht tx prepare request [locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 659
    :cond_3
    const/4 v0, 0x0

    .line 660
    .local v0, "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    const/4 v2, 0x0

    .line 665
    .local v2, "nearTx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :try_start_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 668
    .local v3, "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearWrites()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->startNearRemoteTx(Ljava/lang/ClassLoader;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    move-result-object v2

    .line 669
    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    move-result-object v0

    .line 672
    if-eqz v2, :cond_4

    .line 673
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->nearEvicted(Ljava/util/Collection;)V

    .line 675
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->invalidPartitions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 676
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->invalidPartitions()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->invalidPartitions(Ljava/util/Collection;)V

    .line 678
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->onePhaseCommit()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 679
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->last()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    instance-of v4, v1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    if-eqz v4, :cond_d

    .line 696
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction was rolled back before prepare completed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 708
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 709
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->rollback()V

    .line 711
    :cond_7
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V

    .line 716
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    :cond_8
    :goto_2
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->system()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_3
    invoke-virtual {v5, p1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    :cond_9
    :goto_4
    return-void

    .line 668
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 681
    :cond_b
    if-eqz v0, :cond_c

    .line 682
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->onePhaseCommit(Z)V

    .line 684
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)V

    .line 687
    :cond_c
    if-eqz v2, :cond_8

    .line 688
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->onePhaseCommit(Z)V

    .line 690
    invoke-virtual {p0, p1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 697
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    .restart local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_d
    instance-of v4, v1, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    if-eqz v4, :cond_e

    .line 698
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 699
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Optimistic failure for remote transaction (will rollback): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 701
    :cond_e
    instance-of v4, v1, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    if-eqz v4, :cond_f

    .line 702
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to commit transaction (all transaction entries were invalidated): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 706
    :cond_f
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to process prepare request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 716
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    :cond_10
    :try_start_3
    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 718
    :catch_1
    move-exception v1

    .line 719
    .restart local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    instance-of v4, v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v4, :cond_13

    .line 720
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 721
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send tx response to remote node (node left grid) [node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 728
    :cond_11
    :goto_5
    if-eqz v2, :cond_12

    .line 729
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->rollback()V

    .line 731
    :cond_12
    if-eqz v0, :cond_9

    .line 732
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rollback()V

    goto/16 :goto_4

    .line 725
    :cond_13
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send tx response to remote node (will rollback transaction) [node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public processNearTxFinishRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public processNearTxPrepareRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method protected sendReply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    .prologue
    const/16 v5, 0x5d

    .line 877
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->replyRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 881
    .local v1, "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->system()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_0
    invoke-virtual {v3, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 893
    .end local v1    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :cond_0
    :goto_1
    return-void

    .line 881
    .restart local v1    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :cond_1
    sget-object v2, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 886
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node left while sending finish response [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 890
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send finish response to node [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startNearRemoteTx(Ljava/lang/ClassLoader;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .locals 22
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1028
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->candidatesByKey()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1030
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearWrites()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    .line 1033
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    if-nez v1, :cond_2

    .line 1034
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->threadId()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->system()Z

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->isInvalidate()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->timeout()J

    move-result-wide v15

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearWrites()Ljava/util/Collection;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->txSize()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->subjectId()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->taskNameHash()I

    move-result v21

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJLjava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 1055
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1057
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    .line 1060
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1061
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to start a completed transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1065
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearWrites()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addEntries(Ljava/lang/ClassLoader;Ljava/lang/Iterable;)V

    .line 1067
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->owned()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->ownedVersions(Ljava/util/Map;)V

    .line 1071
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->prepare()V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->last()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1074
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 1079
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :cond_4
    :goto_0
    return-object v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .locals 32
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    .param p3, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 907
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    .line 910
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->candidatesByKey()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 912
    :cond_0
    if-nez v3, :cond_5

    .line 913
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->threadId()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->system()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->isInvalidate()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->timeout()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->txSize()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->subjectId()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->taskNameHash()I

    move-result v25

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Map;Ljava/util/UUID;I)V

    .line 935
    .restart local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    .line 939
    .restart local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to start a completed transaction (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 943
    :cond_2
    const/4 v3, 0x0

    .line 999
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :cond_3
    :goto_1
    return-object v3

    .line 913
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->txSize()I

    move-result v20

    goto :goto_0

    .line 947
    .restart local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :cond_5
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->isSystemInvalidate()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 948
    const/16 v30, 0x0

    .line 950
    .local v30, "idx":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 951
    .local v28, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 953
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->addWrite(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/lang/ClassLoader;)V

    .line 955
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->invalidateNearEntry(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 956
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->invalidateNearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 959
    :cond_6
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->needPreloadKey(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 960
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v26

    .line 962
    .local v26, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v26, :cond_7

    .line 963
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v26

    .line 965
    :cond_7
    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    move-result-object v31

    .line 967
    .local v31, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-eqz v31, :cond_8

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 968
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->addPreloadEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v26    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v31    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_8
    :goto_3
    add-int/lit8 v30, v30, 0x1

    .line 978
    goto :goto_2

    .line 971
    :catch_0
    move-exception v27

    .line 972
    .local v27, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 974
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    goto :goto_3

    .line 983
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v27    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v28    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "idx":I
    :cond_9
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->prepare()V

    .line 985
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->last()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 986
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 988
    :cond_a
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->invalidPartitions()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->invalidPartitions(Ljava/util/Collection;)V

    .line 990
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->empty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->last()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 991
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rollback()V

    .line 993
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 999
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
