.class Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;
.super Ljava/lang/Object;
.source "GridCacheDeploymentManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 7
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.2;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 91
    :cond_0
    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 93
    .local v3, "id":Ljava/util/UUID;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing node departure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 99
    .local v0, "d":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Examining cached info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 102
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->removeParticipant(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed cached info [d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "d":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;>;"
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method
