.class public interface abstract Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;
.super Ljava/lang/Object;
.source "IgnitedAsyncTaskContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onTaskCompleted(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)Z"
        }
    .end annotation
.end method

.method public abstract onTaskFailed(Ljava/lang/Exception;)Z
.end method

.method public varargs abstract onTaskProgress([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgressT;)Z"
        }
    .end annotation
.end method

.method public abstract onTaskStarted()Z
.end method

.method public abstract onTaskSuccess(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)Z"
        }
    .end annotation
.end method
