.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->remove(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.3;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
