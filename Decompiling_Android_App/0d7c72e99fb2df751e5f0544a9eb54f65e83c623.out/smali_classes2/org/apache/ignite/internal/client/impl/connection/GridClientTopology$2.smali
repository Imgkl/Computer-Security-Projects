.class Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;
.super Ljava/lang/Object;
.source "GridClientTopology.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->notifyEvents(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

.field final synthetic val$evts:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;->val$evts:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 395
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;->val$evts:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    .line 396
    .local v0, "evt":Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;
    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->added()Z
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->access$200(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    # getter for: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;
    invoke-static {v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->access$300(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .line 398
    .local v3, "lsnr":Lorg/apache/ignite/internal/client/GridClientTopologyListener;
    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->node()Lorg/apache/ignite/internal/client/GridClientNode;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->access$400(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/client/GridClientTopologyListener;->onNodeAdded(Lorg/apache/ignite/internal/client/GridClientNode;)V

    goto :goto_0

    .line 401
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lsnr":Lorg/apache/ignite/internal/client/GridClientTopologyListener;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    # getter for: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;
    invoke-static {v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->access$300(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .line 402
    .restart local v3    # "lsnr":Lorg/apache/ignite/internal/client/GridClientTopologyListener;
    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->node()Lorg/apache/ignite/internal/client/GridClientNode;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->access$400(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/client/GridClientTopologyListener;->onNodeRemoved(Lorg/apache/ignite/internal/client/GridClientNode;)V

    goto :goto_1

    .line 405
    .end local v0    # "evt":Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lsnr":Lorg/apache/ignite/internal/client/GridClientTopologyListener;
    :cond_2
    return-void
.end method
