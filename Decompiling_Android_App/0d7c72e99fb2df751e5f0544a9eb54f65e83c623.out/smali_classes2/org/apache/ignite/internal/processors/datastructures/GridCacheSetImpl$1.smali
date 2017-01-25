.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->contains(Ljava/lang/Object;)Z
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
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
