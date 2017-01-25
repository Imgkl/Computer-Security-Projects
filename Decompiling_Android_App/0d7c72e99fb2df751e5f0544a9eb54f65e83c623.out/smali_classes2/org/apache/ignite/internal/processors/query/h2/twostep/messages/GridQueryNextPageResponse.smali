.class public Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;
.super Ljava/lang/Object;
.source "GridQueryNextPageResponse.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private allRows:I

.field private page:I

.field private qry:I

.field private qryReqId:J

.field private rows:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(JIII[B)V
    .locals 1
    .param p1, "qryReqId"    # J
    .param p3, "qry"    # I
    .param p4, "page"    # I
    .param p5, "allRows"    # I
    .param p6, "rows"    # [B

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    .line 67
    iput p3, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    .line 68
    iput p4, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    .line 69
    iput p5, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    .line 70
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    .line 71
    return-void
.end method


# virtual methods
.method public allRows()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x6d

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x5

    return v0
.end method

.method public page()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    return v0
.end method

.method public query()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    return v0
.end method

.method public queryRequestId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    .line 122
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    .line 123
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    .line 124
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 182
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :pswitch_0
    const-string v1, "allRows"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    .line 189
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 195
    :pswitch_1
    const-string v1, "page"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    .line 197
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 203
    :pswitch_2
    const-string v1, "qry"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    .line 205
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 211
    :pswitch_3
    const-string v1, "qryReqId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    .line 213
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 219
    :pswitch_4
    const-string v1, "rows"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    .line 221
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public rows()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 111
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 112
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 113
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 115
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 142
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 175
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_0
    const-string v1, "allRows"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->allRows:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 150
    :pswitch_1
    const-string v1, "page"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->page:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 156
    :pswitch_2
    const-string v1, "qry"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qry:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 162
    :pswitch_3
    const-string v1, "qryReqId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->qryReqId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 168
    :pswitch_4
    const-string v1, "rows"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageResponse;->rows:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
