.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;
.source "GridNearTransactionalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.AsyncOp<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$skipVals:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZ)V
    .locals 0

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache.3;"
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$keys:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$deserializePortable:Z

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$skipVals:Z

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$keys:Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$deserializePortable:Z

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;->val$skipVals:Z

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
