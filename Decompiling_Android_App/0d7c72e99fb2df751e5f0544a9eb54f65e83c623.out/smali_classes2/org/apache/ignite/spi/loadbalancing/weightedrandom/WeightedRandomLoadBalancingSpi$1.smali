.class Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;
.super Ljava/lang/Object;
.source "WeightedRandomLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 266
    sget-boolean v2, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/events/TaskEvent;

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/events/JobEvent;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 268
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 270
    :cond_1
    check-cast p1, Lorg/apache/ignite/events/TaskEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/TaskEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 272
    .local v0, "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed task topology from topology cache for session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 291
    .end local v0    # "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    :goto_0
    return-void

    .line 280
    .restart local p1    # "evt":Lorg/apache/ignite/events/Event;
    :cond_3
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 281
    check-cast p1, Lorg/apache/ignite/events/JobEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 283
    .restart local v0    # "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$000(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 285
    .local v1, "weightedTop":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;>;"
    if-eqz v1, :cond_4

    .line 286
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 288
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$100(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job has been mapped. Ignore cache for session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
