.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.source "IgfsFragmentizerResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 48
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x46

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public fileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 87
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_0
    const-string v1, "fileId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 97
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 61
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 71
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    const-string v1, "fileId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
