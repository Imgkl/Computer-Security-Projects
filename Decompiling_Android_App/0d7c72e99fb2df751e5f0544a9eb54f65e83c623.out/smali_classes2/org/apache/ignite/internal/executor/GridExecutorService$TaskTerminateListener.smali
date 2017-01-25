.class Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;
.super Ljava/lang/Object;
.source "GridExecutorService.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/executor/GridExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskTerminateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/executor/GridExecutorService;)V
    .locals 0

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/executor/GridExecutorService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/executor/GridExecutorService;
    .param p2, "x1"    # Lorg/apache/ignite/internal/executor/GridExecutorService$1;

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener<TT;>;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener<TT;>;"
    .local p1, "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    # getter for: Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->access$100(Lorg/apache/ignite/internal/executor/GridExecutorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    # getter for: Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->access$200(Lorg/apache/ignite/internal/executor/GridExecutorService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
