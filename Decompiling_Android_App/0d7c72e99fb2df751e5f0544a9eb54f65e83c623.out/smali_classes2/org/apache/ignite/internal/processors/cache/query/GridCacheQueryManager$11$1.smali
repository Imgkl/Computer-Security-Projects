.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;->forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiPredicate",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;

.field final synthetic val$cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0

    .prologue
    .line 1815
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1817
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11.1;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method
