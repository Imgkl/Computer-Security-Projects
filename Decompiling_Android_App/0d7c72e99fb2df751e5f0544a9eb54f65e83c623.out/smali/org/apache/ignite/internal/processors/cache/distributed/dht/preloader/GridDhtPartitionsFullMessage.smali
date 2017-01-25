.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;
.source "GridDhtPartitionsFullMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private parts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private partsBytes:[B

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p1, "id"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "lastVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 71
    return-void
.end method


# virtual methods
.method public addFullPartitionsMap(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "fullMap"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic allowForStartup()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->allowForStartup()Z

    move-result v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x2e

    return v0
.end method

.method public bridge synthetic exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v0

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x7

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partsBytes:[B

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partsBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    .line 118
    :cond_0
    return-void
.end method

.method public bridge synthetic lastVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->lastVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public partitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partsBytes:[B

    .line 96
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 156
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 181
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 160
    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_0
    const-string v0, "partsBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partsBytes:[B

    .line 166
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 172
    :pswitch_1
    const-string/jumbo v0, "topVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 174
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 196
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    const-string v2, "partCnt"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->parts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 110
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 124
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsAbstractMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 134
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    const-string v1, "partsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partsBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 142
    :pswitch_1
    const-string/jumbo v1, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
