.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioMessageReader;
.super Ljava/lang/Object;
.source "GridNioMessageReader.java"


# virtual methods
.method public abstract messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract read(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/nio/ByteBuffer;)Z
    .param p1    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
