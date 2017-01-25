.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;
.super Ljava/lang/Object;
.source "GridDeploymentPerLoaderStore.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 7
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 70
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move-object v5, p1

    .line 72
    check-cast v5, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-virtual {v5}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 74
    .local v3, "nodeId":Ljava/util/UUID;
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 76
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .local v4, "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 79
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;
    invoke-static {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 82
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->senderNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeploy()V

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 87
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 93
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordUndeployed()V

    goto :goto_1

    .line 95
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    .end local v4    # "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_4
    return-void
.end method
