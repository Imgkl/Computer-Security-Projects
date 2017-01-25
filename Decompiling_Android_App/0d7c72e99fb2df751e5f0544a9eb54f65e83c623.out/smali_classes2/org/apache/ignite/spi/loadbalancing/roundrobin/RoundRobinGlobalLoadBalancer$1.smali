.class Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;
.super Ljava/lang/Object;
.source "RoundRobinGlobalLoadBalancer.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 10
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 74
    sget-boolean v5, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move-object v5, p1

    .line 76
    check-cast v5, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-virtual {v5}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 78
    .local v3, "nodeId":Ljava/util/UUID;
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    # getter for: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->mux:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->access$100(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 79
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_3

    .line 80
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    # getter for: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->access$200(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    move-result-object v5

    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;
    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v1, "newNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 88
    .local v2, "node":Ljava/util/UUID;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "newNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .end local v2    # "node":Ljava/util/UUID;
    .end local v4    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 90
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "newNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .restart local v4    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    new-instance v7, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v1, v9}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;-><init>(ILjava/util/List;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;)V

    # setter for: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    invoke-static {v5, v7}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->access$202(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "newNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :cond_2
    :goto_1
    monitor-exit v6

    .line 109
    return-void

    .line 94
    .end local v4    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :cond_3
    sget-boolean v5, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v5

    const/16 v7, 0xb

    if-eq v5, v7, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v5

    const/16 v7, 0xc

    if-eq v5, v7, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 96
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    # getter for: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->access$200(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    move-result-object v5

    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;
    invoke-static {v5}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;

    move-result-object v4

    .line 98
    .restart local v4    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .restart local v1    # "newNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 102
    .restart local v2    # "node":Ljava/util/UUID;
    invoke-virtual {v3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    .end local v2    # "node":Ljava/util/UUID;
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    new-instance v7, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v1, v9}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;-><init>(ILjava/util/List;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;)V

    # setter for: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    invoke-static {v5, v7}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->access$202(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
