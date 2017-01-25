.class public Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;
.super Ljava/lang/Object;
.source "GridCacheProxyImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheProxy;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheProxy",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private aff:Lorg/apache/ignite/cache/affinity/Affinity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation
.end field

.field private cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    .locals 2
    .param p3    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "delegate":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    .local p3, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 94
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 95
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 97
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 98
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 100
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-direct {v1, p1, p3, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/affinity/Affinity;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->aff:Lorg/apache/ignite/cache/affinity/Affinity;

    .line 102
    return-void
.end method


# virtual methods
.method public affinity()Lorg/apache/ignite/cache/affinity/Affinity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->aff:Lorg/apache/ignite/cache/affinity/Affinity;

    return-object v0
.end method

.method public affinityNode()Z
    .locals 3

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 268
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinityNode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 271
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1256
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1259
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1264
    return-void

    .line 1262
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clear(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1304
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1307
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1312
    return-void

    .line 1310
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1343
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clear(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1348
    return-void

    .line 1346
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearAll(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1352
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1355
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAll(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1360
    return-void

    .line 1358
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1271
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1274
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1283
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1286
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1295
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1298
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearLocally()V
    .locals 3

    .prologue
    .line 1244
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1247
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearLocally()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1252
    return-void

    .line 1250
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearLocally(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1316
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1319
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearLocally(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1322
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public clearLocallyAll(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1328
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1331
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearLocallyAll(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1336
    return-void

    .line 1334
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public configuration()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 348
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 351
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 372
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 375
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public containsKeys(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 360
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeys(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 363
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 384
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 387
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 396
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 399
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public delegate()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1199
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1202
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1022
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1025
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1028
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public entrySet(I)Ljava/util/Set;
    .locals 3
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1037
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySet(I)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1040
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 3
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1046
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1049
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1052
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public evict(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1211
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->evict(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1214
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public evictAll()V
    .locals 3

    .prologue
    .line 1232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1235
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1240
    return-void

    .line 1238
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public evictAll(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1223
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->evictAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1228
    return-void

    .line 1226
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1970
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public flags()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 292
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->flags()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 295
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public flagsOff([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->flagsOff([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    return-object v0
.end method

.method public flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    return-object v0
.end method

.method public forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .param p1, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v0

    return-object v0
.end method

.method public forceRepartition()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1934
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1937
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->forceRepartition()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1940
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public gateProjection()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 433
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 436
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs get(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "deserializePortable"    # Z
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 446
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 449
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getAll(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 578
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 581
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 590
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 593
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getAllOutTx(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 494
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllOutTx(Ljava/util/List;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 497
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getAllOutTxAsync(Ljava/util/List;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 506
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllOutTxAsync(Ljava/util/List;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 509
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 458
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 461
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 470
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 473
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public getForcePrimaryAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 482
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getForcePrimaryAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 485
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public globalPrimarySize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1814
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1817
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->globalPrimarySize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1820
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public globalSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1778
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1781
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->globalSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1784
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public gridProjection()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->gridProjection()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public igfsDataSpaceMax()J
    .locals 4

    .prologue
    .line 539
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 542
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 545
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public igfsDataSpaceUsed()J
    .locals 4

    .prologue
    .line 527
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 530
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 533
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 3
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 707
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 710
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 764
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 767
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 735
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 738
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 778
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 781
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 750
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 753
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 721
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 724
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIgfsDataCache()Z
    .locals 3

    .prologue
    .line 515
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 518
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isIgfsDataCache()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 521
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isLocked(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1706
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1709
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isLocked(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1712
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isLockedByThread(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1718
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1721
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isLockedByThread(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1724
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isMongoDataCache()Z
    .locals 3

    .prologue
    .line 551
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 554
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isMongoDataCache()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 557
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isMongoMetaCache()Z
    .locals 3

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 566
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isMongoMetaCache()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 569
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1922
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1925
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1928
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 965
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 968
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 3
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 977
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 980
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1175
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1178
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 232
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 244
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 247
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    .locals 3
    .param p2, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .param p3, "plc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1163
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1166
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localRemoveAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1617
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1620
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localRemoveAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1625
    return-void

    .line 1623
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 3
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1766
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1769
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1772
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public lock(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1630
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1633
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lock(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1636
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1659
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1662
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1669
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1672
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1675
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public lockAsync(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1643
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1646
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAsync(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1649
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public metrics()Lorg/apache/ignite/cache/CacheMetrics;
    .locals 3

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 196
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics()Lorg/apache/ignite/cache/CacheMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 199
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
    .locals 3

    .prologue
    .line 205
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 208
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 211
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nearSize()I
    .locals 3

    .prologue
    .line 1790
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1793
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->nearSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1796
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public offHeapAllocatedSize()J
    .locals 4

    .prologue
    .line 1886
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1889
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapAllocatedSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1892
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public offHeapEntriesCount()J
    .locals 4

    .prologue
    .line 1874
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1877
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapEntriesCount()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1880
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public offHeapIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1862
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1865
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapIterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1868
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public overflowSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 220
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->overflowSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 223
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1147
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->peek(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1150
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1184
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1187
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1190
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    return-object v0
.end method

.method public primaryEntrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1073
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primaryEntrySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1076
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 3
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1061
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1064
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public primaryKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 989
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primaryKeySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 992
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public primarySize()I
    .locals 3

    .prologue
    .line 1802
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1805
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primarySize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1808
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public primaryValues()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1013
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primaryValues()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1016
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TK1;>;",
            "Ljava/lang/Class",
            "<-TV1;>;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<-TK1;>;"
    .local p2, "valType":Ljava/lang/Class;, "Ljava/lang/Class<-TV1;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    return-object v0
.end method

.method public projection(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->projection(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    return-object v0
.end method

.method public promote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1826
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1829
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->promote(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1832
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public promoteAll(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1838
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1841
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->promoteAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1844
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1846
    return-void

    .line 1844
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v7

    .line 616
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 619
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 3
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 603
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 606
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 937
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 940
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 945
    return-void

    .line 943
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 953
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 956
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putAllConflict(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 680
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAllConflict(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 685
    return-void

    .line 683
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 693
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 696
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v7

    .line 642
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 645
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v0
.end method

.method public putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 629
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 632
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 816
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 819
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 822
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 831
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 834
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v7

    .line 655
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 658
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 3
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 668
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 671
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v7

    .line 807
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 810
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v0
.end method

.method public putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 791
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 794
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 843
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 846
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 855
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 858
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    return-object v0
.end method

.method public randomEntry()Ljavax/cache/Cache$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 256
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->randomEntry()Ljavax/cache/Cache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 259
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1954
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1955
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 1956
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1958
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 1959
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1961
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 1962
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1964
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    .line 1965
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/affinity/Affinity;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->aff:Lorg/apache/ignite/cache/affinity/Affinity;

    .line 1966
    return-void
.end method

.method public reload(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 409
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->reload(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 412
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public reloadAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 421
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->reloadAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 424
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1378
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1381
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1384
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 3
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1365
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1368
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1371
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1542
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1545
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1548
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1593
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1596
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1601
    return-void

    .line 1599
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1570
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1575
    return-void

    .line 1573
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1605
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1608
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1611
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1580
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1583
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1586
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAllConflict(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1432
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllConflict(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1437
    return-void

    .line 1435
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1443
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1446
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1449
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1557
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1560
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1406
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1409
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1393
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1396
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1518
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1521
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1524
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1456
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1459
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1462
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 3
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1416
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1419
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1422
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1533
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1536
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1485
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1488
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1472
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1475
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 867
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 870
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 915
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 918
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 879
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 882
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 927
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 930
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1506
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1509
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1512
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 888
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 891
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 894
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 903
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 906
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1497
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1500
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1730
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1733
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1736
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public size([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 3
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1742
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1745
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->size([Lorg/apache/ignite/cache/CachePeekMode;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1748
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1754
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1757
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1760
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public swapIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1850
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1853
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->swapIterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1856
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public swapKeys()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1910
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1913
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->swapKeys()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1916
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public swapSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1898
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1901
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->swapSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1904
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-wide v2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public toMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 280
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->toMap()Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 283
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1989
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tx()Lorg/apache/ignite/transactions/Transaction;
    .locals 3

    .prologue
    .line 1132
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1135
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->tx()Lorg/apache/ignite/transactions/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txStart()Lorg/apache/ignite/transactions/Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1085
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStart()Lorg/apache/ignite/transactions/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1088
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
    .locals 3
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 1106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1109
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1112
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
    .locals 7
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p3, "timeout"    # J
    .param p5, "txSize"    # I

    .prologue
    .line 1120
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1123
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1126
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 3
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 1094
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1097
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1100
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txSynchronizations()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/transactions/TransactionSynchronization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 184
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txSynchronizations()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 187
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txSynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 3
    .param p1, "syncs"    # Lorg/apache/ignite/transactions/TransactionSynchronization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 160
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txSynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public txUnsynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 3
    .param p1, "syncs"    # Lorg/apache/ignite/transactions/TransactionSynchronization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 172
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txUnsynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public unlock(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1681
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1684
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->unlock(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1689
    return-void

    .line 1687
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1694
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1697
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1702
    return-void

    .line 1700
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1001
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1004
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 6
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1978
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v2

    .line 1980
    .local v2, "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    :goto_0
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v0, v2

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-object v3, v0

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v4

    .line 1978
    .end local v2    # "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1983
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v3
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
    .line 1946
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1947
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1948
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1949
    return-void
.end method
