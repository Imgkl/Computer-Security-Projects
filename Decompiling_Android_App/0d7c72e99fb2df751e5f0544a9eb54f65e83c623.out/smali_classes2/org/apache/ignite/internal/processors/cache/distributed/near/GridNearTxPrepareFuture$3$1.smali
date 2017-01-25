.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;
.super Ljava/lang/Object;
.source "GridNearTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;)V
    .locals 0

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare()V

    .line 355
    return-void
.end method
