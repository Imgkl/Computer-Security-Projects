.class public interface abstract Lorg/apache/ignite/compute/ComputeJobContinuation;
.super Ljava/lang/Object;
.source "ComputeJobContinuation.java"


# virtual methods
.method public abstract callcc()V
.end method

.method public abstract heldcc()Z
.end method

.method public abstract holdcc()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract holdcc(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
