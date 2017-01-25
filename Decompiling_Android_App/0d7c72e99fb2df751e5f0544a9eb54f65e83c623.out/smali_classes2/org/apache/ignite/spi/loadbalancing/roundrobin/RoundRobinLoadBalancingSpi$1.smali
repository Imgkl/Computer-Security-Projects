.class Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;
.super Ljava/lang/Object;
.source "RoundRobinLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    .line 184
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v1

    check-cast p1, Lorg/apache/ignite/events/TaskEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 185
    .restart local p1    # "evt":Lorg/apache/ignite/events/Event;
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 186
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v1

    check-cast p1, Lorg/apache/ignite/events/JobEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;

    .line 189
    .local v0, "balancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->onMapped()V

    goto :goto_0
.end method
