.class public interface abstract Lorg/apache/ignite/compute/ComputeJobSibling;
.super Ljava/lang/Object;
.source "ComputeJobSibling.java"


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract getJobId()Lorg/apache/ignite/lang/IgniteUuid;
.end method
