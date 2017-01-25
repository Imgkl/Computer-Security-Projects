.class public Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.source "IgfsAckMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private err:Lorg/apache/ignite/IgniteCheckedException;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "id"    # J
    .param p4, "err"    # Lorg/apache/ignite/IgniteCheckedException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 64
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->id:J

    .line 65
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 66
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x40

    return v0
.end method

.method public error()Lorg/apache/ignite/IgniteCheckedException;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x3

    return v0
.end method

.method public fileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->errBytes:[B

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->errBytes:[B

    invoke-interface {p1, v0, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 103
    :cond_0
    return-void
.end method

.method public id()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->id:J

    return-wide v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-interface {p1, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->errBytes:[B

    .line 95
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :pswitch_0
    const-string v1, "errBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->errBytes:[B

    .line 157
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 163
    :pswitch_1
    const-string v1, "fileId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 165
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 171
    :pswitch_2
    const-string v1, "id"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->id:J

    .line 173
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 109
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 119
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 127
    :pswitch_1
    const-string v1, "fileId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 133
    :pswitch_2
    const-string v1, "id"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->id:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
