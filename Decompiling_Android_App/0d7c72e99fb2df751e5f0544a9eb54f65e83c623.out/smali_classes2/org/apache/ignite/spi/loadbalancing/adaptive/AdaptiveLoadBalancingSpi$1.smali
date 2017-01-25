.class Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;
.super Ljava/lang/Object;
.source "AdaptiveLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 8
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 314
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object v2, p1

    .line 317
    check-cast v2, Lorg/apache/ignite/events/TaskEvent;

    .line 319
    .local v2, "taskEvt":Lorg/apache/ignite/events/TaskEvent;
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed task topology from topology cache for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "taskEvt":Lorg/apache/ignite/events/TaskEvent;
    :sswitch_1
    move-object v1, p1

    .line 332
    check-cast v1, Lorg/apache/ignite/events/JobEvent;

    .line 334
    .local v1, "jobEvt":Lorg/apache/ignite/events/JobEvent;
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 336
    .local v3, "weightedTop":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;>;"
    if-eqz v3, :cond_1

    .line 337
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 339
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Job has been mapped. Ignore cache for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "jobEvt":Lorg/apache/ignite/events/JobEvent;
    .end local v3    # "weightedTop":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;>;"
    :sswitch_2
    move-object v0, p1

    .line 349
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 351
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 354
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 377
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 356
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$300(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 363
    :pswitch_1
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$300(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 370
    :pswitch_2
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$300(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch

    .line 354
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
