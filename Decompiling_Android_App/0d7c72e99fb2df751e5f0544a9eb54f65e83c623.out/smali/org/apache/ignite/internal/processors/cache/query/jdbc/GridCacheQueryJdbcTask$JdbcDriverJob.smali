.class Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "GridCacheQueryJdbcTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdbcDriverJob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final first:Z

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .param p2, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    .line 167
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    :goto_0
    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 170
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->args:Ljava/util/Map;

    .line 171
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->first:Z

    .line 172
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # J

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->scheduleRemoval(Ljava/util/UUID;J)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->remove(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;)Z

    move-result v0

    return v0
.end method

.method private argument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->args:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private remove(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;)Z
    .locals 1
    .param p1, "futId"    # Ljava/util/UUID;
    .param p2, "c"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->cursor:Lorg/apache/ignite/cache/query/QueryCursor;

    invoke-interface {v0}, Lorg/apache/ignite/cache/query/QueryCursor;->close()V

    .line 286
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleRemoval(Ljava/util/UUID;J)V
    .locals 4
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "delay"    # J

    .prologue
    .line 299
    # getter for: Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->access$400()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;Ljava/util/UUID;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 320
    return-void
.end method

.method private static sqlType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 33

    .prologue
    .line 176
    const-string v4, "cache"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 177
    .local v13, "cacheName":Ljava/lang/String;
    const-string v4, "sql"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 178
    .local v28, "sql":Ljava/lang/String;
    const-string/jumbo v4, "timeout"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 179
    .local v30, "timeout":Ljava/lang/Long;
    const-string v4, "args"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 180
    .local v11, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v4, "futId"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/UUID;

    .line 181
    .local v17, "futId":Ljava/util/UUID;
    const-string v4, "pageSize"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 182
    .local v23, "pageSize":I
    const-string v4, "maxRows"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 184
    .local v21, "maxRows":I
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-gez v21, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v4

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 188
    .local v2, "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    const/16 v29, 0x0

    .line 189
    .local v29, "tbls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 190
    .local v14, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .line 192
    .local v31, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->first:Z

    if-eqz v4, :cond_7

    .line 193
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v28, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 194
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v30, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 195
    :cond_2
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v11, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 196
    :cond_3
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-eqz v17, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4, v13}, Lorg/apache/ignite/Ignite;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v12

    .line 200
    .local v12, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    new-instance v4, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setArgs([Ljava/lang/Object;)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-result-object v24

    .line 202
    .local v24, "qry":Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    .line 204
    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Lorg/apache/ignite/IgniteCache;->query(Lorg/apache/ignite/cache/query/Query;)Lorg/apache/ignite/cache/query/QueryCursor;

    move-result-object v3

    .local v3, "cursor":Lorg/apache/ignite/cache/query/QueryCursor;, "Lorg/apache/ignite/cache/query/QueryCursor<Ljava/util/List<*>;>;"
    move-object v4, v3

    .line 206
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;->fieldsMeta()Ljava/util/Collection;

    move-result-object v22

    .line 208
    .local v22, "meta":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-nez v22, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 210
    :cond_5
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "tbls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .restart local v29    # "tbls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .restart local v14    # "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .restart local v31    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;

    .line 215
    .local v15, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;
    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;->typeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;->fieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;->fieldTypeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v15    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    .line 222
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    .end local v2    # "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    invoke-interface {v3}, Lorg/apache/ignite/cache/query/QueryCursor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;-><init>(Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/Iterator;IJLorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$1;)V

    .line 225
    .end local v3    # "cursor":Lorg/apache/ignite/cache/query/QueryCursor;, "Lorg/apache/ignite/cache/query/QueryCursor<Ljava/util/List<*>;>;"
    .end local v12    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v22    # "meta":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v24    # "qry":Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .restart local v2    # "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    :cond_7
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    if-nez v17, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v20

    .line 229
    .local v20, "m":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;>;"
    if-nez v2, :cond_9

    .line 230
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    .line 232
    .restart local v2    # "c":Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;
    :cond_9
    if-nez v2, :cond_a

    .line 233
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Cursor was removed due to long inactivity."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    :cond_a
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v27, "rows":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    iget v7, v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->totalCnt:I

    .line 239
    .local v7, "totalCnt":I
    const/16 v16, 0x1

    .line 241
    .local v16, "finished":Z
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 242
    .local v25, "row":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v26, "row0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 245
    .local v32, "val":Ljava/lang/Object;
    invoke-static/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->sqlType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .end local v32    # "val":Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v32    # "val":Ljava/lang/Object;
    :cond_c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    goto :goto_2

    .line 247
    .end local v32    # "val":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_10

    .line 259
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "row":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v26    # "row0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_e
    :goto_3
    if-nez v16, :cond_12

    .line 260
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->first:Z

    if-eqz v4, :cond_11

    .line 261
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-wide/32 v4, 0x927c0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->scheduleRemoval(Ljava/util/UUID;J)V

    .line 273
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->first:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    const/4 v5, 0x2

    aput-object v29, v4, v5

    const/4 v5, 0x3

    aput-object v14, v4, v5

    const/4 v5, 0x4

    aput-object v31, v4, v5

    const/4 v5, 0x5

    aput-object v27, v4, v5

    const/4 v5, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_5
    return-object v4

    .line 252
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v25    # "row":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v26    # "row0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_10
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v0, v23

    if-ne v4, v0, :cond_b

    .line 253
    const/16 v16, 0x0

    .line 255
    goto :goto_3

    .line 265
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "row":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v26    # "row0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_11
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;

    iget-object v5, v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->cursor:Lorg/apache/ignite/cache/query/QueryCursor;

    iget-object v6, v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->iter:Ljava/util/Iterator;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;-><init>(Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/Iterator;IJLorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 266
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->$assertionsDisabled:Z

    if-nez v4, :cond_f

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Concurrent cursor modification."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 268
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->first:Z

    if-eqz v4, :cond_13

    .line 269
    iget-object v4, v2, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;->cursor:Lorg/apache/ignite/cache/query/QueryCursor;

    invoke-interface {v4}, Lorg/apache/ignite/cache/query/QueryCursor;->close()V

    goto :goto_4

    .line 271
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;->remove(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;)Z

    goto/16 :goto_4

    .line 273
    :cond_14
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v27, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_5
.end method
