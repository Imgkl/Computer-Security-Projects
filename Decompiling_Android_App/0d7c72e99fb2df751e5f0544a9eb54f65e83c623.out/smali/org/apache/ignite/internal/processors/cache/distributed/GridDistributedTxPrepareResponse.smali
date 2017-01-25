.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridDistributedTxPrepareResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private candsBytes:[B

.field private err:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private errBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "xid"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "xid"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 77
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    .line 78
    return-void
.end method


# virtual methods
.method public candidates(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "cands":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    .line 106
    return-void
.end method

.method public candidatesForKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 143
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x1a

    return v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    .line 92
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 222
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
    .line 128
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->errBytes:[B

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->errBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    .line 135
    :cond_1
    return-void
.end method

.method public isRollback()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 113
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 116
    .local v1, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->cands:Ljava/util/Map;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->errBytes:[B

    .line 124
    :cond_2
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 187
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :pswitch_0
    const-string v1, "candsBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    .line 197
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 203
    :pswitch_1
    const-string v1, "errBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->errBytes:[B

    .line 205
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 227
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;

    const-string v2, "err"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->err:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 155
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 165
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :pswitch_0
    const-string v1, "candsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->candsBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 173
    :pswitch_1
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
