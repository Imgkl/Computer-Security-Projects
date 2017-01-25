.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .param p2, "recipient"    # Ljava/lang/Object;

    .prologue
    .line 2212
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;-><init>(Ljava/lang/Object;)V

    .line 2214
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 2215
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2200
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1

    .prologue
    .line 2221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    return-object v0
.end method
