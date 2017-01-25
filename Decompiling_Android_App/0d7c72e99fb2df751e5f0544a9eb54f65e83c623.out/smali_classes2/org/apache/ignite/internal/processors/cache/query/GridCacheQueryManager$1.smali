.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V
    .locals 0

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 10
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.1;"
    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    .line 104
    .local v5, "nodeId":Ljava/util/UUID;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 106
    .local v3, "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;
    invoke-static {v5, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$100(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, "recipient":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;

    invoke-direct {v8, p0, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0

    .line 120
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "recipient":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 122
    .local v2, "fieldsFuts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;
    invoke-static {v5, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$100(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v6

    .line 126
    .restart local v6    # "recipient":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$2;

    invoke-direct {v8, p0, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1

    .line 134
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "recipient":Ljava/lang/Object;
    :cond_1
    return-void
.end method
