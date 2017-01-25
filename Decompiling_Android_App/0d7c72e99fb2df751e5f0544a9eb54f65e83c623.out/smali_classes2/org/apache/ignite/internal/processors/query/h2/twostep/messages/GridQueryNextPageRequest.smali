.class public Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;
.super Ljava/lang/Object;
.source "GridQueryNextPageRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private pageSize:I

.field private qry:I

.field private qryReqId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .param p1, "qryReqId"    # J
    .param p3, "qry"    # I
    .param p4, "pageSize"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qryReqId:J

    .line 56
    iput p3, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qry:I

    .line 57
    iput p4, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->pageSize:I

    .line 58
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x6c

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x3

    return v0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->pageSize:I

    return v0
.end method

.method public query()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qry:I

    return v0
.end method

.method public queryRequestId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qryReqId:J

    return-wide v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 125
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    const-string v1, "pageSize"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->pageSize:I

    .line 132
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 138
    :pswitch_1
    const-string v1, "qry"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qry:I

    .line 140
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 146
    :pswitch_2
    const-string v1, "qryReqId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qryReqId:J

    .line 148
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 90
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 97
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_0
    const-string v1, "pageSize"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->pageSize:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 105
    :pswitch_1
    const-string v1, "qry"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qry:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 111
    :pswitch_2
    const-string v1, "qryReqId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryNextPageRequest;->qryReqId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
