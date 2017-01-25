.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
.super Ljava/lang/Object;
.source "GridNioServerListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
.end method

.method public abstract onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
.end method

.method public abstract onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
.end method
