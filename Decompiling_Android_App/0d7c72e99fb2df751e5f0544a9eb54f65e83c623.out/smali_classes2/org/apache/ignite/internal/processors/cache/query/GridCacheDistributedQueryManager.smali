.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.source "GridCacheDistributedQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_CANCEL_IDS:I = 0x3e8

.field private static final RESEND_ATTEMPTS:I = 0x5

.field private static final RESEND_FREQ:J = 0xbb8L

.field private static final TOPIC_PREFIX:Ljava/lang/String; = "QUERY"


# instance fields
.field private cancelIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;",
            ">;"
        }
    .end annotation
.end field

.field private cancelled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private futs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture",
            "<***>;>;"
        }
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private resHnd:Lorg/apache/ignite/lang/IgniteBiInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private threads:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    const/16 v1, 0x3e8

    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;-><init>()V

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelIds:Ljava/util/Collection;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelled:Ljava/util/Collection;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->resHnd:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 732
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->processQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private distributedQueryInfo(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .locals 23
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v2

    .line 210
    .local v2, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transformer()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v22

    .line 212
    .local v22, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v21

    .line 214
    .local v21, "sndNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v21, :cond_0

    .line 215
    const/4 v5, 0x0

    .line 237
    :goto_0
    return-object v5

    .line 217
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->includeBackups()Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValueFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clause()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->includeMetaData()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjectId()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash()I

    move-result v20

    invoke-direct/range {v3 .. v20}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Lorg/apache/ignite/IgniteLogger;IJZZZLorg/apache/ignite/cluster/ClusterGroup;Lorg/apache/ignite/lang/IgniteBiPredicate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/UUID;I)V

    .line 237
    .local v3, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->includeMetaData()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->allPages()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->arguments()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v22

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;-><init>(ZLorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;Ljava/util/UUID;JZZ[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;)V
    .locals 7
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    .prologue
    .line 337
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received query response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->requestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->getQueryFuture(J)Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    move-result-object v6

    .line 342
    .local v6, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    if-eqz v6, :cond_3

    .line 343
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->fields()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 344
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->isFinished()Z

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->error()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->isFinished()Z

    move-result v2

    invoke-virtual {v6, p1, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelled:Ljava/util/Collection;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->requestId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received response for finished or unknown query [rmtNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    .param p3, "timeout"    # J

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 262
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_0

    .line 263
    const/4 v1, 0x0

    .line 326
    :goto_0
    return v1

    .line 265
    :cond_0
    const/4 v0, 0x1

    .line 267
    .local v0, "attempt":I
    const/4 v10, 0x0

    .line 269
    .local v10, "err":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 271
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send query response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 274
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->requestId()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->topic(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, "topic":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v4, p3, v6

    if-lez v4, :cond_2

    move-wide/from16 v6, p3

    :goto_2
    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;J)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_2

    .line 285
    .end local v3    # "topic":Ljava/lang/Object;
    :catch_0
    move-exception v11

    .line 286
    .local v11, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send query response since node left grid [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 290
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 292
    .end local v11    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v8

    .line 293
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v10, :cond_4

    .line 294
    move-object v10, v8

    .line 296
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 326
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 299
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_9

    .line 300
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 301
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send queries response (will try again) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attempt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 304
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 306
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 323
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 308
    :catch_2
    move-exception v9

    .line 309
    .local v9, "e1":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for queries response resending was interrupted (response will not be sent) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 313
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 317
    .end local v9    # "e1":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_9
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sender cache response [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 319
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private sendRequest(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/Collection;)V
    .locals 8
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture",
            "<***>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<***>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 672
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 673
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 675
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    .line 677
    .local v2, "locNodeId":Ljava/util/UUID;
    const/4 v1, 0x0

    .line 679
    .local v1, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v4, 0x0

    .line 681
    .local v4, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 682
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 683
    move-object v1, v3

    goto :goto_0

    .line 685
    :cond_3
    if-nez v4, :cond_4

    .line 686
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    .restart local v4    # "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 696
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;

    invoke-direct {v7, p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$6;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V

    invoke-virtual {v5, v4, p2, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->safeSend(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgnitePredicate;)Z

    .line 705
    :cond_6
    if-eqz v1, :cond_7

    .line 706
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;

    invoke-direct {v6, p0, p2, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$7;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/UUID;)V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 716
    :cond_7
    return-void
.end method

.method private topic(Ljava/util/UUID;J)Ljava/lang/Object;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "reqId"    # J

    .prologue
    .line 726
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "QUERY"

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addQueryFuture(JLorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V
    .locals 3
    .param p1, "reqId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p3, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<***>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method protected getQueryFuture(J)Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;
    .locals 3
    .param p1, "reqId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    return-object v0
.end method

.method public loadPage(JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Ljava/util/Collection;Z)V
    .locals 17
    .param p1, "id"    # J
    .param p5, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p3, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 552
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 553
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 555
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    .line 557
    .local v15, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<***>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v15, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 560
    :cond_3
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v8

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->fields()Z

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash()I

    move-result v13

    move-wide/from16 v4, p1

    move/from16 v10, p5

    invoke-direct/range {v2 .. v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;-><init>(IJLjava/lang/String;IZZZZLjava/util/UUID;I)V

    .line 572
    .local v2, "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v2, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendRequest(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v2    # "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v14

    .line 575
    .local v14, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v15, v14}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method onCancelAtStop()V
    .locals 6

    .prologue
    .line 364
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onCancelAtStop()V

    .line 366
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .line 368
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancel running query future: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Iterable;)V

    .line 375
    return-void
.end method

.method protected onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .locals 8
    .param p1, "loc"    # Z
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "finished"    # Z
    .param p7, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p3, "metadata":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .local p4, "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p5, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 437
    :cond_0
    if-eqz p7, :cond_2

    .line 438
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;

    .line 441
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 448
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    :goto_0
    const/4 v1, 0x1

    .line 467
    .end local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_1
    return v1

    .line 444
    .restart local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v1

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7, p7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJLjava/lang/Throwable;)V

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v4

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z

    goto :goto_0

    .line 451
    :cond_2
    if-eqz p1, :cond_4

    .line 452
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;

    .line 454
    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 467
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    .end local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 457
    .restart local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v7, 0x1

    :goto_2
    move v6, p6

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJZZ)V

    .line 460
    .local v2, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    invoke-virtual {v2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->metadata(Ljava/util/List;)V

    .line 461
    if-eqz p4, :cond_6

    .end local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_3
    invoke-virtual {v2, p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data(Ljava/util/Collection;)V

    .line 463
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 464
    const/4 v1, 0x0

    goto :goto_1

    .line 457
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    .restart local p4    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    :cond_6
    move-object p4, p5

    .line 461
    goto :goto_3
.end method

.method protected onKernalStop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onKernalStop0(Z)V

    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->removeListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)V

    .line 110
    return-void
.end method

.method protected onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .locals 8
    .param p1, "loc"    # Z
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p4, "finished"    # Z
    .param p5, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p3, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    move-result-object v6

    .line 398
    .local v6, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<***>;"
    if-eqz p1, :cond_0

    .line 399
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 401
    :cond_0
    if-eqz p5, :cond_2

    .line 402
    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {v6, v2, v2, p5, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    :goto_0
    move v4, v7

    .line 425
    :goto_1
    return v4

    .line 405
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, p5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJLjava/lang/Throwable;)V

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z

    goto :goto_0

    .line 412
    :cond_2
    if-eqz p1, :cond_4

    .line 413
    invoke-virtual {v6, v2, p3, v2, p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    :cond_3
    move v4, v7

    .line 425
    goto :goto_1

    .line 415
    :cond_4
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJZZ)V

    .line 418
    .local v0, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->data(Ljava/util/Collection;)V

    .line 419
    invoke-virtual {v0, p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;->finished(Z)V

    .line 421
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method onQueryFutureCanceled(J)V
    .locals 3
    .param p1, "reqId"    # J

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelled:Ljava/util/Collection;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method onWaitAtStop()V
    .locals 6

    .prologue
    .line 379
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onWaitAtStop()V

    .line 382
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .line 384
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->get()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received query error while waiting for query to finish [queryFuture= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    :cond_1
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    const/4 v2, 0x0

    .line 114
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->printMemoryStats()V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   threadsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   futsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method processQueryRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V
    .locals 12
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 157
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cancel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelIds:Ljava/util/Collection;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, p1, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;-><init>(JLjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->removeQueryResult(Ljava/util/UUID;J)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cancelIds:Ljava/util/Collection;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, p1, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;-><init>(JLjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 168
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received request for incorrect cache [expected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", actual="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJLjava/lang/Throwable;)V

    .line 174
    .local v2, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    invoke-direct {p0, p1, v2, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z

    goto :goto_0

    .line 177
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->distributedQueryInfo(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 182
    .local v1, "info":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    if-nez v1, :cond_4

    .line 196
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->runFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->runQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 190
    .end local v1    # "info":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    const-string v4, "Failed to run query."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 193
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;-><init>(IJLjava/lang/Throwable;)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendQueryResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponse;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->threads:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
.end method

.method public queryDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 27
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v7, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing distributed query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 499
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->nextIoId()J

    move-result-wide v4

    .line 501
    .local v4, "reqId":J
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/lang/Iterable;)V

    .line 505
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;*>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v14

    .line 509
    .local v14, "clsName":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->transform()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->arguments()[Ljava/lang/Object;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash()I

    move-result v24

    move-wide v8, v4

    invoke-direct/range {v6 .. v24}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;-><init>(IJLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;IZ[Ljava/lang/Object;ZZLjava/util/UUID;I)V

    .line 528
    .local v6, "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->addQueryFuture(JLorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->topic(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v26

    .line 532
    .local v26, "topic":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->resHnd:Lorg/apache/ignite/lang/IgniteBiInClosure;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addOrderedHandler(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 534
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v6, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendRequest(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v6    # "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    .end local v14    # "clsName":Ljava/lang/String;
    .end local v26    # "topic":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 542
    :catch_0
    move-exception v25

    .line 543
    .local v25, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public queryFieldsDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 27
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v7, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 606
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing distributed query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 609
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->nextIoId()J

    move-result-wide v4

    .line 611
    .local v4, "reqId":J
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/lang/Iterable;)V

    .line 615
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 617
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->transform()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->arguments()[Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeMetadata()Z

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash()I

    move-result v24

    move-wide v8, v4

    invoke-direct/range {v6 .. v24}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;-><init>(IJLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;IZ[Ljava/lang/Object;ZZLjava/util/UUID;I)V

    .line 636
    .local v6, "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->addQueryFuture(JLorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->topic(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v26

    .line 640
    .local v26, "topic":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->resHnd:Lorg/apache/ignite/lang/IgniteBiInClosure;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addOrderedHandler(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 642
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$5;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v6, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->sendRequest(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v6    # "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    .end local v26    # "topic":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 650
    :catch_0
    move-exception v25

    .line 651
    .local v25, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public queryFieldsLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 5
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 583
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing query on local node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 586
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V

    .line 589
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 591
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->execute()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-object v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public queryLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 5
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 474
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing query on local node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 477
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V

    .line 480
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;*>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 482
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->execute()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method protected removeQueryFuture(J)V
    .locals 3
    .param p1, "reqId"    # J

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public start0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->start0()V

    .line 85
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 93
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 103
    return-void

    .line 102
    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method
