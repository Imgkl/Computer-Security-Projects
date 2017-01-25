.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;
.super Ljava/lang/Object;
.source "GridCacheSetProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->iterator()Ljava/util/Iterator;
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
        "Ljava/util/Iterator",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)V
    .locals 0

    .prologue
    .line 449
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.14;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.14;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;->call()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy.14;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
