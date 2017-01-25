.class Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;
.super Ljava/lang/Object;
.source "JobStealingCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 526
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$300(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    .line 528
    .local v1, "info":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    if-nez v1, :cond_1

    .line 529
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$400(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$400(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring message steal request as discovery event has not yet been received for node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    monitor-enter v1

    .line 539
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;

    move-object v2, v0

    .line 544
    .local v2, "req":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$500(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;->delta()I

    move-result v6

    invoke-virtual {v1}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    .line 546
    .local v3, "stealReqs0":I
    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;->delta()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->reset(I)V

    .line 547
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$400(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$400(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received steal request [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stealReqs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 553
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$600(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    move-result-object v4

    .line 556
    .local v4, "tmp":Lorg/apache/ignite/spi/collision/CollisionExternalListener;
    if-eqz v4, :cond_0

    .line 557
    invoke-interface {v4}, Lorg/apache/ignite/spi/collision/CollisionExternalListener;->onExternalCollision()V

    goto :goto_0

    .line 547
    .end local v2    # "req":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;
    .end local v3    # "stealReqs0":I
    .end local v4    # "tmp":Lorg/apache/ignite/spi/collision/CollisionExternalListener;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
