.class Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;
.super Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;
.source "ComputeTaskInternalFuture.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTaskFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl",
        "<TR;>;",
        "Lorg/apache/ignite/compute/ComputeTaskFuture",
        "<TR;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture<TR;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/ComputeTaskInternalFuture;Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .param p2, "x1"    # Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;-><init>(Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V

    return-void
.end method


# virtual methods
.method public getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    check-cast v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v0

    return-object v0
.end method
