.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;
.super Ljava/lang/Object;
.source "GridCacheSetProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->containsAll(Ljava/util/Collection;)Z
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

.field final synthetic val$c:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.9;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;->val$c:Ljava/util/Collection;

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
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.9;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;->val$c:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->containsAll(Ljava/util/Collection;)Z

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
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.9;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$9;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
