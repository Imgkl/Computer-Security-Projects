.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridDhtPartitionSupplyMessage.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ack:Z

.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectMap;
        keyType = I
        valueType = Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    .end annotation
.end field

.field private last:Ljava/util/Collection;
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
.end field

.field private missed:Ljava/util/Collection;
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

.field private msgSize:I
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private updateSeq:J

.field private workerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    .line 83
    return-void
.end method

.method constructor <init>(IJI)V
    .locals 2
    .param p1, "workerId"    # I
    .param p2, "updateSeq"    # J
    .param p4, "cacheId"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    .line 70
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_1
    iput p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->cacheId:I

    .line 74
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->updateSeq:J

    .line 75
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    .line 76
    return-void
.end method


# virtual methods
.method ack()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->ack:Z

    return v0
.end method

.method addEntry(ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "p"    # I
    .param p2, "info"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 190
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 192
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->marshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 194
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->marshalledSize(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 196
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .line 198
    .local v0, "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    if-nez v0, :cond_1

    .line 199
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 201
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .end local v0    # "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;-><init>()V

    .restart local v0    # "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->init()V

    .line 206
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;)V

    .line 207
    return-void
.end method

.method addEntry0(ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "p"    # I
    .param p2, "info"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 216
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 217
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes()[B

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 218
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 221
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->marshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 223
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->marshalledSize(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .line 227
    .local v0, "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    if-nez v0, :cond_3

    .line 228
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 230
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .end local v0    # "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;-><init>()V

    .restart local v0    # "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->init()V

    .line 235
    :cond_3
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;)V

    .line 236
    return-void
.end method

.method public allowForStartup()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 382
    const/16 v0, 0x2d

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 387
    const/16 v0, 0x9

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 243
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 245
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    .line 246
    .local v1, "col":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->infos()Ljava/util/List;

    move-result-object v2

    .line 248
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 249
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-virtual {v5, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "col":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public ignoreClassErrors()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method infos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    return-object v0
.end method

.method last()Ljava/util/Collection;
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
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    goto :goto_0
.end method

.method last(I)V
    .locals 3
    .param p1, "p"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 141
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;-><init>()V

    .line 144
    .local v0, "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->init()V

    .line 146
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v0    # "infoCol":Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;
    :cond_1
    return-void
.end method

.method markAck()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->ack:Z

    .line 114
    return-void
.end method

.method messageSize()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    return v0
.end method

.method missed()Ljava/util/Collection;
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
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    goto :goto_0
.end method

.method missed(I)V
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->msgSize:I

    .line 160
    :cond_1
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 320
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :pswitch_0
    const-string v1, "ack"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->ack:Z

    .line 330
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 336
    :pswitch_1
    const-string v1, "infos"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    .line 338
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 344
    :pswitch_2
    const-string v1, "last"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    .line 346
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 352
    :pswitch_3
    const-string v1, "missed"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    .line 354
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 360
    :pswitch_4
    const-string/jumbo v1, "updateSeq"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->updateSeq:J

    .line 362
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 368
    :pswitch_5
    const-string/jumbo v1, "workerId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    .line 370
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 326
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

.method public size()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 392
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    const-string v2, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parts"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateSequence()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->updateSeq:J

    return-wide v0
.end method

.method workerId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    return v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 264
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 274
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :pswitch_0
    const-string v1, "ack"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->ack:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 282
    :pswitch_1
    const-string v1, "infos"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 288
    :pswitch_2
    const-string v1, "last"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 294
    :pswitch_3
    const-string v1, "missed"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 300
    :pswitch_4
    const-string/jumbo v1, "updateSeq"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->updateSeq:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 306
    :pswitch_5
    const-string/jumbo v1, "workerId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 274
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
