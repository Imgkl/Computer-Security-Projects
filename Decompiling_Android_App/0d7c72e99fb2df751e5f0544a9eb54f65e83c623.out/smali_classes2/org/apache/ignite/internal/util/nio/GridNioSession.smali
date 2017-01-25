.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioSession;
.super Ljava/lang/Object;
.source "GridNioSession.java"


# virtual methods
.method public abstract accepted()Z
.end method

.method public abstract addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract bytesReceived()J
.end method

.method public abstract bytesSent()J
.end method

.method public abstract close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract closeTime()J
.end method

.method public abstract createTime()J
.end method

.method public abstract lastReceiveTime()J
.end method

.method public abstract lastSendScheduleTime()J
.end method

.method public abstract lastSendTime()J
.end method

.method public abstract localAddress()Ljava/net/InetSocketAddress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract meta(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract pauseReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract readsPaused()Z
.end method

.method public abstract recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract recoveryDescriptor(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V
.end method

.method public abstract remoteAddress()Ljava/net/InetSocketAddress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removeMeta(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract resumeReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation
.end method
