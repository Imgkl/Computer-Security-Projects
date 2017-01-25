.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;
.source "GridDistributedTxPrepareRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private dhtVerKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end annotation
.end field

.field private dhtVerVals:Ljava/util/Collection;
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

.field private dhtVers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private grpLockKeyBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private invalidate:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private isolation:Lorg/apache/ignite/transactions/TransactionIsolation;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private onePhaseCommit:Z

.field private partLock:Z

.field private plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private reads:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sys:Z

.field private threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private timeout:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private txNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private txNodesBytes:[B

.field private txSize:I

.field private writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private writes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/Map;Z)V
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p5, "partLock"    # Z
    .param p7, "onePhaseCommit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "reads":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p3, "writes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p6, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 149
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 150
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->threadId:J

    .line 151
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 152
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 153
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->timeout:J

    .line 154
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isInvalidate()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->invalidate:Z

    .line 155
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txSize:I

    .line 156
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->system()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->sys:Z

    .line 157
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 159
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    .line 160
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    .line 161
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 162
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->partLock:Z

    .line 163
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodes:Ljava/util/Map;

    .line 164
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->onePhaseCommit:Z

    .line 165
    return-void
.end method


# virtual methods
.method public addDhtVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p2, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method public dhtVersions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    goto :goto_0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 654
    const/16 v0, 0x19

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 659
    const/16 v0, 0x19

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
    const/4 v4, 0x0

    .line 333
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 335
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    invoke-virtual {p0, v3, v4, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->unmarshalTx(Ljava/lang/Iterable;ZLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 338
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    invoke-virtual {p0, v3, v4, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->unmarshalTx(Ljava/lang/Iterable;ZLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 341
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-nez v3, :cond_2

    .line 342
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    invoke-interface {v3, v4, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 344
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    if-nez v3, :cond_5

    .line 345
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 346
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 348
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 349
    .local v1, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 351
    .local v2, "verIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    .line 353
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 356
    .local v0, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 358
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    .end local v0    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v1    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v2    # "verIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodesBytes:[B

    if-eqz v3, :cond_6

    .line 363
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodesBytes:[B

    invoke-interface {v3, v4, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodes:Ljava/util/Map;

    .line 364
    :cond_6
    return-void
.end method

.method public groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    return-object v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->invalidate:Z

    return v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public onePhaseCommit()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->onePhaseCommit:Z

    return v0
.end method

.method public partitionLock()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->partLock:Z

    return v0
.end method

.method public policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

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
    .line 305
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 307
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->marshalTx(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 310
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    invoke-virtual {p0, v3, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->marshalTx(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 313
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    if-nez v3, :cond_2

    .line 314
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    .line 316
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 317
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 318
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 320
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 323
    .end local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    .line 324
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    .line 327
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodes:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 328
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodes:Ljava/util/Map;

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodesBytes:[B

    .line 329
    :cond_5
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 492
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 649
    :goto_0
    return v3

    .line 495
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 496
    goto :goto_0

    .line 498
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 649
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 502
    :pswitch_0
    const-string v3, "concurrency"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 504
    .local v0, "concurrencyOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 505
    goto :goto_0

    .line 507
    :cond_2
    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionConcurrency;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 509
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 512
    .end local v0    # "concurrencyOrd":B
    :pswitch_1
    const-string v3, "dhtVerKeys"

    sget-object v5, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v3, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    .line 514
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 515
    goto :goto_0

    .line 517
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 520
    :pswitch_2
    const-string v3, "dhtVerVals"

    sget-object v5, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v3, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    .line 522
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    .line 523
    goto :goto_0

    .line 525
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 528
    :pswitch_3
    const-string v3, "grpLockKeyBytes"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    .line 530
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 531
    goto :goto_0

    .line 533
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 536
    :pswitch_4
    const-string v3, "invalidate"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->invalidate:Z

    .line 538
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    .line 539
    goto :goto_0

    .line 541
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 546
    :pswitch_5
    const-string v3, "isolation"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v1

    .line 548
    .local v1, "isolationOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    .line 549
    goto/16 :goto_0

    .line 551
    :cond_7
    invoke-static {v1}, Lorg/apache/ignite/transactions/TransactionIsolation;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 553
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 556
    .end local v1    # "isolationOrd":B
    :pswitch_6
    const-string v3, "onePhaseCommit"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->onePhaseCommit:Z

    .line 558
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    .line 559
    goto/16 :goto_0

    .line 561
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 564
    :pswitch_7
    const-string v3, "partLock"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->partLock:Z

    .line 566
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    .line 567
    goto/16 :goto_0

    .line 569
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 574
    :pswitch_8
    const-string v3, "plc"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v2

    .line 576
    .local v2, "plcOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    .line 577
    goto/16 :goto_0

    .line 579
    :cond_a
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->fromOrdinal(I)Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 581
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 584
    .end local v2    # "plcOrd":B
    :pswitch_9
    const-string v3, "reads"

    sget-object v5, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v3, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    .line 586
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    .line 587
    goto/16 :goto_0

    .line 589
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 592
    :pswitch_a
    const-string/jumbo v3, "sys"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->sys:Z

    .line 594
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v4

    .line 595
    goto/16 :goto_0

    .line 597
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 600
    :pswitch_b
    const-string/jumbo v3, "threadId"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->threadId:J

    .line 602
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v4

    .line 603
    goto/16 :goto_0

    .line 605
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 608
    :pswitch_c
    const-string/jumbo v3, "timeout"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->timeout:J

    .line 610
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v4

    .line 611
    goto/16 :goto_0

    .line 613
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 616
    :pswitch_d
    const-string/jumbo v3, "txNodesBytes"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodesBytes:[B

    .line 618
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    .line 619
    goto/16 :goto_0

    .line 621
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 624
    :pswitch_e
    const-string/jumbo v3, "txSize"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txSize:I

    .line 626
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_10

    move v3, v4

    .line 627
    goto/16 :goto_0

    .line 629
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 632
    :pswitch_f
    const-string/jumbo v3, "writeVer"

    invoke-interface {p2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 634
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v4

    .line 635
    goto/16 :goto_0

    .line 637
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 640
    :pswitch_10
    const-string/jumbo v3, "writes"

    sget-object v5, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v3, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    .line 642
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v3

    if-nez v3, :cond_12

    move v3, v4

    .line 643
    goto/16 :goto_0

    .line 645
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 498
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public reads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    return-object v0
.end method

.method protected reads(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "reads":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    .line 265
    return-void
.end method

.method public system()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->sys:Z

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->threadId:J

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->timeout:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 664
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transactionNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodes:Ljava/util/Map;

    return-object v0
.end method

.method public txSize()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txSize:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 368
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 370
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedBaseMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 485
    :goto_0
    return v0

    .line 373
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->fieldsCount()B

    move-result v3

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 375
    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 380
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :pswitch_0
    const-string v3, "concurrency"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionConcurrency;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v3, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 383
    goto :goto_0

    :cond_3
    move v0, v1

    .line 382
    goto :goto_2

    .line 385
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 388
    :pswitch_1
    const-string v0, "dhtVerKeys"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerKeys:Ljava/util/Collection;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 389
    goto :goto_0

    .line 391
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 394
    :pswitch_2
    const-string v0, "dhtVerVals"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->dhtVerVals:Ljava/util/Collection;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 395
    goto :goto_0

    .line 397
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 400
    :pswitch_3
    const-string v0, "grpLockKeyBytes"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->grpLockKeyBytes:[B

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 401
    goto :goto_0

    .line 403
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 406
    :pswitch_4
    const-string v0, "invalidate"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->invalidate:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 407
    goto :goto_0

    .line 409
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 412
    :pswitch_5
    const-string v3, "isolation"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_3
    invoke-interface {p2, v3, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 413
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 412
    goto :goto_3

    .line 415
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 418
    :pswitch_6
    const-string v0, "onePhaseCommit"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->onePhaseCommit:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 419
    goto/16 :goto_0

    .line 421
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 424
    :pswitch_7
    const-string v0, "partLock"

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->partLock:Z

    invoke-interface {p2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    .line 425
    goto/16 :goto_0

    .line 427
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 430
    :pswitch_8
    const-string v0, "plc"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    if-eqz v3, :cond_d

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    :cond_d
    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    .line 431
    goto/16 :goto_0

    .line 433
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 436
    :pswitch_9
    const-string v0, "reads"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->reads:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    .line 437
    goto/16 :goto_0

    .line 439
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 442
    :pswitch_a
    const-string/jumbo v0, "sys"

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->sys:Z

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 443
    goto/16 :goto_0

    .line 445
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 448
    :pswitch_b
    const-string/jumbo v0, "threadId"

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->threadId:J

    invoke-interface {p2, v0, v4, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 449
    goto/16 :goto_0

    .line 451
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 454
    :pswitch_c
    const-string/jumbo v0, "timeout"

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->timeout:J

    invoke-interface {p2, v0, v4, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 455
    goto/16 :goto_0

    .line 457
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 460
    :pswitch_d
    const-string/jumbo v0, "txNodesBytes"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txNodesBytes:[B

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    .line 461
    goto/16 :goto_0

    .line 463
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 466
    :pswitch_e
    const-string/jumbo v0, "txSize"

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->txSize:I

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    .line 467
    goto/16 :goto_0

    .line 469
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 472
    :pswitch_f
    const-string/jumbo v0, "writeVer"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 473
    goto/16 :goto_0

    .line 475
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 478
    :pswitch_10
    const-string/jumbo v0, "writes"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    .line 479
    goto/16 :goto_0

    .line 481
    :cond_16
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 380
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    return-object v0
.end method

.method protected writes(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "writes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxPrepareRequest;->writes:Ljava/util/Collection;

    .line 272
    return-void
.end method
