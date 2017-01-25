.class public interface abstract Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;
.super Ljava/lang/Object;
.source "IgnitedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ignition/core/tasks/IgnitedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IgnitedAsyncTaskCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContextT:",
        "Landroid/content/Context;",
        "ParameterT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract call(Lcom/github/ignition/core/tasks/IgnitedAsyncTask;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTask",
            "<TContextT;TParameterT;TProgressT;TReturnT;>;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
