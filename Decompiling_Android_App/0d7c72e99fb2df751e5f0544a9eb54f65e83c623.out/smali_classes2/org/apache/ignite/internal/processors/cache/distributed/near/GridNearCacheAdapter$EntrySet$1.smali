.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;
.super Ljava/lang/Object;
.source "GridNearCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;)V
    .locals 0

    .prologue
    .line 660
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 660
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet.1;"
    check-cast p1, Ljavax/cache/Cache$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;->apply(Ljavax/cache/Cache$Entry;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljavax/cache/Cache$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet.1;"
    .local p1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->NEAR_PEEK_MODE:[Lorg/apache/ignite/cache/CachePeekMode;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->access$100()[Lorg/apache/ignite/cache/CachePeekMode;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    invoke-static {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->access$201(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
