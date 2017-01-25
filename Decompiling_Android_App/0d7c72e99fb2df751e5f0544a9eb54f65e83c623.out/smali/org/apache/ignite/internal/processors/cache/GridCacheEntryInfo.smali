.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
.super Ljava/lang/Object;
.source "GridCacheEntryInfo.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SIZE_OVERHEAD:I = 0x4c

.field private static final serialVersionUID:J


# instance fields
.field private cacheId:I

.field private deleted:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private expireTime:J

.field private isNew:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyBytes:[B

.field private ttl:J

.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId:I

    return v0
.end method

.method public cacheId(I)V
    .locals 0
    .param p1, "cacheId"    # I

    .prologue
    .line 80
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId:I

    .line 81
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x5b

    return v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    return-wide v0
.end method

.method public expireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 137
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x7

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->deleted:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew:Z

    return v0
.end method

.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public key(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 88
    return-void
.end method

.method public keyBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    .line 95
    return-void
.end method

.method public keyBytes()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    return-object v0
.end method

.method public marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 370
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    if-eqz v3, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 372
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 375
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 378
    :cond_4
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 379
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 386
    :cond_5
    :goto_2
    return-void

    .line 381
    :cond_6
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 383
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 384
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    goto :goto_2
.end method

.method public marshalledSize(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)I
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, "size":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    .line 351
    .local v0, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    .line 354
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v2, :cond_2

    .line 355
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 357
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 362
    :goto_0
    add-int/lit8 v2, v1, 0x4c

    return v2

    .line 360
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 258
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 320
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :pswitch_0
    const-string v0, "cacheId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId:I

    .line 265
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 271
    :pswitch_1
    const-string v0, "expireTime"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 273
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 274
    goto :goto_0

    .line 276
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 279
    :pswitch_2
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 281
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 287
    :pswitch_3
    const-string v0, "keyBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    .line 289
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 290
    goto :goto_0

    .line 292
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 295
    :pswitch_4
    const-string/jumbo v0, "ttl"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl:J

    .line 297
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 298
    goto :goto_0

    .line 300
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 303
    :pswitch_5
    const-string/jumbo v0, "val"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 305
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 311
    :pswitch_6
    const-string/jumbo v0, "ver"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 313
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->deleted:Z

    .line 193
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew:Z

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl:J

    return-wide v0
.end method

.method public ttl(J)V
    .locals 1
    .param p1, "ttl"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl:J

    .line 151
    return-void
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 396
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v4, :cond_3

    .line 397
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 399
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    .line 401
    .local v0, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    invoke-interface {v4, v0, v5, p2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "key0":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v5}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 408
    .end local v0    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v1    # "key0":Ljava/lang/Object;
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v4, :cond_1

    .line 409
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 411
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 413
    .local v2, "remaining":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_4

    move-wide v4, v6

    :goto_1
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 416
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 417
    iput-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    .line 418
    :cond_2
    return-void

    .line 406
    .end local v2    # "remaining":J
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 413
    .restart local v2    # "remaining":J
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    goto :goto_1
.end method

.method public unmarshalValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 341
    :cond_0
    return-void
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 123
    return-void
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 165
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 199
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 206
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 251
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :pswitch_0
    const-string v1, "cacheId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 214
    :pswitch_1
    const-string v1, "expireTime"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 220
    :pswitch_2
    const-string v1, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 226
    :pswitch_3
    const-string v1, "keyBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 232
    :pswitch_4
    const-string/jumbo v1, "ttl"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 238
    :pswitch_5
    const-string/jumbo v1, "val"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 244
    :pswitch_6
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
