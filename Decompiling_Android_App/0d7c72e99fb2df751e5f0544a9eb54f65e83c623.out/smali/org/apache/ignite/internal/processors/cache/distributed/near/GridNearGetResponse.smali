.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridNearGetResponse.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;
.implements Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private err:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private invalidParts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = I
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    .line 78
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "cacheId"    # I
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    .line 92
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_2
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->cacheId:I

    .line 97
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 98
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 99
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 100
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0x32

    return v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public entries(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    .line 133
    return-void
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->err:Ljava/lang/Throwable;

    .line 170
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 344
    const/16 v0, 0xa

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 192
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->cacheId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 194
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 196
    .local v2, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {v2, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 199
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->errBytes:[B

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->errBytes:[B

    invoke-interface {v3, v4, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->err:Ljava/lang/Throwable;

    .line 201
    :cond_1
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public invalidPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    return-object v0
.end method

.method public invalidPartitions(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    .line 148
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 149
    return-void
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 177
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->cacheId:I

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 179
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 181
    .local v2, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->err:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->err:Ljava/lang/Throwable;

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->errBytes:[B

    .line 186
    :cond_1
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 269
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 273
    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    :pswitch_0
    const-string v0, "entries"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    .line 279
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 285
    :pswitch_1
    const-string v0, "errBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->errBytes:[B

    .line 287
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 293
    :pswitch_2
    const-string v0, "futId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 295
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 301
    :pswitch_3
    const-string v0, "invalidParts"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    .line 303
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 309
    :pswitch_4
    const-string v0, "miniId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 311
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 312
    goto :goto_0

    .line 314
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 317
    :pswitch_5
    const-string/jumbo v0, "topVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 319
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 320
    goto/16 :goto_0

    .line 322
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 325
    :pswitch_6
    const-string/jumbo v0, "ver"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 327
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 207
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 217
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :pswitch_0
    const-string v1, "entries"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 225
    :pswitch_1
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 231
    :pswitch_2
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 237
    :pswitch_3
    const-string v1, "invalidParts"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidParts:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 243
    :pswitch_4
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 249
    :pswitch_5
    const-string/jumbo v1, "topVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 255
    :pswitch_6
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
