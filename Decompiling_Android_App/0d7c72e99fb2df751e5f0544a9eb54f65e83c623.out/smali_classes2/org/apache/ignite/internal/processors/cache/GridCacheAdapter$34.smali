.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
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

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 2700
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.34;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->val$args:[Ljava/lang/Object;

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
    .line 2700
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.34;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/util/Map;
    .locals 4
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
    .line 2703
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.34;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->val$map:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->invokeAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2706
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method
