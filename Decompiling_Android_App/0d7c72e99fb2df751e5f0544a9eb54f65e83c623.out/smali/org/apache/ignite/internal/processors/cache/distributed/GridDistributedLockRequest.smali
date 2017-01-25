.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridDistributedLockRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

.field protected idx:I
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private isInTx:Z

.field private isInvalidate:Z

.field private isRead:Z

.field private isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private keys:Ljava/util/List;
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

.field private nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private nodeId:Ljava/util/UUID;

.field private partLock:Z

.field private retVals:[Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private threadId:J

.field private timeout:J

.field private txSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "threadId"    # J
    .param p6, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p7, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "isInTx"    # Z
    .param p9, "isRead"    # Z
    .param p10, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p11, "isInvalidate"    # Z
    .param p12, "timeout"    # J
    .param p14, "keyCnt"    # I
    .param p15, "txSize"    # I
    .param p16, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "partLock"    # Z

    .prologue
    .line 131
    move/from16 v0, p14

    invoke-direct {p0, p7, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 133
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz p14, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 134
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p6, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 135
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz p8, :cond_2

    if-nez p10, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    :cond_2
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->cacheId:I

    .line 138
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nodeId:Ljava/util/UUID;

    .line 139
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 140
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->threadId:J

    .line 141
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 142
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInTx:Z

    .line 143
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isRead:Z

    .line 144
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 145
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInvalidate:Z

    .line 146
    iput-wide p12, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->timeout:J

    .line 147
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->txSize:I

    .line 148
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 149
    move/from16 v0, p17

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->partLock:Z

    .line 151
    move/from16 v0, p14

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    .line 152
    return-void
.end method


# virtual methods
.method public addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "retVal"    # Z
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 249
    .local p3, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keysCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->idx:I

    invoke-virtual {p0, v0, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->candidatesByIndex(ILjava/util/Collection;)V

    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->idx:I

    aput-boolean p2, v0, v1

    .line 258
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->idx:I

    .line 259
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 559
    const/16 v0, 0x15

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 564
    const/16 v0, 0x16

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
    .line 311
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 313
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 315
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 317
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 319
    :cond_0
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public groupLock()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    return-object v0
.end method

.method public inTx()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInTx:Z

    return v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInvalidate:Z

    return v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public keys()Ljava/util/List;
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
    .line 265
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public partitionLock()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->partLock:Z

    return v0
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
    .line 299
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 301
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 303
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 305
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 307
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 429
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 554
    :goto_0
    return v1

    .line 432
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 433
    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 554
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 437
    :pswitch_0
    const-string v1, "futId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 439
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 440
    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 445
    :pswitch_1
    const-string v1, "grpLockKey"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 447
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 448
    goto :goto_0

    .line 450
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 453
    :pswitch_2
    const-string v1, "isInTx"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInTx:Z

    .line 455
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 456
    goto :goto_0

    .line 458
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 461
    :pswitch_3
    const-string v1, "isInvalidate"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInvalidate:Z

    .line 463
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 464
    goto :goto_0

    .line 466
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 469
    :pswitch_4
    const-string v1, "isRead"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isRead:Z

    .line 471
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 472
    goto :goto_0

    .line 474
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 479
    :pswitch_5
    const-string v1, "isolation"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 481
    .local v0, "isolationOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 482
    goto :goto_0

    .line 484
    :cond_7
    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 486
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 489
    .end local v0    # "isolationOrd":B
    :pswitch_6
    const-string v1, "keys"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    .line 491
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 492
    goto/16 :goto_0

    .line 494
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 497
    :pswitch_7
    const-string v1, "nearXidVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 499
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 500
    goto/16 :goto_0

    .line 502
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 505
    :pswitch_8
    const-string v1, "nodeId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nodeId:Ljava/util/UUID;

    .line 507
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 508
    goto/16 :goto_0

    .line 510
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 513
    :pswitch_9
    const-string v1, "partLock"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->partLock:Z

    .line 515
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 516
    goto/16 :goto_0

    .line 518
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 521
    :pswitch_a
    const-string v1, "retVals"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    .line 523
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 524
    goto/16 :goto_0

    .line 526
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 529
    :pswitch_b
    const-string/jumbo v1, "threadId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->threadId:J

    .line 531
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 532
    goto/16 :goto_0

    .line 534
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 537
    :pswitch_c
    const-string/jumbo v1, "timeout"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->timeout:J

    .line 539
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 540
    goto/16 :goto_0

    .line 542
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 545
    :pswitch_d
    const-string/jumbo v1, "txSize"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->txSize:I

    .line 547
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    .line 548
    goto/16 :goto_0

    .line 550
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 435
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public returnFlags()[Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    return-object v0
.end method

.method public returnValue(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->threadId:J

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->timeout:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 569
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;

    const-string v2, "keysCnt"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txRead()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isRead:Z

    return v0
.end method

.method public txSize()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->txSize:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 325
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 422
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 330
    goto :goto_0

    .line 332
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 335
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 422
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :pswitch_0
    const-string v0, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 343
    :pswitch_1
    const-string v0, "grpLockKey"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 344
    goto :goto_0

    .line 346
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 349
    :pswitch_2
    const-string v0, "isInTx"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInTx:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 350
    goto :goto_0

    .line 352
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 355
    :pswitch_3
    const-string v0, "isInvalidate"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isInvalidate:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 361
    :pswitch_4
    const-string v0, "isRead"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isRead:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 367
    :pswitch_5
    const-string v2, "isolation"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 368
    goto/16 :goto_0

    .line 367
    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 370
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 373
    :pswitch_6
    const-string v0, "keys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->keys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 374
    goto/16 :goto_0

    .line 376
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 379
    :pswitch_7
    const-string v0, "nearXidVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 380
    goto/16 :goto_0

    .line 382
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 385
    :pswitch_8
    const-string v0, "nodeId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->nodeId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 386
    goto/16 :goto_0

    .line 388
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 391
    :pswitch_9
    const-string v0, "partLock"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->partLock:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 392
    goto/16 :goto_0

    .line 394
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 397
    :pswitch_a
    const-string v0, "retVals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->retVals:[Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBooleanArray(Ljava/lang/String;[Z)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 398
    goto/16 :goto_0

    .line 400
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 403
    :pswitch_b
    const-string/jumbo v0, "threadId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->threadId:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 404
    goto/16 :goto_0

    .line 406
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 409
    :pswitch_c
    const-string/jumbo v0, "timeout"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->timeout:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 410
    goto/16 :goto_0

    .line 412
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 415
    :pswitch_d
    const-string/jumbo v0, "txSize"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockRequest;->txSize:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 416
    goto/16 :goto_0

    .line 418
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
