.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.AsyncInOp;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0

    .prologue
    .line 3099
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.47;"
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$m:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.47;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$m:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.47;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putAllAsync [map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
