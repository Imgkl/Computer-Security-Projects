.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;
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
    .line 210
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 212
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;->$assertionsDisabled:Z

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

    .line 214
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 216
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .line 217
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_0

    .line 218
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    :cond_1
    return-void
.end method
