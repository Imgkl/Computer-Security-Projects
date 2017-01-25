.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

.field final synthetic val$locNodeId:Ljava/util/UUID;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 706
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->val$locNodeId:Ljava/util/UUID;

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
    .line 708
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.7;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->access$500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->beforeLocalExecution(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 710
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->val$locNodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;->val$req:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->processQueryRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method
