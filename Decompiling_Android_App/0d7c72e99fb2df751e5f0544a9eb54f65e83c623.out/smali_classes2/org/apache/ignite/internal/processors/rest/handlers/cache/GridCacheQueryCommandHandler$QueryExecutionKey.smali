.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;
.super Ljava/lang/Object;
.source "GridCacheQueryCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryExecutionKey"
.end annotation


# instance fields
.field private qryId:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "qryId"    # J

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;->qryId:J

    .line 424
    return-void
.end method

.method synthetic constructor <init>(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    .prologue
    .line 415
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    if-ne p0, p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 431
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 432
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 434
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;

    .line 436
    .local v0, "that":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;->qryId:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;->qryId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 441
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;->qryId:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;->qryId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
