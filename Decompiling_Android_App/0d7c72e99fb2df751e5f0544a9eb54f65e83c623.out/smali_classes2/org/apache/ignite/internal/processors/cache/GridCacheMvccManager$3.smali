.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 12
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 169
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    instance-of v9, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 170
    :cond_0
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v9

    const/16 v10, 0xb

    if-eq v9, v10, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_1
    move-object v1, p1

    .line 172
    check-cast v1, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 174
    .local v1, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 175
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Processing node left [nodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 177
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 179
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeExplicitNodeLocks(Ljava/util/UUID;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v8

    .line 182
    .local v8, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 183
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove node locks from removed entry in mvcc manager disco callback (will ignore): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v8    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_4
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 189
    .local v5, "futsCol":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    .line 190
    .local v4, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->trackable()Z

    move-result v9

    if-nez v9, :cond_7

    .line 191
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 192
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping non-trackable future: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_7
    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->onNodeLeft(Ljava/util/UUID;)Z

    .line 199
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isDone()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 200
    :cond_8
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    goto :goto_1

    .line 204
    .end local v4    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    .end local v5    # "futsCol":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 205
    .local v3, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    instance-of v9, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    if-eqz v9, :cond_a

    move-object v0, v3

    .line 206
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    .line 208
    .local v0, "cacheFut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->onNodeLeft(Ljava/util/UUID;)Z

    .line 210
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isDone()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 211
    :cond_b
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    .end local v0    # "cacheFut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
    .end local v3    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_c
    return-void
.end method
