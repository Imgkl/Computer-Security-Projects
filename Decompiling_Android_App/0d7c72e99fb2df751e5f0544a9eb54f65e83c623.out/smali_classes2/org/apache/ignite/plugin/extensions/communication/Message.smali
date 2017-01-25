.class public interface abstract Lorg/apache/ignite/plugin/extensions/communication/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract directType()B
.end method

.method public abstract fieldsCount()B
.end method

.method public abstract readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
.end method

.method public abstract writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
.end method
