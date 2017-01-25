.class public interface abstract Lorg/apache/ignite/compute/ComputeJobContext;
.super Ljava/lang/Object;
.source "ComputeJobContext.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobContinuation;


# virtual methods
.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract getAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract getJobId()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setAttributes(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation
.end method
