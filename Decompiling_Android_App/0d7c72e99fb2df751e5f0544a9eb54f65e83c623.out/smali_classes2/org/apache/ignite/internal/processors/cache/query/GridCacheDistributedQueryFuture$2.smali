.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cancelQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

.field final synthetic val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;->val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->processQueryRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
