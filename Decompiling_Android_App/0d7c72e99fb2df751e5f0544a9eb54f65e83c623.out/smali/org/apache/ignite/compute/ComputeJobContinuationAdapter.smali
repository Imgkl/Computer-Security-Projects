.class public abstract Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "ComputeJobContinuationAdapter.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobContinuation;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;
    .annotation runtime Lorg/apache/ignite/resources/JobContextResource;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>([Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public callcc()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobContext;->callcc()V

    .line 120
    :cond_0
    return-void
.end method

.method public heldcc()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobContext;->heldcc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public holdcc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobContext;->holdcc()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public holdcc(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobContinuationAdapter;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/compute/ComputeJobContext;->holdcc(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
