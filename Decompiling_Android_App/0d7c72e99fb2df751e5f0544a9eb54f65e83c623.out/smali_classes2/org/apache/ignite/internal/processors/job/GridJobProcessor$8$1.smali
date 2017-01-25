.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->next()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .locals 4

    .prologue
    .line 671
    new-instance v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
