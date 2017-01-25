.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V
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
        "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

.field final synthetic val$sys:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Z)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;->val$sys:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 571
    check-cast p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;->apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 2
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;->val$sys:Z

    invoke-static {v0, p1, v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    .line 574
    return-void
.end method
