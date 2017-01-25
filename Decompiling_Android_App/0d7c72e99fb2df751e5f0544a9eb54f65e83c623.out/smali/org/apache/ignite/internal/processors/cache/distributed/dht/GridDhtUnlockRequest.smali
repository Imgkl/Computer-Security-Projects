.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
.source "GridDhtUnlockRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private nearKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cacheId"    # I
    .param p2, "dhtCnt"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;-><init>(II)V

    .line 55
    return-void
.end method


# virtual methods
.method public addNearKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x24

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0xa

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
    .line 88
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 91
    return-void
.end method

.method public nearKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

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
    .line 81
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 84
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 128
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 145
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    const-string v0, "nearKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    .line 138
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

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

    .line 100
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 112
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_0
    const-string v1, "nearKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
