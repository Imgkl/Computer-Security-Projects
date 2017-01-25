.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.source "IgfsFragmentizerRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private fragmentRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;)V
    .locals 0
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "fragmentRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fragmentRanges:Ljava/util/Collection;

    .line 60
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x45

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x2

    return v0
.end method

.method public fileId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public fragmentRanges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fragmentRanges:Ljava/util/Collection;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 117
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_0
    const-string v1, "fileId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 127
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 133
    :pswitch_1
    const-string v1, "fragmentRanges"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fragmentRanges:Ljava/util/Collection;

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

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

    .line 83
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 85
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 95
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    const-string v1, "fileId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 103
    :pswitch_1
    const-string v1, "fragmentRanges"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fragmentRanges:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
