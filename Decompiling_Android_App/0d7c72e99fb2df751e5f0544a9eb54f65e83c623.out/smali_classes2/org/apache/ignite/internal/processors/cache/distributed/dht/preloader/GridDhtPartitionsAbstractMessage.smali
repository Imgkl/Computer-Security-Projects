.class abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridDhtPartitionsAbstractMessage.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private exchId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

.field private lastVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "exchId"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .param p2, "lastVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->exchId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    .line 60
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->lastVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 61
    return-void
.end method


# virtual methods
.method public allowForStartup()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->exchId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    return-object v0
.end method

.method public lastVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->lastVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 113
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    const-string v0, "exchId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->exchId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 129
    :pswitch_1
    const-string v0, "lastVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->lastVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 131
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 91
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :pswitch_0
    const-string v1, "exchId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->exchId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 99
    :pswitch_1
    const-string v1, "lastVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->lastVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
