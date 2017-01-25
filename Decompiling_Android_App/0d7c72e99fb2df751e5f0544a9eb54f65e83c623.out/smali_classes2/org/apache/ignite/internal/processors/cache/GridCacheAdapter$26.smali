.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncOp<",
        "Ljavax/cache/processor/EntryProcessorResult",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2510
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 2510
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.26;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$key:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$args:[Ljava/lang/Object;

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
    .line 2510
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.26;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.26;"
    const/4 v5, 0x0

    .line 2513
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$key:Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    invoke-static {v4, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 2516
    .local v1, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, v4, v1, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->invokeAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2518
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2520
    .local v3, "resMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    const/4 v2, 0x0

    .line 2522
    .local v2, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v3, :cond_1

    .line 2523
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(I)V

    throw v4

    .line 2525
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v5

    .line 2528
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .end local v2    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :goto_1
    return-object v2

    .line 2525
    .restart local v2    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/cache/processor/EntryProcessorResult;

    move-object v2, v4

    goto :goto_0

    .line 2528
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    .end local v2    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    move-object v4, v5

    check-cast v4, Ljava/lang/Object;

    invoke-direct {v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method
