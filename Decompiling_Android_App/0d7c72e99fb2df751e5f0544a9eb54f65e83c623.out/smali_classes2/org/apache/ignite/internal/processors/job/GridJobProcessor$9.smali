.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;
.super Ljava/util/AbstractCollection;
.source "GridJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handleCollisions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 688
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 690
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/job/GridJobWorker;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 740
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 742
    .local v0, "ret":I
    if-lez v0, :cond_0

    .end local v0    # "ret":I
    :goto_0
    return v0

    .restart local v0    # "ret":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
