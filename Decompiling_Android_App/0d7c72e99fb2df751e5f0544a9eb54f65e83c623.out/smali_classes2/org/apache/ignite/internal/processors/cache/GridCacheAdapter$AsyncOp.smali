.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AsyncOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field

.field private final single:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncOp<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 5507
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5508
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->keys:Ljava/util/Collection;

    .line 5510
    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->single:Z

    .line 5511
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncOp<TT;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 5516
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5517
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->keys:Ljava/util/Collection;

    .line 5519
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->single:Z

    .line 5520
    return-void

    .line 5519
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method final single()Z
    .locals 1

    .prologue
    .line 5526
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncOp<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->single:Z

    return v0
.end method
