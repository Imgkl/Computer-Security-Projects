.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
.super Ljava/lang/Object;
.source "GridCacheQueryCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryFutureWrapper"
.end annotation


# instance fields
.field private volatile lastUseTs:J

.field private final qryFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "qryFut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->qryFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    .line 461
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->lastUseTs:J

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;

    .prologue
    .line 448
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->future()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.method private future()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->lastUseTs:J

    .line 470
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->qryFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    return-object v0
.end method

.method private lastUseTimestamp()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->lastUseTs:J

    return-wide v0
.end method
