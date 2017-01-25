.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->queryFieldsDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

.field final synthetic val$topic:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 642
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;->val$topic:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 642
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.5;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager.5;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->access$400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;->val$topic:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeOrderedHandler(Ljava/lang/Object;)V

    .line 645
    return-void
.end method
