.class public interface abstract Lcom/urbanairship/PendingResult;
.super Ljava/lang/Object;
.source "PendingResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/PendingResult$ResultCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isDone()Z
.end method

.method public abstract onResult(Lcom/urbanairship/PendingResult$ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<TT;>;)V"
        }
    .end annotation
.end method
