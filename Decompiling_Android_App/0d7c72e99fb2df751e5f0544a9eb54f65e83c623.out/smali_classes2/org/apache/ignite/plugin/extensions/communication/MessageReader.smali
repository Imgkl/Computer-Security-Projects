.class public interface abstract Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
.super Ljava/lang/Object;
.source "MessageReader.java"


# virtual methods
.method public abstract beforeMessageRead()Z
.end method

.method public abstract incrementState()V
.end method

.method public abstract isLastRead()Z
.end method

.method public abstract readBitSet(Ljava/lang/String;)Ljava/util/BitSet;
.end method

.method public abstract readBoolean(Ljava/lang/String;)Z
.end method

.method public abstract readBooleanArray(Ljava/lang/String;)[Z
.end method

.method public abstract readByte(Ljava/lang/String;)B
.end method

.method public abstract readByteArray(Ljava/lang/String;)[B
.end method

.method public abstract readChar(Ljava/lang/String;)C
.end method

.method public abstract readCharArray(Ljava/lang/String;)[C
.end method

.method public abstract readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<*>;>(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract readDouble(Ljava/lang/String;)D
.end method

.method public abstract readDoubleArray(Ljava/lang/String;)[D
.end method

.method public abstract readFloat(Ljava/lang/String;)F
.end method

.method public abstract readFloatArray(Ljava/lang/String;)[F
.end method

.method public abstract readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract readInt(Ljava/lang/String;)I
.end method

.method public abstract readIntArray(Ljava/lang/String;)[I
.end method

.method public abstract readLong(Ljava/lang/String;)J
.end method

.method public abstract readLongArray(Ljava/lang/String;)[J
.end method

.method public abstract readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/util/Map",
            "<**>;>(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Z)TM;"
        }
    .end annotation
.end method

.method public abstract readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract readShort(Ljava/lang/String;)S
.end method

.method public abstract readShortArray(Ljava/lang/String;)[S
.end method

.method public abstract readString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract readUuid(Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract setBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract state()I
.end method
