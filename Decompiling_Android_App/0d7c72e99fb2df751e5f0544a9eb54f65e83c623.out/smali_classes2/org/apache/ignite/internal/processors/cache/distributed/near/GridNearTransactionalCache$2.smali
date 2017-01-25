.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;
.super Ljava/lang/Object;
.source "GridNearTransactionalCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache.2;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 80
    return-void
.end method
