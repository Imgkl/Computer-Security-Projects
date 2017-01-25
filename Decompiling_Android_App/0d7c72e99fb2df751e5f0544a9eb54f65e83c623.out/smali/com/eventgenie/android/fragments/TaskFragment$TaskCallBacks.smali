.class public interface abstract Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskCallBacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract doInBackground(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TX;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getParams()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
