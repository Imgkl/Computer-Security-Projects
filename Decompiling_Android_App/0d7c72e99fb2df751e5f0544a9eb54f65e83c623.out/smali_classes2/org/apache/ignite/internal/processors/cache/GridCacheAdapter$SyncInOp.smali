.class abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SyncInOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncOp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V
    .locals 0
    .param p2, "single"    # Z

    .prologue
    .line 5476
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.SyncInOp;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 5477
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    .line 5478
    return-void
.end method


# virtual methods
.method public abstract inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public final op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5482
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.SyncInOp;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;->inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    .line 5484
    const/4 v0, 0x0

    return-object v0
.end method
