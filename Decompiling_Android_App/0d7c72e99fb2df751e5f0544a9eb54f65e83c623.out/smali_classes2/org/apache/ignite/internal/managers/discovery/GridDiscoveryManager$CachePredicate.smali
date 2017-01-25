.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachePredicate"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cacheFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private clientNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Z

.field private nearEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2382
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V
    .locals 1
    .param p2, "nearEnabled"    # Z
    .param p3, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2399
    .local p1, "cacheFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2402
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 2403
    iput-boolean p2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->nearEnabled:Z

    .line 2404
    iput-boolean p3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->loc:Z

    .line 2406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    .line 2407
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;ZZLorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgnitePredicate;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 2382
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .prologue
    .line 2382
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addClientNode(Ljava/util/UUID;Z)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "nearEnabled"    # Z

    .prologue
    .line 2413
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    return-void
.end method

.method public cacheNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2436
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clientNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    const/4 v1, 0x0

    .line 2460
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2465
    :cond_0
    :goto_0
    return v1

    .line 2463
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2465
    .local v0, "near":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dataNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2428
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 5
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2444
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 2452
    :cond_0
    :goto_0
    return v1

    .line 2447
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->nearEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v3, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2450
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2452
    .local v0, "near":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)V
    .locals 1
    .param p1, "leftNodeId"    # Ljava/util/UUID;

    .prologue
    .line 2420
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    return-void
.end method
