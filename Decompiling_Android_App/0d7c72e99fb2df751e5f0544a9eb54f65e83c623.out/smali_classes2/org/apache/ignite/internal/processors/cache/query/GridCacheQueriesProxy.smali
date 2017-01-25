.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;
.super Ljava/lang/Object;
.source "GridCacheQueriesProxy.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;)V
    .locals 1
    .param p2    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p3, "delegate":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 67
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 68
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    .line 69
    return-void
.end method


# virtual methods
.method public createFullTextQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p2, "search"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 121
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createFullTextQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 124
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "search"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 133
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 136
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    .local p1, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 145
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 148
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createSpiQuery()Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 157
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSpiQuery()Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createSqlFieldsQuery(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1, "qry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 109
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSqlFieldsQuery(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createSqlFieldsQuery(Ljava/lang/String;Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1, "qry"    # Ljava/lang/String;
    .param p2, "incMeta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 265
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSqlFieldsQuery(Ljava/lang/String;Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 268
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createSqlQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p2, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 85
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSqlQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 88
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public createSqlQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 97
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSqlQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public execute(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 3
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 169
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->execute(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 172
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public executeTwoStepQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 3
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "sqlQry"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 181
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->executeTwoStepQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 184
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    .locals 3

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 229
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 232
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public projection()Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 281
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 284
    return-void
.end method

.method public rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 217
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 220
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 193
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 196
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 205
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 208
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public resetMetrics()V
    .locals 3

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 241
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->resetMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public sqlMetadata()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 253
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->sqlMetadata()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 276
    return-void
.end method
