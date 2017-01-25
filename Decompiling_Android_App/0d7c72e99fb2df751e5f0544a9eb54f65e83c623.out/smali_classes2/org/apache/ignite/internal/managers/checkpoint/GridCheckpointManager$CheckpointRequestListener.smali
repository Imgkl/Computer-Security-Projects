.class Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;
.super Ljava/lang/Object;
.source "GridCheckpointManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckpointRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;-><init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 405
    move-object v2, p2

    check-cast v2, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;

    .line 407
    .local v2, "req":Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$300(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$400(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received checkpoint request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 410
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    .line 412
    .local v4, "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$500(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$600(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$700(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 420
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_4

    .line 421
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$800(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->getSession(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v3

    .line 423
    .local v3, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    if-nez v3, :cond_3

    .line 424
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$900(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    goto :goto_0

    .line 429
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$700(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-direct {v0, v3, v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;-><init>(Lorg/apache/ignite/internal/GridTaskSessionInternal;Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;)V

    .restart local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v5, v0

    check-cast v5, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    invoke-interface {v6, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 431
    .local v1, "old":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 432
    move-object v0, v1

    .line 435
    .end local v1    # "old":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_4
    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$500(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$700(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$1000(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    goto :goto_0
.end method
