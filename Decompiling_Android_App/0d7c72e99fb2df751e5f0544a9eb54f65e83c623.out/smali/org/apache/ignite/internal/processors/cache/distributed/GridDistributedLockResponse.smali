.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridDistributedLockResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private vals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;I)V
    .locals 1
    .param p1, "cacheId"    # I
    .param p2, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "cnt"    # I

    .prologue
    .line 74
    invoke-direct {p0, p2, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 76
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->cacheId:I

    .line 79
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "cacheId"    # I
    .param p2, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "cnt"    # I
    .param p5, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-direct {p0, p2, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->cacheId:I

    .line 120
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 121
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    .line 124
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cacheId"    # I
    .param p2, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 96
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->cacheId:I

    .line 99
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 100
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    .line 101
    return-void
.end method


# virtual methods
.method public addValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0x16

    return v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    .line 146
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0xb

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
    .line 220
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->errBytes:[B

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->errBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    .line 229
    :cond_0
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public isCurrentlyLocked(I)Z
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 153
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->candidatesByIndex(I)Ljava/util/Collection;

    move-result-object v1

    .line 157
    .local v1, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 158
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const/4 v3, 0x1

    .line 161
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
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
    .line 207
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->err:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->errBytes:[B

    .line 216
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 273
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 306
    :goto_0
    return v0

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :pswitch_0
    const-string v0, "errBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->errBytes:[B

    .line 283
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 284
    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 289
    :pswitch_1
    const-string v0, "futId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 291
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 292
    goto :goto_0

    .line 294
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 297
    :pswitch_2
    const-string/jumbo v0, "vals"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    .line 299
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 279
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCandidates(ILjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .local p3, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->candidatesByIndex(ILjava/util/Collection;)V

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected valuesSize()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 235
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 245
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_0
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 253
    :pswitch_1
    const-string v1, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 259
    :pswitch_2
    const-string/jumbo v1, "vals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockResponse;->vals:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
