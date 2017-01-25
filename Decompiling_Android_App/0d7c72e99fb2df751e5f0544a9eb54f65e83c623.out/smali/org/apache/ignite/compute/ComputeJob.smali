.class public interface abstract Lorg/apache/ignite/compute/ComputeJob;
.super Ljava/lang/Object;
.source "ComputeJob.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method
