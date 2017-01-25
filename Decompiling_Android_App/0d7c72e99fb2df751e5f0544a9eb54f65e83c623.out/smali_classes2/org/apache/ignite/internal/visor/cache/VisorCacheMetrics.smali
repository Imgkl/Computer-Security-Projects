.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
.super Ljava/lang/Object;
.source "VisorCacheMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MICROSECONDS_IN_SECOND:I = 0xf4240

.field private static final serialVersionUID:J


# instance fields
.field private avgPutTime:F

.field private avgReadTime:F

.field private avgRemovalTime:F

.field private avgTxCommitTime:F

.field private avgTxRollbackTime:F

.field private commitsPerSec:I

.field private dhtEvictQueueCurrSize:I

.field private evictions:J

.field private hits:J

.field private hitsPerSec:I

.field private keySize:I

.field private misses:J

.field private missesPerSec:I

.field private puts:J

.field private qryMetrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

.field private reads:J

.field private readsPerSec:I

.field private removals:J

.field private rollbacksPerSec:I

.field private size:I

.field private txCommitQueueSize:I

.field private txCommits:J

.field private txCommittedVersionsSize:I

.field private txDhtCommitQueueSize:I

.field private txDhtCommittedVersionsSize:I

.field private txDhtPrepareQueueSize:I

.field private txDhtRolledbackVersionsSize:I

.field private txDhtStartVerCountsSize:I

.field private txDhtThreadMapSize:I

.field private txDhtXidMapSize:I

.field private txPrepareQueueSize:I

.field private txRollbacks:J

.field private txRolledbackVersionsSize:I

.field private txStartVerCountsSize:I

.field private txThreadMapSize:I

.field private txXidMapSize:I

.field private writes:J

.field private writesPerSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/internal/processors/cache/GridCache;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    .locals 7
    .param p0, "c"    # Lorg/apache/ignite/internal/processors/cache/GridCache;

    .prologue
    const v6, 0x49742400    # 1000000.0f

    .line 162
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;-><init>()V

    .line 164
    .local v0, "cm":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->metrics()Lorg/apache/ignite/cache/CacheMetrics;

    move-result-object v1

    .line 166
    .local v1, "m":Lorg/apache/ignite/cache/CacheMetrics;
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->size:I

    .line 167
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getKeySize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->keySize:I

    .line 169
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheGets()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->reads:J

    .line 170
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCachePuts()J

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheRemovals()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writes:J

    .line 171
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheHits()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hits:J

    .line 172
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheMisses()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->misses:J

    .line 174
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheTxCommits()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommits:J

    .line 175
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheTxRollbacks()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txRollbacks:J

    .line 177
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxCommitTime()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgTxCommitTime:F

    .line 178
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxRollbackTime()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgTxRollbackTime:F

    .line 180
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCachePuts()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->puts:J

    .line 181
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheRemovals()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->removals:J

    .line 182
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheEvictions()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->evictions:J

    .line 184
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageGetTime()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgReadTime:F

    .line 185
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAveragePutTime()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgPutTime:F

    .line 186
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageRemoveTime()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgRemovalTime:F

    .line 188
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageGetTime()F

    move-result v2

    div-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->readsPerSec:I

    .line 189
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAveragePutTime()F

    move-result v2

    div-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writesPerSec:I

    .line 190
    const/4 v2, -0x1

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hitsPerSec:I

    .line 191
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageRemoveTime()F

    move-result v2

    div-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->missesPerSec:I

    .line 192
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxCommitTime()F

    move-result v2

    div-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->commitsPerSec:I

    .line 193
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getAverageTxRollbackTime()F

    move-result v2

    div-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->rollbacksPerSec:I

    .line 195
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->metrics()Lorg/apache/ignite/cache/query/QueryMetrics;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->from(Lorg/apache/ignite/cache/query/QueryMetrics;)Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->qryMetrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    .line 197
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getDhtEvictQueueCurrentSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->dhtEvictQueueCurrSize:I

    .line 198
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxThreadMapSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txThreadMapSize:I

    .line 199
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxXidMapSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txXidMapSize:I

    .line 200
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxCommitQueueSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommitQueueSize:I

    .line 201
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxPrepareQueueSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txPrepareQueueSize:I

    .line 202
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxStartVersionCountsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txStartVerCountsSize:I

    .line 203
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxCommittedVersionsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommittedVersionsSize:I

    .line 204
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxRolledbackVersionsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txRolledbackVersionsSize:I

    .line 205
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtThreadMapSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtThreadMapSize:I

    .line 206
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtXidMapSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtXidMapSize:I

    .line 207
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtCommitQueueSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtCommitQueueSize:I

    .line 208
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtPrepareQueueSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtPrepareQueueSize:I

    .line 209
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtStartVersionCountsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtStartVerCountsSize:I

    .line 210
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtCommittedVersionsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtCommittedVersionsSize:I

    .line 211
    invoke-interface {v1}, Lorg/apache/ignite/cache/CacheMetrics;->getTxDhtRolledbackVersionsSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtRolledbackVersionsSize:I

    .line 213
    return-object v0
