.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;
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
    name = "FetchQueryResults"
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
.field private static final serialVersionUID:J


# instance fields
.field private g:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;)V
    .locals 0
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .line 364
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;-><init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;)V

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
    .line 348
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->g:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 370
    .local v0, "locMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->queryId()J

    move-result-wide v2

    new-instance v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->req:Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->queryId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;-><init>(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;->g:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v1, v0, v4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->access$800(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;Ljava/util/concurrent/ConcurrentMap;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v1

    return-object v1
.end method
