.class Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;
.super Lorg/apache/ignite/internal/util/typedef/CAX;
.source "GridCacheQueryJdbcTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->scheduleRemoval(Ljava/util/UUID;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->val$id:Ljava/util/UUID;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CAX;-><init>()V

    return-void
.end method


# virtual methods
.method public applyx()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x927c0

    .line 302
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->access$100(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->val$id:Ljava/util/UUID;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    .line 304
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    if-nez v0, :cond_1

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->lastAccessTime:J

    sub-long v2, v4, v6

    .line 310
    .local v2, "untouchedTime":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 311
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->val$id:Ljava/util/UUID;

    sub-long v6, v8, v2

    invoke-static {v1, v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->access$200(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;J)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;->val$id:Ljava/util/UUID;

    invoke-static {v1, v4, v0}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->access$300(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
