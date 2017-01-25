.class Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "GridCacheQueryJdbcMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdbcDriverMetadataJob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final cacheName:Ljava/lang/String;

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
    .line 78
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->cacheName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 29

    .prologue
    .line 106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v26, v0

    check-cast v26, Lorg/apache/ignite/internal/IgniteEx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->cacheName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v4

    .line 108
    .local v4, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    sget-boolean v26, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->$assertionsDisabled:Z

    if-nez v26, :cond_0

    if-nez v4, :cond_0

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v4    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    :catch_0
    move-exception v22

    .line 147
    .local v22, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    const-string v27, "Failed to get metadata for JDBC."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    new-instance v8, Ljava/sql/SQLException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 151
    .local v8, "err":Ljava/sql/SQLException;
    const/16 v21, 0x1

    .line 154
    .local v21, "status":B
    :try_start_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->access$100()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 161
    .end local v8    # "err":Ljava/sql/SQLException;
    .end local v22    # "t":Ljava/lang/Throwable;
    .local v6, "data":[B
    :goto_0
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 163
    .local v19, "packet":[B
    const/16 v26, 0x0

    aput-byte v21, v19, v26

    .line 165
    const/16 v26, 0x0

    const/16 v27, 0x1

    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v6, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 167
    return-object v19

    .line 110
    .end local v6    # "data":[B
    .end local v19    # "packet":[B
    .end local v21    # "status":B
    .restart local v4    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    :cond_0
    :try_start_2
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->sqlMetadata()Ljava/util/Collection;

    move-result-object v17

    .line 112
    .local v17, "metas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v20

    .line 114
    .local v20, "schemasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v15, "indexesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;

    .line 117
    .local v16, "meta":Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;->cacheName()Ljava/lang/String;

    move-result-object v18

    .line 119
    .local v18, "name":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 120
    const-string v18, "PUBLIC"

    .line 122
    :cond_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;->types()Ljava/util/Collection;

    move-result-object v24

    .line 124
    .local v24, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v25

    .line 126
    .local v25, "typesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 127
    .local v23, "type":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;->fields(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;->indexes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;

    .line 130
    .local v14, "idx":Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;
    const/4 v5, 0x0

    .line 132
    .local v5, "cnt":I
    invoke-interface {v14}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;->fields()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 133
    .local v9, "field":Ljava/lang/String;
    const/16 v26, 0x7

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    aput-object v18, v27, v26

    const/16 v26, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v26

    const/16 v28, 0x2

    invoke-interface {v14}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;->unique()Z

    move-result v26

    if-nez v26, :cond_4

    const/16 v26, 0x1

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v27, v28

    const/16 v26, 0x3

    invoke-interface {v14}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v26

    const/16 v26, 0x4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v26

    const/16 v26, 0x5

    aput-object v9, v27, v26

    const/16 v26, 0x6

    invoke-interface {v14, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;->descending(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v27, v26

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 v26, 0x0

    goto :goto_3

    .line 139
    .end local v5    # "cnt":I
    .end local v9    # "field":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "idx":Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;
    .end local v23    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 142
    .end local v16    # "meta":Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;
    .end local v18    # "name":Ljava/lang/String;
    .end local v24    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v25    # "typesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    const/16 v21, 0x0

    .line 144
    .restart local v21    # "status":B
    # getter for: Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->access$100()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v20, v27, v28

    const/16 v28, 0x1

    aput-object v15, v27, v28

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .restart local v6    # "data":[B
    goto/16 :goto_0

    .line 156
    .end local v4    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    .end local v6    # "data":[B
    .end local v15    # "indexesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v17    # "metas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;>;"
    .end local v20    # "schemasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v8    # "err":Ljava/sql/SQLException;
    .restart local v22    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 157
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v26, Lorg/apache/ignite/IgniteException;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v26
.end method
