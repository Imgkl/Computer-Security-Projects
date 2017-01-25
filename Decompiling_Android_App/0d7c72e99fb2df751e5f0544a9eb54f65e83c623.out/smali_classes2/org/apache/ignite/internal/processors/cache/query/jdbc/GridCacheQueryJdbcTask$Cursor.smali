.class final Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
.super Ljava/lang/Object;
.source "GridCacheQueryJdbcTask.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final cursor:Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field final lastAccessTime:J

.field final totalCnt:I


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/Iterator;IJ)V
    .locals 0
    .param p3, "totalCnt"    # I
    .param p4, "lastAccessTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<*>;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "cursor":Lorg/apache/ignite/cache/query/QueryCursor;, "Lorg/apache/ignite/cache/query/QueryCursor<Ljava/util/List<*>;>;"
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->cursor:Lorg/apache/ignite/cache/query/QueryCursor;

    .line 379
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->iter:Ljava/util/Iterator;

    .line 380
    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->totalCnt:I

    .line 381
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->lastAccessTime:J

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/Iterator;IJLorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/query/QueryCursor;
    .param p2, "x1"    # Ljava/util/Iterator;
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$1;

    .prologue
    .line 358
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;-><init>(Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/Iterator;IJ)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->iter:Ljava/util/Iterator;

    return-object v0
.end method
