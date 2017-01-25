.class public interface abstract Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;
.super Ljava/lang/Object;
.source "IgnitedAsyncTaskHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContextT:",
        "Landroid/content/Context;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContextT;"
        }
    .end annotation
.end method

.method public abstract onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;TReturnT;)Z"
        }
    .end annotation
.end method

.method public abstract onTaskFailed(Landroid/content/Context;Ljava/lang/Exception;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;",
            "Ljava/lang/Exception;",
            ")Z"
        }
    .end annotation
.end method

.method public varargs abstract onTaskProgress(Landroid/content/Context;[Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;[TProgressT;)Z"
        }
    .end annotation
.end method

.method public abstract onTaskStarted(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)Z"
        }
    .end annotation
.end method

.method public abstract onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;TReturnT;)Z"
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)V"
        }
    .end annotation
.end method
