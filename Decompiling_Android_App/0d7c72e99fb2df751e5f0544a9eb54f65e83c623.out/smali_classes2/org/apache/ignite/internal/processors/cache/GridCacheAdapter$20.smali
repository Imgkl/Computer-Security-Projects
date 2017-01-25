.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncOp<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$ttl:J

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 2344
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.20;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$key:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$val:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$ttl:J

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    return-void
.end method


# virtual methods
.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;
    .locals 9
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.20;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$key:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$val:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$ttl:J

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2350
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.20;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

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
