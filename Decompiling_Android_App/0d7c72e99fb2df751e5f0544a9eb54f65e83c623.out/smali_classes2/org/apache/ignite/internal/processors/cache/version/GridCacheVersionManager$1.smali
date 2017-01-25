.class Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;
.super Ljava/lang/Object;
.source "GridCacheVersionManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 70
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v0, p1

    .line 72
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 74
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->access$000(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 76
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->access$100(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;J)V

    .line 78
    :cond_1
    return-void
.end method
