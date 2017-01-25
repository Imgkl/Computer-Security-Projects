.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;
.super Ljava/lang/Object;
.source "GridCacheEvictionManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->addToCurrentFuture(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1088
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/util/GridBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not notify eviction future completion (grid is stopping): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1111
    .end local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_0
    :goto_0
    return-void

    .line 1099
    .restart local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->lockTopology()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1102
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .end local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->onFutureCompleted(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    invoke-static {v1, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1109
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/util/GridBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto :goto_0

    .line 1105
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1109
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/util/GridBusyLock;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v1
.end method
