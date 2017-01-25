.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->add(Ljava/lang/Object;)Z
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
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

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
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;->val$key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
