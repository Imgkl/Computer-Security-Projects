.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;
.super Ljava/lang/Object;
.source "HadoopTaskInput.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract key()Ljava/lang/Object;
.end method

.method public abstract next()Z
.end method

.method public abstract values()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end method
