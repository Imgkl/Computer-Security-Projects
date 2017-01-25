.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$skipVals:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Collection;ZZ)V
    .locals 0

    .prologue
    .line 2309
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.19;"
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$keys:Ljava/util/Collection;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$deserializePortable:Z

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$skipVals:Z

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
            "<TK1;TV1;>;>;"
        }
    .end annotation

    .prologue
    .line 2311
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.19;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$keys:Ljava/util/Collection;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$deserializePortable:Z

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;->val$skipVals:Z

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
