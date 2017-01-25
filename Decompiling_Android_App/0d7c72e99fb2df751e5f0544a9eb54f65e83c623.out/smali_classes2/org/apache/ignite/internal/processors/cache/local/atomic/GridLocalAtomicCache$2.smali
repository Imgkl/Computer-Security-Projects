.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)V
    .locals 0

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

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
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$2;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAll()V

    .line 476
    const/4 v0, 0x0

    return-object v0
.end method
