.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


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
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

.field final synthetic val$jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field final synthetic val$sesId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$sesId:Lorg/apache/ignite/lang/IgniteUuid;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 550
    check-cast p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$sesId:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$jobId:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;->val$jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
