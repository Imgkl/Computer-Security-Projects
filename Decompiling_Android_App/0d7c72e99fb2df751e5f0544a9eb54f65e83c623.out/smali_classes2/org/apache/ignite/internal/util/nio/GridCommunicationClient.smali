.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
.super Ljava/lang/Object;
.source "GridCommunicationClient.java"


# virtual methods
.method public abstract async()Z
.end method

.method public abstract close()Z
.end method

.method public abstract closed()Z
.end method

.method public abstract doHandshake(Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract flushIfNeeded(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract forceClose()V
.end method

.method public abstract getIdleTime()J
.end method

.method public abstract release()V
.end method

.method public abstract reserve()Z
.end method

.method public abstract reserved()Z
.end method

.method public abstract sendMessage(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract sendMessage([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
    .param p1    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
