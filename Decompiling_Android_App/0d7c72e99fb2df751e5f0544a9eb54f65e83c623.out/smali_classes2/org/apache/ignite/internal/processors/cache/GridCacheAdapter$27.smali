.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncOp<",
        "Ljava/util/Map",
        "<TK;",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

.field final synthetic val$keys:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 2544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.27;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$keys:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$args:[Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.27;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/util/Map;
    .locals 6
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2549
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.27;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$keys:Ljava/util/Set;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v1

    .line 2556
    .local v1, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, v3, v1, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->invokeAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2558
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2560
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    if-eqz v2, :cond_0

    .end local v2    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    :goto_0
    return-object v2

    .restart local v2    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method
