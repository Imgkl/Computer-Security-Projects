.class public interface abstract Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# virtual methods
.method public abstract afterInnerMessageWrite(Z)V
.end method

.method public abstract beforeInnerMessageWrite()V
.end method

.method public abstract incrementState()V
.end method

.method public abstract isHeaderWritten()Z
.end method

.method public abstract onHeaderWritten()V
.end method

.method public abstract reset()V
.end method

.method public abstract setBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract state()I
.end method

.method public abstract writeBitSet(Ljava/lang/String;Ljava/util/BitSet;)Z
.end method

.method public abstract writeBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract writeBooleanArray(Ljava/lang/String;[Z)Z
.end method

.method public abstract writeByte(Ljava/lang/String;B)Z
.end method

.method public abstract writeByteArray(Ljava/lang/String;[B)Z
.end method

.method public abstract writeByteArray(Ljava/lang/String;[BJI)Z
.end method

.method public abstract writeChar(Ljava/lang/String;C)Z
.end method

.method public abstract writeCharArray(Ljava/lang/String;[C)Z
.end method

.method public abstract writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract writeDouble(Ljava/lang/String;D)Z
.end method

.method public abstract writeDoubleArray(Ljava/lang/String;[D)Z
.end method

.method public abstract writeFloat(Ljava/lang/String;F)Z
.end method

.method public abstract writeFloatArray(Ljava/lang/String;[F)Z
.end method

.method public abstract writeHeader(BB)Z
.end method

.method public abstract writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z
.end method

.method public abstract writeInt(Ljava/lang/String;I)Z
.end method

.method public abstract writeIntArray(Ljava/lang/String;[I)Z
.end method

.method public abstract writeLong(Ljava/lang/String;J)Z
.end method

.method public abstract writeLongArray(Ljava/lang/String;[J)Z
.end method

.method public abstract writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
.end method

.method public abstract writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract writeShort(Ljava/lang/String;S)Z
.end method

.method public abstract writeShortArray(Ljava/lang/String;[S)Z
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z
.end method
