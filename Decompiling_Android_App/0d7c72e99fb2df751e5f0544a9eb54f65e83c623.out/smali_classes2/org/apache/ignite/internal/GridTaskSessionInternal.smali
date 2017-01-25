.class public interface abstract Lorg/apache/ignite/internal/GridTaskSessionInternal;
.super Ljava/lang/Object;
.source "GridTaskSessionInternal.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTaskSession;


# virtual methods
.method public abstract getCheckpointSpi()Ljava/lang/String;
.end method

.method public abstract getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isFullSupport()Z
.end method

.method public abstract isTaskNode()Z
.end method

.method public abstract onClosed()V
.end method

.method public abstract session()Lorg/apache/ignite/internal/GridTaskSessionInternal;
.end method

.method public abstract subjectId()Ljava/util/UUID;
.end method
