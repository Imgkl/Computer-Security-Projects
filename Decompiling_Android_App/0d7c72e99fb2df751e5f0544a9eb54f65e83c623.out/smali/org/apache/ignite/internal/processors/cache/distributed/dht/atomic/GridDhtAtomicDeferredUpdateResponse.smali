.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridDhtAtomicDeferredUpdateResponse.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_MSG_IDX:I

.field private static final serialVersionUID:J


# instance fields
.field private futVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->$assertionsDisabled:Z

    .line 38
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->nextIndexId()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->CACHE_MSG_IDX:I

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/util/Collection;)V
    .locals 1
    .param p1, "cacheId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "futVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 62
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->cacheId:I

    .line 65
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->futVers:Ljava/util/Collection;

    .line 66
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x25

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    return v0
.end method

.method public futureVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->futVers:Ljava/util/Collection;

    return-object v0
.end method

.method public lookupIndex()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->CACHE_MSG_IDX:I

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :pswitch_0
    const-string v1, "futVers"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->futVers:Ljava/util/Collection;

    .line 115
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 79
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 89
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_0
    const-string v1, "futVers"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->futVers:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
