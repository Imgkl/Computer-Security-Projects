.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;
.super Ljava/lang/Object;
.source "GridCacheEvictionManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 174
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 177
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 180
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->addEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 182
    :cond_1
    return-void
.end method
