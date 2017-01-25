.class public Lorg/apache/ignite/internal/direct/DirectMessageWriter;
.super Ljava/lang/Object;
.source "DirectMessageWriter.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;


# instance fields
.field private final state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

.field private final stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-direct {v0, v1, v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;-><init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    .line 35
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    return-void
.end method


# virtual methods
.method public afterInnerMessageWrite(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->afterInnerMessageWrite(Z)V

    .line 253
    return-void
.end method

.method public beforeInnerMessageWrite()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->beforeInnerMessageWrite()V

    .line 248
    return-void
.end method

.method public incrementState()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->incrementState()V

    .line 243
    return-void
.end method

.method public isHeaderWritten()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->isTypeWritten()Z

    move-result v0

    return v0
.end method

.method public onHeaderWritten()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->onTypeWritten()V

    .line 233
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->reset()V

    .line 258
    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 40
    return-void
.end method

.method public state()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->state:Lorg/apache/ignite/internal/direct/DirectMessageWriterState;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectMessageWriterState;->state()I

    move-result v0

    return v0
.end method

.method public writeBitSet(Ljava/lang/String;Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/util/BitSet;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBitSet(Ljava/util/BitSet;)V

    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBoolean(Z)V

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeBooleanArray(Ljava/lang/String;[Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [Z
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBooleanArray([Z)V

    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeByte(Ljava/lang/String;B)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByte(B)V

    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeByteArray(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([B)V

    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeByteArray(Ljava/lang/String;[BJI)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [B
    .param p3, "off"    # J
    .param p5, "len"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([BJI)V

    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeChar(Ljava/lang/String;C)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeChar(C)V

    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeCharArray(Ljava/lang/String;[C)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [C
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeCharArray([C)V

    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
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

    .prologue
    .line 212
    .local p2, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3, p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeCollection(Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeDouble(Ljava/lang/String;D)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeDouble(D)V

    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeDoubleArray(Ljava/lang/String;[D)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [D
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeDoubleArray([D)V

    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeFloat(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeFloat(F)V

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeFloatArray(Ljava/lang/String;[F)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeFloatArray([F)V

    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeHeader(BB)Z
    .locals 1
    .param p1, "type"    # B
    .param p2, "fieldCnt"    # B

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByte(B)V

    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeIgniteUuid(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeIntArray(Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeIntArray([I)V

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeLong(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeLong(J)V

    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeLongArray(Ljava/lang/String;[J)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [J
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeLongArray([J)V

    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "keyType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p4, "valType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
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

    .prologue
    .line 220
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3, p4, p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeMap(Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeMessage(Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
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

    .prologue
    .line 205
    .local p2, "arr":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2, p3, p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeObjectArray([Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeShort(Ljava/lang/String;S)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeShort(S)V

    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeShortArray(Ljava/lang/String;[S)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [S
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeShortArray([S)V

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method

.method public writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/util/UUID;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeUuid(Ljava/util/UUID;)V

    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectMessageWriter;->stream:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished()Z

    move-result v0

    return v0
.end method
