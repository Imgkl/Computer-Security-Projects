.class public Lorg/apache/ignite/internal/direct/DirectMessageReader;
.super Ljava/lang/Object;
.source "DirectMessageReader.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/MessageReader;


# instance fields
.field private lastRead:Z

.field private state:I

.field private final stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V
    .locals 1
    .param p1, "msgFactory"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .param p2, "msgFormatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;-><init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    .line 46
    return-void
.end method


# virtual methods
.method public beforeMessageRead()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public incrementState()V
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->state:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->state:I

    .line 288
    return-void
.end method

.method public isLastRead()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    return v0
.end method

.method public readBitSet(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBitSet()Ljava/util/BitSet;

    move-result-object v0

    .line 215
    .local v0, "val":Ljava/util/BitSet;
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 217
    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBoolean()Z

    move-result v0

    .line 125
    .local v0, "val":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 127
    return v0
.end method

.method public readBooleanArray(Ljava/lang/String;)[Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBooleanArray()[Z

    move-result-object v0

    .line 197
    .local v0, "arr":[Z
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 199
    return-object v0
.end method

.method public readByte(Ljava/lang/String;)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByte()B

    move-result v0

    .line 62
    .local v0, "val":B
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 64
    return v0
.end method

.method public readByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByteArray()[B

    move-result-object v0

    .line 134
    .local v0, "arr":[B
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 136
    return-object v0
.end method

.method public readChar(Ljava/lang/String;)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readChar()C

    move-result v0

    .line 116
    .local v0, "val":C
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 118
    return v0
.end method

.method public readCharArray(Ljava/lang/String;)[C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readCharArray()[C

    move-result-object v0

    .line 188
    .local v0, "arr":[C
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 190
    return-object v0
.end method

.method public readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
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

    .prologue
    .line 258
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readCollection(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    .line 260
    .local v0, "col":Ljava/util/Collection;, "TC;"
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 262
    return-object v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readDouble()D

    move-result-wide v0

    .line 107
    .local v0, "val":D
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 109
    return-wide v0
.end method

.method public readDoubleArray(Ljava/lang/String;)[D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readDoubleArray()[D

    move-result-object v0

    .line 179
    .local v0, "arr":[D
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 181
    return-object v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readFloat()F

    move-result v0

    .line 98
    .local v0, "val":F
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 100
    return v0
.end method

.method public readFloatArray(Ljava/lang/String;)[F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 168
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readFloatArray()[F

    move-result-object v0

    .line 170
    .local v0, "arr":[F
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 172
    return-object v0
.end method

.method public readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readIgniteUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 233
    .local v0, "val":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 235
    return-object v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result v0

    .line 80
    .local v0, "val":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 82
    return v0
.end method

.method public readIntArray(Ljava/lang/String;)[I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readIntArray()[I

    move-result-object v0

    .line 152
    .local v0, "arr":[I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 154
    return-object v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readLong()J

    move-result-wide v0

    .line 89
    .local v0, "val":J
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 91
    return-wide v0
.end method

.method public readLongArray(Ljava/lang/String;)[J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readLongArray()[J

    move-result-object v0

    .line 161
    .local v0, "arr":[J
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 163
    return-object v0
.end method

.method public readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keyType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p3, "valType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p4, "linked"    # Z
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

    .prologue
    .line 268
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readMap(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v0

    .line 270
    .local v0, "map":Ljava/util/Map;, "TM;"
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 272
    return-object v0
.end method

.method public readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readMessage()Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    .line 242
    .local v0, "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 244
    return-object v0
.end method

.method public readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
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

    .prologue
    .line 249
    .local p3, "itemCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1, p2, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readObjectArray(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "msg":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 253
    return-object v0
.end method

.method public readShort(Ljava/lang/String;)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readShort()S

    move-result v0

    .line 71
    .local v0, "val":S
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 73
    return v0
.end method

.method public readShortArray(Ljava/lang/String;)[S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readShortArray()[S

    move-result-object v0

    .line 143
    .local v0, "arr":[S
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 145
    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 208
    return-object v0
.end method

.method public readUuid(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readUuid()Ljava/util/UUID;

    move-result-object v0

    .line 224
    .local v0, "val":Ljava/util/UUID;
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->lastRead:Z

    .line 226
    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 51
    return-void
.end method

.method public state()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageReader;->state:I

    return v0
.end method
