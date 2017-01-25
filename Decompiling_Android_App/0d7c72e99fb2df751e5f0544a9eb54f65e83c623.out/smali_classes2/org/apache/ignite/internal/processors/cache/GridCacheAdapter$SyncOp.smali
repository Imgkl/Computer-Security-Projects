.class abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SyncOp"
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
.field private final single:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V
    .locals 0
    .param p2, "single"    # Z

    .prologue
    .line 5450
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.SyncOp<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5451
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->single:Z

    .line 5452
    return-void
.end method


# virtual methods
.method public abstract op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method final single()Z
    .locals 1

    .prologue
    .line 5458
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.SyncOp<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->single:Z

    return v0
.end method
