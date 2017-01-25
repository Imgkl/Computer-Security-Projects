.class public interface abstract Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;
.super Ljava/lang/Object;
.source "IgfsServerHandler.java"


# virtual methods
.method public abstract handleAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;",
            "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
            "Ljava/io/DataInput;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onClosed(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;)V
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
