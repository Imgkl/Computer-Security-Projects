.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->iterator()Ljava/util/Iterator;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;

.field final synthetic val$iter:Ljava/util/Iterator;

.field private w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 690
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->advance()V

    .line 695
    return-void
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 701
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 703
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 706
    .local v0, "w0":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 708
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held()Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 714
    .end local v0    # "w0":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_2
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->next()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-nez v1, :cond_0

    .line 722
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 724
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->this$1:Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    .line 726
    .local v0, "ret":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->w:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 728
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9$1;->advance()V

    .line 730
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 734
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
