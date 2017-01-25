.class Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;
.super Ljava/lang/Object;
.source "JobStealingCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 447
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 10
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/4 v9, 0x0

    .line 450
    sget-boolean v5, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move-object v0, p1

    .line 452
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 454
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 456
    .local v1, "evtNodeId":Ljava/util/UUID;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 486
    sget-boolean v5, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 458
    :pswitch_0
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 460
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_1

    .line 461
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$000(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 463
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$200(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    iget-object v8, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;)V

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$300(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    iget-object v8, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;)V

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    :goto_0
    return-void

    .line 471
    :pswitch_1
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$000(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 473
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 474
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 476
    .local v3, "nextNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 480
    .end local v3    # "nextNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$200(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$300(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
