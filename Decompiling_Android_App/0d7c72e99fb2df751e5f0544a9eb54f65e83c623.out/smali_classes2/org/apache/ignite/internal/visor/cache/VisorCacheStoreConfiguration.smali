.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheStoreConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private batchSz:I

.field private flushFreq:J

.field private flushSz:I

.field private flushThreadCnt:I

.field private jdbcStore:Z

.field private readThrough:Z

.field private store:Ljava/lang/String;

.field private storeFactory:Ljava/lang/String;

.field private writeBehindEnabled:Z

.field private writeThrough:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/Ignite;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;
    .locals 4
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 74
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;-><init>()V

    .line 76
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;
    check-cast p0, Lorg/apache/ignite/internal/IgniteKernal;

    .end local p0    # "ignite":Lorg/apache/ignite/Ignite;
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/IgniteKernal;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configuredStore()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v1

    .line 78
    .local v1, "store":Lorg/apache/ignite/cache/store/CacheStore;
    instance-of v2, v1, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->jdbcStore:Z

    .line 80
    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->store:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->storeFactory:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->readThrough:Z

    .line 84
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->writeThrough:Z

    .line 86
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->writeBehindEnabled:Z

    .line 87
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindBatchSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->batchSz:I

    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushFreq:J

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushSz:I

    .line 90
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushThreadCount()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushThreadCnt:I

    .line 92
    return-object v0
.end method


# virtual methods
.method public batchSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->batchSz:I

    return v0
.end method

.method public batchSize(I)V
    .locals 0
    .param p1, "batchSize"    # I

    .prologue
    .line 162
    iput p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->batchSz:I

    .line 163
    return-void
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->store:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flushFrequency()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushFreq:J

    return-wide v0
.end method

.method public flushFrequency(J)V
    .locals 1
    .param p1, "flushFreq"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushFreq:J

    .line 177
    return-void
.end method

.method public flushSize()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushSz:I

    return v0
.end method

.method public flushSize(I)V
    .locals 0
    .param p1, "flushSize"    # I

    .prologue
    .line 190
    iput p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushSz:I

    .line 191
    return-void
.end method

.method public flushThreadCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushThreadCnt:I

    return v0
.end method

.method public flushThreadCount(I)V
    .locals 0
    .param p1, "flushThreadCnt"    # I

    .prologue
    .line 204
    iput p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->flushThreadCnt:I

    .line 205
    return-void
.end method

.method public jdbcStore()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->jdbcStore:Z

    return v0
.end method

.method public readThrough()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->readThrough:Z

    return v0
.end method

.method public store()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->store:Ljava/lang/String;

    return-object v0
.end method

.method public storeFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->storeFactory:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBehindEnabled(Z)V
    .locals 0
    .param p1, "writeBehindEnabled"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->writeBehindEnabled:Z

    .line 149
    return-void
.end method

.method public writeBehindEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->writeBehindEnabled:Z

    return v0
.end method

.method public writeThrough()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheStoreConfiguration;->writeThrough:Z

    return v0
.end method
