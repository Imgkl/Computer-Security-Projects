.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioMessageWriter;
.super Ljava/lang/Object;
.source "GridNioMessageWriter.java"


# virtual methods
.method public abstract write(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/nio/ByteBuffer;)Z
    .param p1    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract writeFully(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)I
    .param p1    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
