.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.3;"
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 97
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->access$100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    .line 98
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_0

    .line 99
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;
    :cond_0
    return-void
.end method
