.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;
.super Ljava/lang/Object;
.source "GridCacheQueryCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecuteQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private g:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;)V
    .locals 0
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;-><init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 269
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$500()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    .line 271
    .local v6, "qryId":J
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->g:Lorg/apache/ignite/Ignite;

    check-cast v9, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v5

    .line 275
    .local v5, "queries":Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v9, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryType:[I

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 297
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported query type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 277
    :pswitch_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->clause()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createSqlQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 300
    .local v4, "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    :goto_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->keepPortable()Z

    move-result v1

    .line 302
    .local v1, "keepPortable":Z
    if-nez v1, :cond_0

    .line 303
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SCAN:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteReducerClassName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteTransformerClassName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 306
    const/4 v1, 0x1

    :cond_0
    move-object v9, v4

    .line 309
    check-cast v9, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    invoke-virtual {v9, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable(Z)V

    move-object v9, v4

    .line 310
    check-cast v9, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->clientId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId(Ljava/util/UUID;)V

    .line 312
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->pageSize()I

    move-result v9

    if-lez v9, :cond_1

    .line 313
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->pageSize()I

    move-result v9

    invoke-interface {v4, v9}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->pageSize(I)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 315
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->timeout()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 316
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->timeout()J

    move-result-wide v10

    invoke-interface {v4, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->timeout(J)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 318
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->includeBackups()Z

    move-result v9

    invoke-interface {v4, v9}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->includeBackups(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->enableDedup()Z

    move-result v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->enableDedup(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->keepAll(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 322
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteReducerClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 323
    const-class v9, Lorg/apache/ignite/lang/IgniteReducer;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteReducerClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$600(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/lang/IgniteReducer;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->queryArguments()[Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute(Lorg/apache/ignite/lang/IgniteReducer;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .line 333
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    :goto_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->g:Lorg/apache/ignite/Ignite;

    invoke-interface {v9}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    .line 335
    .local v2, "locMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;>;"
    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;

    invoke-direct {v8, v0, v14}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    .line 337
    .local v8, "wrapper":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    new-instance v9, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;

    invoke-direct {v9, v6, v7, v14}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;-><init>(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-interface {v2, v9, v8}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;

    .line 339
    .local v3, "old":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    sget-boolean v9, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-eqz v3, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 282
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    .end local v1    # "keepPortable":Z
    .end local v2    # "locMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;>;"
    .end local v3    # "old":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    .end local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    .end local v8    # "wrapper":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    :pswitch_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->clause()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createSqlFieldsQuery(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 284
    .restart local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    goto/16 :goto_0

    .line 287
    .end local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    :pswitch_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->clause()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 289
    .restart local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    goto/16 :goto_0

    .line 292
    .end local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    :pswitch_3
    const-class v9, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$600(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v5, v9}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v4

    .line 294
    .restart local v4    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<*>;"
    goto/16 :goto_0

    .line 326
    .restart local v1    # "keepPortable":Z
    :cond_3
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteTransformerClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 327
    const-class v9, Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->remoteTransformerClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$600(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->queryArguments()[Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute(Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    goto :goto_1

    .line 331
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    :cond_4
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->queryArguments()[Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    goto/16 :goto_1

    .line 341
    .restart local v2    # "locMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;>;"
    .restart local v3    # "old":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    .restart local v8    # "wrapper":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    :cond_5
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;->g:Lorg/apache/ignite/Ignite;

    invoke-interface {v9}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-static {v6, v7, v8, v2, v9}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$800(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;Ljava/util/concurrent/ConcurrentMap;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v9

    return-object v9

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
