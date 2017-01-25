.class Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/query/VisorQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorQueryJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<+",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;Z)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;
    .param p2, "debug"    # Z

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;)Lorg/apache/ignite/internal/IgniteEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->scheduleResultSetHolderRemoval(Ljava/lang/String;)V

    return-void
.end method

.method private scheduleResultSetHolderRemoval(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;

    sget-object v2, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->RMV_DELAY:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob$1;-><init>(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 174
    check-cast p1, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->run(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 29
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<+",
            "Ljava/lang/Exception;",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->queryTxt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 194
    .local v24, "scan":Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VISOR_SCAN_QUERY"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "qryId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->cacheName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v10

    .line 199
    .local v10, "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v10, :cond_1

    .line 200
    new-instance v2, Lorg/apache/ignite/lang/IgniteBiTuple;

    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->cacheName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->escapeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .end local v4    # "qryId":Ljava/lang/String;
    .end local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v24    # "scan":Ljava/lang/Boolean;
    :goto_1
    return-object v2

    .line 194
    .restart local v24    # "scan":Ljava/lang/Boolean;
    :cond_0
    const-string v2, "VISOR_SQL_QUERY"

    goto :goto_0

    .line 203
    .restart local v4    # "qryId":Ljava/lang/String;
    .restart local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/GridCache;->keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v12

    .line 205
    .local v12, "cp":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->pageSize(I)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->proj()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v18

    .line 211
    .local v18, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v26

    .line 213
    .local v26, "start":J
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->fetchScanQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/Map$Entry;I)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v23

    .line 216
    .local v23, "rows":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/List<[Ljava/lang/Object;>;Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v26

    .line 218
    .local v14, "fetchDuration":J
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->duration()J

    move-result-wide v2

    add-long v8, v2, v14

    .line 220
    .local v8, "duration":J
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 222
    .local v21, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1, v6}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;-><init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/lang/Object;Ljava/lang/Boolean;)V

    invoke-interface {v2, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->scheduleResultSetHolderRemoval(Ljava/lang/String;)V

    .line 227
    new-instance v25, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/16 v28, 0x0

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    sget-object v5, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->SCAN_COL_NAMES:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v21, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;-><init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/visor/query/VisorQueryField;Ljava/util/List;Ljava/lang/Boolean;J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 231
    .end local v8    # "duration":J
    .end local v14    # "fetchDuration":J
    .end local v18    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v21    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v23    # "rows":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/List<[Ljava/lang/Object;>;Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v26    # "start":J
    :cond_3
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->queryTxt()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSqlFieldsQuery(Ljava/lang/String;Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->pageSize(I)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->proj()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v17

    .line 237
    .local v17, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/List<*>;>;"
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 239
    .local v16, "firstRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetadataAware;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetadataAware;->metadata()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 241
    .local v20, "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    if-nez v20, :cond_4

    .line 242
    new-instance v2, Lorg/apache/ignite/lang/IgniteBiTuple;

    new-instance v3, Ljava/sql/SQLException;

    const-string v6, "Fail to execute query. No metadata available."

    invoke-direct {v3, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 272
    .end local v4    # "qryId":Ljava/lang/String;
    .end local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v12    # "cp":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "firstRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v17    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/List<*>;>;"
    .end local v20    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v24    # "scan":Ljava/lang/Boolean;
    :catch_0
    move-exception v13

    .line 273
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v3, 0x0

    invoke-direct {v2, v13, v3}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 245
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "qryId":Ljava/lang/String;
    .restart local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v12    # "cp":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v16    # "firstRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v17    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/List<*>;>;"
    .restart local v20    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .restart local v24    # "scan":Ljava/lang/Boolean;
    :cond_4
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    .line 247
    .local v5, "names":[Lorg/apache/ignite/internal/visor/query/VisorQueryField;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    .line 248
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;

    .line 250
    .local v11, "col":Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;
    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;->typeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;->fieldName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lorg/apache/ignite/internal/visor/query/VisorQueryField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v5, v19

    .line 247
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 253
    .end local v11    # "col":Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;
    :cond_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v26

    .line 255
    .restart local v26    # "start":J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;->pageSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->fetchSqlQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/List;I)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v22

    .line 258
    .local v22, "rows":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/List<[Ljava/lang/Object;>;Ljava/util/List<*>;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v26

    .line 260
    .restart local v14    # "fetchDuration":J
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->duration()J

    move-result-wide v2

    add-long v8, v2, v14

    .line 262
    .restart local v8    # "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v6, v7}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;-><init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/lang/Object;Ljava/lang/Boolean;)V

    invoke-interface {v2, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->scheduleResultSetHolderRemoval(Ljava/lang/String;)V

    .line 267
    new-instance v25, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/16 v28, 0x0

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;-><init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/visor/query/VisorQueryField;Ljava/util/List;Ljava/lang/Boolean;J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-class v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
