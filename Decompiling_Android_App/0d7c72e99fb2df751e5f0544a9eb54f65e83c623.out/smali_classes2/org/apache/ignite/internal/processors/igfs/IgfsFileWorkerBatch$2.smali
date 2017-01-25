.class Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;
.super Ljava/lang/Object;
.source "IgfsFileWorkerBatch.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 146
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    const/4 v1, 0x1

    # setter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->lastTask:Z
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->access$302(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;Z)Z

    .line 149
    return-void
.end method
