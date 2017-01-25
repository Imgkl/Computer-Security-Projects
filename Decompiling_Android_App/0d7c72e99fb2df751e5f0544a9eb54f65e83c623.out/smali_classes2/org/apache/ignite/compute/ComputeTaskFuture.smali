.class public interface abstract Lorg/apache/ignite/compute/ComputeTaskFuture;
.super Ljava/lang/Object;
.source "ComputeTaskFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteFuture",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
.end method
