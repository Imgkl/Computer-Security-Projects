.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;
.super Ljava/lang/Object;
.source "GridCacheQueueProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->isEmpty()Z
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.10;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.10;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->isEmpty()Z

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
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy.10;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy$10;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
