.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 7
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 167
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move-object v0, p1

    .line 169
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 171
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfsNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 173
    .local v1, "future":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node left grid before write completed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v1, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0

    .line 177
    .end local v1    # "future":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
