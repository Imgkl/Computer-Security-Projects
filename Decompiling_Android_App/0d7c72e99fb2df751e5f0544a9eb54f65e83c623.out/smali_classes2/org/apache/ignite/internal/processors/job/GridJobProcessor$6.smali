.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;
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


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 564
    check-cast p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;->apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    .line 567
    return-void
.end method
