.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridCacheQueryResponse.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private data:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private dataBytes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = [B
    .end annotation
.end field

.field private err:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private fields:Z

.field private finished:Z

.field private metaDataBytes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = [B
    .end annotation
.end field

.field private metadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private reqId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(IJLjava/lang/Throwable;)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "reqId"    # J
    .param p4, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 100
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->cacheId:I

    .line 101
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->reqId:J

    .line 102
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->err:Ljava/lang/Throwable;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    .line 104
    return-void
.end method

.method public constructor <init>(IJZZ)V
    .locals 0
    .param p1, "cacheId"    # I
    .param p2, "reqId"    # J
    .param p4, "finished"    # Z
    .param p5, "fields"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 88
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->cacheId:I

    .line 89
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->reqId:J

    .line 90
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    .line 91
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fields:Z

    .line 92
    return-void
.end method


# virtual methods
.method public data()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    return-object v0
.end method

.method public data(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    .line 167
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x3b

    return v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public fields()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fields:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 331
    const/16 v0, 0x9

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
    .line 131
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->errBytes:[B

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->errBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->err:Ljava/lang/Throwable;

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metaDataBytes:Ljava/util/Collection;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata:Ljava/util/List;

    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->dataBytes:Ljava/util/Collection;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    .line 138
    return-void
.end method

.method public finished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    .line 181
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    return v0
.end method

.method public metadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata:Ljava/util/List;

    return-object v0
.end method

.method public metadata(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "metadata":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata:Ljava/util/List;

    .line 152
    return-void
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
    .line 109
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 111
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->err:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->err:Ljava/lang/Throwable;

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->errBytes:[B

    .line 114
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata:Ljava/util/List;

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metaDataBytes:Ljava/util/Collection;

    .line 115
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->dataBytes:Ljava/util/Collection;

    .line 117
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 120
    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 264
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :pswitch_0
    const-string v1, "dataBytes"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->dataBytes:Ljava/util/Collection;

    .line 274
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 280
    :pswitch_1
    const-string v1, "errBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->errBytes:[B

    .line 282
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 288
    :pswitch_2
    const-string v1, "fields"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fields:Z

    .line 290
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 296
    :pswitch_3
    const-string v1, "finished"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    .line 298
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 304
    :pswitch_4
    const-string v1, "metaDataBytes"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metaDataBytes:Ljava/util/Collection;

    .line 306
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 312
    :pswitch_5
    const-string v1, "reqId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->reqId:J

    .line 314
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestId()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->reqId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

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

    .line 206
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 208
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 218
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :pswitch_0
    const-string v1, "dataBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->dataBytes:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 226
    :pswitch_1
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 232
    :pswitch_2
    const-string v1, "fields"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fields:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 238
    :pswitch_3
    const-string v1, "finished"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 244
    :pswitch_4
    const-string v1, "metaDataBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metaDataBytes:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 250
    :pswitch_5
    const-string v1, "reqId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->reqId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
