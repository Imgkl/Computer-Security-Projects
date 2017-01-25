.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;
.super Ljava/lang/Object;
.source "GridCacheTwoStepQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DFLT_PAGE_SIZE:I = 0x3e8

.field private static final serialVersionUID:J


# instance fields
.field private mapQrys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private pageSize:I

.field private reduce:Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "qry"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->pageSize:I

    .line 55
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->reduce:Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;

    .line 56
    return-void
.end method


# virtual methods
.method public varargs addMapQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "qry"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "alias must not be empty"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->mapQrys:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->mapQrys:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->mapQrys:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add query, alias already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public mapQueries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->mapQrys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->pageSize:I

    return v0
.end method

.method public pageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->pageSize:I

    .line 63
    return-void
.end method

.method public reduceQuery()Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;->reduce:Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
