.class public interface abstract Lorg/apache/ignite/compute/ComputeJobResult;
.super Ljava/lang/Object;
.source "ComputeJobResult.java"


# virtual methods
.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getException()Lorg/apache/ignite/IgniteException;
.end method

.method public abstract getJob()Lorg/apache/ignite/compute/ComputeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;
.end method

.method public abstract getNode()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract isCancelled()Z
.end method
