.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendRequest(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/Collection;)V
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V
    .locals 0

    .prologue
    .line 696
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 696
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.6;"
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 698
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onNodeLeft(Ljava/util/UUID;)V

    .line 700
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