.end method

.method private static perSecond(IJJ)I
    .locals 7
    .param p0, "metric"    # I
    .param p1, "time"    # J
    .param p3, "createTime"    # J

    .prologue
    .line 152
    sub-long v2, p1, p3

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 154
    .local v0, "seconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    int-to-long v2, p0

    div-long/2addr v2, v0

    long-to-int v2, v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public avgPutTime()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgPutTime:F

    return v0
.end method

.method public avgReadTime()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgReadTime:F

    return v0
.end method

.method public avgRemovalTime()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgRemovalTime:F

    return v0
.end method

.method public avgTxCommitTime()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgTxCommitTime:F

    return v0
.end method

.method public avgTxRollbackTime()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->avgTxRollbackTime:F

    return v0
.end method

.method public commitsPerSecond()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->commitsPerSec:I

    return v0
.end method

.method public dhtEvictQueueCurrentSize()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->dhtEvictQueueCurrSize:I

    return v0
.end method

.method public evictions()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->evictions:J

    return-wide v0
.end method

.method public hits()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hits:J

    return-wide v0
.end method

.method public hitsPerSecond()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hitsPerSec:I

    return v0
.end method

.method public keySize()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->keySize:I

    return v0
.end method

.method public misses()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->misses:J

    return-wide v0
.end method

.method public missesPerSecond()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->missesPerSec:I

    return v0
.end method

.method public puts()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->puts:J

    return-wide v0
.end method

.method public queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->qryMetrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    return-object v0
.end method

.method public reads()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->reads:J

    return-wide v0
.end method

.method public readsPerSecond()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->readsPerSec:I

    return v0
.end method

.method public removals()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->removals:J

    return-wide v0
.end method

.method public rollbacksPerSecond()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->rollbacksPerSec:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txCommitQueueSize()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommitQueueSize:I

    return v0
.end method

.method public txCommits()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommits:J

    return-wide v0
.end method

.method public txCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txCommittedVersionsSize:I

    return v0
.end method

.method public txDhtCommitQueueSize()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtCommitQueueSize:I

    return v0
.end method

.method public txDhtCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtCommittedVersionsSize:I

    return v0
.end method

.method public txDhtPrepareQueueSize()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtPrepareQueueSize:I

    return v0
.end method

.method public txDhtRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtRolledbackVersionsSize:I

    return v0
.end method

.method public txDhtStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtStartVerCountsSize:I

    return v0
.end method

.method public txDhtThreadMapSize()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtThreadMapSize:I

    return v0
.end method

.method public txDhtXidMapSize()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txDhtXidMapSize:I

    return v0
.end method

.method public txPrepareQueueSize()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txPrepareQueueSize:I

    return v0
.end method

.method public txRollbacks()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txRollbacks:J

    return-wide v0
.end method

.method public txRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txRolledbackVersionsSize:I

    return v0
.end method

.method public txStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txStartVerCountsSize:I

    return v0
.end method

.method public txThreadMapSize()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txThreadMapSize:I

    return v0
.end method

.method public txXidMapSize()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->txXidMapSize:I

    return v0
.end method

.method public writes()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writes:J

    return-wide v0
.end method

.method public writesPerSecond()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writesPerSec:I

    return v0
.end method
