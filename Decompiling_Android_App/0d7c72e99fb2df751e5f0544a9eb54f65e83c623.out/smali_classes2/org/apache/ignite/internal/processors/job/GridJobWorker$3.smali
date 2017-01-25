.class Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;
.super Ljava/lang/Object;
.source "GridJobWorker.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobWorker;->cancel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

.field final synthetic val$job0:Lorg/apache/ignite/compute/ComputeJob;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Lorg/apache/ignite/compute/ComputeJob;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;->val$job0:Lorg/apache/ignite/compute/ComputeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;->val$job0:Lorg/apache/ignite/compute/ComputeJob;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJob;->cancel()V

    .line 608
    return-void
.end method
