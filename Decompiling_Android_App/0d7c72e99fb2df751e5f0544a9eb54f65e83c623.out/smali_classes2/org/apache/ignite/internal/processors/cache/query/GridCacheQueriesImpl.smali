.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;
.super Ljava/lang/Object;
.source "GridCacheQueriesImpl.java"

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
.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
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
    .line 37
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
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
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 62
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 63
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createFullTextQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 108
    const-string v0, "cls"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "search"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->TEXT:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const/4 v6, 0x0

    .line 122
    const-string v0, "clsName"

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const-string v0, "search"

    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->TEXT:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    .local p1, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 137
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createSpiQuery()Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 152
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createSqlFieldsQuery(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 95
    const-string v0, "qry"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v4, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createSqlFieldsQuery(Ljava/lang/String;Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const/4 v3, 0x0

    .line 207
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object v4, p1

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public createSqlQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 67
    const-string v0, "cls"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v0, "clause"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public createSqlQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 8
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const/4 v6, 0x0

    .line 81
    const-string v0, "clsName"

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-string v0, "clause"

    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    return-object v0

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 1
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
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryTwoStep(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;

    move-result-object v0

    return-object v0
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
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v2, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    invoke-direct {v2, p2}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setArgs([Ljava/lang/Object;)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->metrics()Lorg/apache/ignite/cache/query/QueryMetrics;

    move-result-object v0

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
    .line 226
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 227
    return-void
.end method

.method public rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
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
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
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
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    const-string v0, "typeName"

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->resetMetrics()V

    .line 198
    return-void
.end method

.method public sqlMetadata()Ljava/util/Collection;
    .locals 1
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
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->sqlMetadata()Ljava/util/Collection;

    move-result-object v0

    return-object v0
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
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 221
    return-void
.end method
