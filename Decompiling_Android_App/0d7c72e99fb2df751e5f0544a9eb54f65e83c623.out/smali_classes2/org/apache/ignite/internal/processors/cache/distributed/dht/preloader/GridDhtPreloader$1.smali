.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;
.super Ljava/lang/Object;
.source "GridDhtPreloader.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 14
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.1;"
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/16 v9, 0xa

    .line 81
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->enterBusy()Z
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 114
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 84
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 87
    .local v0, "e":Lorg/apache/ignite/events/DiscoveryEvent;
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 89
    .local v4, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-eq v7, v9, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-eq v7, v12, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-eq v7, v13, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v4    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    throw v7

    .line 91
    .restart local v4    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 93
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 95
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .line 96
    .local v1, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->onDiscoveryEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V

    goto :goto_1

    .line 98
    .end local v1    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    :cond_3
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-ne v7, v9, :cond_4

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node joined with smaller-than-local order [newOrder="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locOrder="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 101
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/util/GridAtomicLong;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/GridAtomicLong;->setIfGreater(J)Z

    move-result v6

    .line 103
    .local v6, "set":Z
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->$assertionsDisabled:Z

    if-nez v7, :cond_5

    if-nez v6, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Have you configured GridTcpDiscoverySpi for your in-memory data grid? [newVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/util/GridAtomicLong;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 106
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-eq v7, v12, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v7

    if-ne v7, v13, :cond_7

    .line 107
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;

    .line 108
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;->onNodeLeft(Ljava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 112
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;
    :cond_7
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    goto/16 :goto_0
.end method
