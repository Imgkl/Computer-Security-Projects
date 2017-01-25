.class public Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.source "IgfsSyncMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private order:J

.field private res:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "order"    # J
    .param p3, "res"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order:J

    .line 52
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->res:Z

    .line 53
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x47

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x2

    return v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order:J

    return-wide v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 110
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :pswitch_0
    const-string v1, "order"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order:J

    .line 120
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 126
    :pswitch_1
    const-string v1, "res"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->res:Z

    .line 128
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public response()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->res:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

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

    .line 76
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 78
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 88
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    const-string v1, "order"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 96
    :pswitch_1
    const-string v1, "res"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->res:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
