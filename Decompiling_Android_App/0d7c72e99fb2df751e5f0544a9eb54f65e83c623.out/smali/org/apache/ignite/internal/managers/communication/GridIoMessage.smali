.class public Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
.super Ljava/lang/Object;
.source "GridIoMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

.field private ordered:Z

.field private plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private skipOnTimeout:Z

.field private timeout:J

.field private topic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private topicBytes:[B

.field private topicOrd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;ZJZ)V
    .locals 2
    .param p1, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "topicOrd"    # I
    .param p4, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p5, "ordered"    # Z
    .param p6, "timeout"    # J
    .param p8, "skipOnTimeout"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    .line 87
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const/16 v0, 0x7f

    if-le p3, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 93
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 94
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic:Ljava/lang/Object;

    .line 95
    iput p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    .line 96
    iput-boolean p5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->ordered:Z

    .line 97
    iput-wide p6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->timeout:J

    .line 98
    iput-boolean p8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->skipOnTimeout:Z

    .line 99
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 315
    const/16 v0, 0x8

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isOrdered()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->ordered:Z

    return v0
.end method

.method public message()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    return-object v0
.end method

.method policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 244
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 249
    :pswitch_0
    const-string v2, "msg"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 251
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 257
    :pswitch_1
    const-string v2, "ordered"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->ordered:Z

    .line 259
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 267
    :pswitch_2
    const-string v2, "plc"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 269
    .local v0, "plcOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->fromOrdinal(I)Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 274
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 277
    .end local v0    # "plcOrd":B
    :pswitch_3
    const-string v2, "skipOnTimeout"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->skipOnTimeout:Z

    .line 279
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 285
    :pswitch_4
    const-string/jumbo v2, "timeout"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->timeout:J

    .line 287
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 293
    :pswitch_5
    const-string/jumbo v2, "topicBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes:[B

    .line 295
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 301
    :pswitch_6
    const-string/jumbo v2, "topicOrd"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    .line 303
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public skipOnTimeout()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->skipOnTimeout:Z

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->timeout:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method topic(Ljava/lang/Object;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/Object;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method topicBytes([B)V
    .locals 0
    .param p1, "topicBytes"    # [B

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes:[B

    .line 134
    return-void
.end method

.method topicBytes()[B
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes:[B

    return-object v0
.end method

.method topicOrdinal()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 185
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 237
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 192
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :pswitch_0
    const-string v0, "msg"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 200
    :pswitch_1
    const-string v0, "ordered"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->ordered:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 206
    :pswitch_2
    const-string v2, "plc"

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 207
    goto :goto_0

    .line 206
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 209
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 212
    :pswitch_3
    const-string v0, "skipOnTimeout"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->skipOnTimeout:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 218
    :pswitch_4
    const-string/jumbo v0, "timeout"

    iget-wide v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->timeout:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 224
    :pswitch_5
    const-string/jumbo v0, "topicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 230
    :pswitch_6
    const-string/jumbo v0, "topicOrd"

    iget v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrd:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
