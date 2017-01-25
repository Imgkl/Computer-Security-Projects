.class final Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;
.super Ljava/lang/Object;
.source "GridCacheQueryAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->nodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$prj:Lorg/apache/ignite/cluster/ClusterGroup;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$prj:Lorg/apache/ignite/cluster/ClusterGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 473
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$prj:Lorg/apache/ignite/cluster/ClusterGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;->val$prj:Lorg/apache/ignite/cluster/ClusterGroup;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/cluster/ClusterGroup;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
