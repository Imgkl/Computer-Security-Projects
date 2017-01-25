.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->sqlMetadata()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V
    .locals 0

    .prologue
    .line 1743
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.10;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1743
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.10;"
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 1745
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.10;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1900(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
