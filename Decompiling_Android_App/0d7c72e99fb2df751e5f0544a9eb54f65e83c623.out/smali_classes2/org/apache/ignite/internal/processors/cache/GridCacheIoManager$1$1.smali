.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;

.field final synthetic val$c0:Lorg/apache/ignite/lang/IgniteBiInClosure;

.field final synthetic val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$c0:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;->val$c0:Lorg/apache/ignite/lang/IgniteBiInClosure;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 125
    return-void
.end method
