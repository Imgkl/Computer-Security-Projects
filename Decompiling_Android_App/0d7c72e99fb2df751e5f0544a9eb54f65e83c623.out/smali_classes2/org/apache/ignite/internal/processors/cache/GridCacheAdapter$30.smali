.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

.field final synthetic val$keys:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2623
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.30;"
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$keys:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$args:[Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2625
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.30;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$keys:Ljava/util/Set;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    .line 2631
    .local v0, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->invokeAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2635
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.30;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeAllAsync [keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$keys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entryProcessor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
