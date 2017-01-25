.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Set",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;>;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0

    .prologue
    .line 2905
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;->val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2905
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2909
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2911
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;->val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method
