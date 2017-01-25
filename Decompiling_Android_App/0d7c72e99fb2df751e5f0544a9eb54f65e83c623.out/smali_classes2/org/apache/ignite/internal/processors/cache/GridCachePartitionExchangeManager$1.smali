.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;
.super Ljava/lang/Object;
.source "GridCachePartitionExchangeManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 18
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.1;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 199
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    move-object v4, v0

    .line 111
    .local v4, "e":Lorg/apache/ignite/events/DiscoveryEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    .line 113
    .local v9, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->$assertionsDisabled:Z

    if-nez v13, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0x12

    if-eq v13, v14, :cond_1

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v4    # "e":Lorg/apache/ignite/events/DiscoveryEvent;
    .end local v9    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v14}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    throw v13

    .line 116
    .restart local v4    # "e":Lorg/apache/ignite/events/DiscoveryEvent;
    .restart local v9    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    .line 118
    .local v10, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v6, 0x0

    .line 119
    .local v6, "exchId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    const/4 v5, 0x0

    .line 121
    .local v5, "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0x12

    if-eq v13, v14, :cond_a

    .line 122
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->$assertionsDisabled:Z

    if-nez v13, :cond_2

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 124
    :cond_2
    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_3

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_5

    .line 125
    :cond_3
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->$assertionsDisabled:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 127
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->values()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .line 128
    .local v7, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_1

    .line 133
    .end local v7    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->$assertionsDisabled:Z

    if-nez v13, :cond_6

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_6

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v14

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gtz v13, :cond_6

    new-instance v13, Ljava/lang/AssertionError;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Node joined with smaller-than-local order [newOrder="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", locOrder="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v15, v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v15

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v16

    invoke-static/range {v13 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v4, v14}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v5

    .line 168
    :cond_7
    :goto_2
    if-eqz v6, :cond_9

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/Queue;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v5, v6, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onEvent(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Discovery event (will start exchange): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 178
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v13

    new-instance v14, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V

    invoke-virtual {v13, v14}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    goto/16 :goto_0

    .line 143
    :cond_a
    :try_start_2
    move-object v0, v4

    check-cast v0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;

    move-object v3, v0

    .line 145
    .local v3, "customEvt":Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->data()Ljava/io/Serializable;

    move-result-object v13

    instance-of v13, v13, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    if-eqz v13, :cond_7

    .line 146
    invoke-virtual {v3}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->data()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    .line 148
    .local v2, "batch":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->requests()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v12, "valid":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->requests()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 152
    .local v11, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicCacheRegistered(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 153
    invoke-interface {v12, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v13, v13, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->completeStartFuture(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V

    goto :goto_3

    .line 158
    .end local v11    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_c
    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v15, v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v15

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v16

    invoke-static/range {v13 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v13, v6, v4, v12}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_2
.end method
