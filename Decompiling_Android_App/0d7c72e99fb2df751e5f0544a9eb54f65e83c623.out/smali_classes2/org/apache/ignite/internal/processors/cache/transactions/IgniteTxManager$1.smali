.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;
.super Ljava/lang/Object;
.source "IgniteTxManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onKernalStart0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 126
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 127
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    move-object v0, p1

    .line 129
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 131
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 133
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->onNodeLeft(Ljava/util/UUID;)V

    .line 135
    :cond_2
    return-void
.end method
