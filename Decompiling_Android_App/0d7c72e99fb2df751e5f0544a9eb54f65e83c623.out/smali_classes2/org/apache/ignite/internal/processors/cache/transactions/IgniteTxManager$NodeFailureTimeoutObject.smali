.class final Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "IgniteTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeFailureTimeoutObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final evtNodeId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1993
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Ljava/util/UUID;)V
    .locals 4
    .param p2, "evtNodeId"    # Ljava/util/UUID;

    .prologue
    .line 2000
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .line 2001
    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$800(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->TX_SALVAGE_TIMEOUT:I
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$900()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(Lorg/apache/ignite/lang/IgniteUuid;J)V

    .line 2003
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->evtNodeId:Ljava/util/UUID;

    .line 2004
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    .prologue
    .line 1993
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Ljava/util/UUID;)V

    return-void
.end method

.method private commitIfPrepared(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 2054
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2055
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->transactionNodes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2056
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2058
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1800(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->evtNodeId:Ljava/util/UUID;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->transactionNodes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/Map;)V

    .line 2064
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1900(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 2066
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$2000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2067
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking optimistic transaction state on remote nodes [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2069
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->prepare()V

    .line 2070
    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 6

    .prologue
    .line 2009
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2020
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1500(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing node failed event [locNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", failedNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->evtNodeId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2023
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 2024
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->near()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->storeUsed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->masterNodeIds()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->evtNodeId:Ljava/util/UUID;

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2026
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    # invokes: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    invoke-static {v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1600(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2043
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1700(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v3

    .line 2011
    :catch_0
    move-exception v1

    .line 2012
    .local v1, "ignore":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2013
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    const-string v4, "Failed to acquire kernal gateway (grid is stopping)."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2045
    .end local v1    # "ignore":Ljava/lang/IllegalStateException;
    :cond_4
    :goto_1
    return-void

    .line 2030
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->originatingNodeId()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->evtNodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2031
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v3, v4, :cond_6

    .line 2032
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->commitIfPrepared(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    goto :goto_0

    .line 2034
    :cond_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2035
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2043
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$1700(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    goto :goto_1
.end method
