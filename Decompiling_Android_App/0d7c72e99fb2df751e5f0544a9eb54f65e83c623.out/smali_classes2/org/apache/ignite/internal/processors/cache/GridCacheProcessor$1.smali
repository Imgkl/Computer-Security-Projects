.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridPlainInClosure",
        "<",
        "Ljava/io/Serializable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "evt"    # Ljava/io/Serializable;

    .prologue
    .line 537
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    .end local p1    # "evt":Ljava/io/Serializable;
    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onCacheChangeRequested(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;)V
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;)V

    .line 539
    :cond_0
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 535
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;->apply(Ljava/io/Serializable;)V

    return-void
.end method
