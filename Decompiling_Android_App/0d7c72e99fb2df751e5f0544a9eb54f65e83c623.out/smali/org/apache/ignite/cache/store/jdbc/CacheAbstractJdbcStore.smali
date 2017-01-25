.class public abstract Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;
.implements Lorg/apache/ignite/lifecycle/LifecycleAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;,
        Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;,
        Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;,
        Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;",
        "Lorg/apache/ignite/lifecycle/LifecycleAware;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final ATTR_CONN_PROP:Ljava/lang/String; = "JDBC_STORE_CONNECTION"

.field protected static final DFLT_BATCH_SIZE:I = 0x200

.field protected static final DFLT_PARALLEL_LOAD_CACHE_MINIMUM_THRESHOLD:I = 0x200

.field protected static final EMPTY_COLUMN_VALUE:[Ljava/lang/Object;

.field protected static final MAX_ATTEMPT_WRITE_COUNT:I = 0x2


# instance fields
.field private batchSz:I

.field protected volatile cacheMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheMappingsLock:Ljava/util/concurrent/locks/Lock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected dataSrc:Ljavax/sql/DataSource;

.field protected dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field protected log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private maxPoolSz:I

.field private parallelLoadCacheMinThreshold:I

.field private ses:Lorg/apache/ignite/cache/store/CacheStoreSession;
    .annotation runtime Lorg/apache/ignite/resources/CacheStoreSessionResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const-class v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->EMPTY_COLUMN_VALUE:[Ljava/lang/Object;

    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    const/16 v1, 0x200

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappingsLock:Ljava/util/concurrent/locks/Lock;

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings:Ljava/util/Map;

    .line 125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->maxPoolSz:I

    .line 128
    iput v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    .line 131
    iput v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->parallelLoadCacheMinThreshold:I

    .line 1672
    return-void
.end method

.method private cacheMappings(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 551
    .local v2, "entryMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 592
    .end local v2    # "entryMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    .local v3, "entryMappings":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    :goto_0
    return-object v3

    .line 554
    .end local v3    # "entryMappings":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    .restart local v2    # "entryMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/Map;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    if-eqz v2, :cond_1

    .line 592
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    .restart local v3    # "entryMappings":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    goto :goto_0

    .line 562
    .end local v3    # "entryMappings":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->ignite()Lorg/apache/ignite/Ignite;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/apache/ignite/Ignite;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v9

    const-class v10, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 564
    .local v1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v8

    .line 566
    .local v8, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    .line 568
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 569
    .local v7, "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 571
    .local v5, "keyTypeId":Ljava/lang/Object;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 572
    new-instance v9, Ljavax/cache/CacheException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key type must be unique in type metadata [cache name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", key type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    .end local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "keyTypeId":Ljava/lang/Object;
    .end local v7    # "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .end local v8    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 575
    .restart local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "keyTypeId":Ljava/lang/Object;
    .restart local v7    # "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .restart local v8    # "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->checkMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 576
    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->checkMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 578
    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    invoke-direct {v10, p1, v11, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;-><init>(Ljava/lang/String;Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;Lorg/apache/ignite/cache/CacheTypeMetadata;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 581
    .end local v5    # "keyTypeId":Ljava/lang/Object;
    .end local v7    # "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings:Ljava/util/Map;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 583
    .local v6, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;>;"
    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {p0, p1, v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->prepareBuilders(Ljava/lang/String;Ljava/util/Collection;)V

    .line 587
    iput-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    .restart local v3    # "entryMappings":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    goto/16 :goto_0
.end method

.method private static checkMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p0, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 511
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->simpleType(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 513
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than one field for simple type [cache name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 516
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 518
    .local v2, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 519
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing database name in mapping description [cache name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :cond_1
    invoke-virtual {v2, v0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->setJavaType(Ljava/lang/Class;)V

    .line 542
    .end local v2    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    :cond_2
    return-void

    .line 525
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 526
    .restart local v2    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 527
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing database name in mapping description [cache name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    :cond_5
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 531
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing field name in mapping description [cache name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 534
    :cond_6
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaType()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_4

    .line 535
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing field type in mapping description [cache name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "keyTypeId"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .line 606
    .local v0, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    if-nez v0, :cond_1

    .line 607
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find mapping description [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    .end local p1    # "cacheName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p1    # "cacheName":Ljava/lang/String;
    :cond_0
    const-string p1, "<default>"

    goto :goto_0

    .line 610
    :cond_1
    return-object v0
.end method

.method private executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V
    .locals 9
    .param p1, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p2, "stmt"    # Ljava/sql/Statement;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "fromIdx"    # I
    .param p5, "prepared"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            "Ljava/sql/Statement;",
            "Ljava/lang/String;",
            "II",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p6, "lazyObjs":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<[Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object v5

    .line 1090
    .local v5, "rowCounts":[I
    array-length v3, v5

    .line 1092
    .local v3, "numOfRowCnt":I
    if-eq v3, p5, :cond_0

    .line 1093
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected number of updated rows [table="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", actual="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1096
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 1097
    aget v1, v5, v2

    .line 1099
    .local v1, "cnt":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    const/4 v6, -0x2

    if-eq v1, v6, :cond_1

    .line 1100
    invoke-virtual {p6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 1102
    .local v4, "objs":[Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " returned unexpected updated row count [table="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, p4, v2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected=1, actual="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/BatchUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    .end local v4    # "objs":[Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1107
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    .end local v3    # "numOfRowCnt":I
    .end local v5    # "rowCounts":[I
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "be":Ljava/sql/BatchUpdateException;
    invoke-virtual {v0}, Ljava/sql/BatchUpdateException;->getUpdateCounts()[I

    move-result-object v5

    .line 1110
    .restart local v5    # "rowCounts":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 1111
    aget v6, v5, v2

    const/4 v7, -0x3

    if-ne v6, v7, :cond_2

    .line 1112
    invoke-virtual {p6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 1114
    .restart local v4    # "objs":[Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed on execution [table="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, p4, v2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1110
    .end local v4    # "objs":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1119
    :cond_3
    throw v0

    .line 1121
    .end local v0    # "be":Ljava/sql/BatchUpdateException;
    .restart local v3    # "numOfRowCnt":I
    :cond_4
    return-void
.end method

.method private loadCacheFull(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "m"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p2, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    const/4 v0, 0x0

    .line 486
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method private loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 6
    .param p1, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p3, "lowerBound"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "upperBound"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p2, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;[Ljava/lang/Object;[Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    return-object v0
.end method

.method protected static simpleType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUpsert(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljavax/cache/Cache$Entry;)V
    .locals 10
    .param p1, "insStmt"    # Ljava/sql/PreparedStatement;
    .param p2, "updStmt"    # Ljava/sql/PreparedStatement;
    .param p3, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/PreparedStatement;",
            "Ljava/sql/PreparedStatement;",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p4, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 802
    .local v5, "we":Ljavax/cache/integration/CacheWriterException;
    const/4 v0, 0x0

    .local v0, "attempt":I
    move-object v6, v5

    .end local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    .local v6, "we":Ljavax/cache/integration/CacheWriterException;
    :goto_0
    const/4 v7, 0x2

    if-ge v0, v7, :cond_5

    .line 803
    const/4 v7, 0x1

    :try_start_0
    invoke-interface {p4}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, p2, v7, p3, v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillValueParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    move-result v3

    .line 805
    .local v3, "paramIdx":I
    invoke-interface {p4}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p2, v3, p3, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 807
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v7

    if-nez v7, :cond_0

    .line 808
    invoke-interface {p4}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p1, p3, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    move-result v3

    .line 810
    invoke-interface {p4}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p1, v3, p3, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillValueParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 813
    :try_start_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 815
    if-lez v0, :cond_0

    .line 816
    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Entry was inserted in database on second try [table="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    :cond_0
    if-lez v0, :cond_1

    .line 851
    :try_start_2
    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Entry was updated in database on second try [table="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 854
    :cond_1
    return-void

    .line 819
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "sqlState":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v2

    .line 824
    .local v2, "nested":Ljava/sql/SQLException;
    :goto_1
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 825
    invoke-virtual {v2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    .line 827
    invoke-virtual {v2}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v2

    goto :goto_1

    .line 832
    :cond_2
    const-string v7, "23505"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "23000"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 833
    :cond_3
    if-nez v6, :cond_6

    .line 834
    new-instance v5, Ljavax/cache/integration/CacheWriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed insert entry in database, violate a unique index or primary key [table="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 837
    .end local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    :goto_2
    :try_start_3
    invoke-virtual {v5, v1}, Ljavax/cache/integration/CacheWriterException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 839
    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed insert entry in database, violate a unique index or primary key [table="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 802
    add-int/lit8 v0, v0, 0x1

    move-object v6, v5

    .end local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    goto/16 :goto_0

    .line 845
    :cond_4
    :try_start_4
    new-instance v7, Ljavax/cache/integration/CacheWriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed insert entry in database [table="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 859
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v2    # "nested":Ljava/sql/SQLException;
    .end local v3    # "paramIdx":I
    .end local v4    # "sqlState":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v5, v6

    .line 860
    .end local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v1    # "e":Ljava/sql/SQLException;
    .restart local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    :goto_3
    new-instance v7, Ljavax/cache/integration/CacheWriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed update entry in database [table="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 857
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    :cond_5
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 859
    .end local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v1    # "e":Ljava/sql/SQLException;
    .restart local v2    # "nested":Ljava/sql/SQLException;
    .restart local v3    # "paramIdx":I
    .restart local v4    # "sqlState":Ljava/lang/String;
    .restart local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    :catch_2
    move-exception v1

    goto :goto_3

    .end local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    :cond_6
    move-object v5, v6

    .end local v6    # "we":Ljavax/cache/integration/CacheWriterException;
    .restart local v5    # "we":Ljavax/cache/integration/CacheWriterException;
    goto/16 :goto_2
.end method


# virtual methods
.method protected abstract buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/sql/ResultSet;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation
.end method

.method protected closeConnection(Ljava/sql/Connection;)V
    .locals 2
    .param p1, "conn"    # Ljava/sql/Connection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 292
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v0

    .line 295
    .local v0, "ses":Lorg/apache/ignite/cache/store/CacheStoreSession;
    invoke-interface {v0}, Lorg/apache/ignite/cache/store/CacheStoreSession;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected connection()Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v2

    .line 267
    .local v2, "ses":Lorg/apache/ignite/cache/store/CacheStoreSession;
    invoke-interface {v2}, Lorg/apache/ignite/cache/store/CacheStoreSession;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 268
    invoke-interface {v2}, Lorg/apache/ignite/cache/store/CacheStoreSession;->properties()Ljava/util/Map;

    move-result-object v1

    .line 270
    .local v1, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/Connection;>;"
    const-string v3, "JDBC_STORE_CONNECTION"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 272
    .local v0, "conn":Ljava/sql/Connection;
    if-nez v0, :cond_0

    .line 273
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    .line 276
    const-string v3, "JDBC_STORE_CONNECTION"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v1    # "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/Connection;>;"
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    sget-boolean v5, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v3

    .line 1047
    .local v3, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1048
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start remove value from database [table="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1050
    :cond_1
    const/4 v0, 0x0

    .line 1052
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v4, 0x0

    .line 1055
    .local v4, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v0

    .line 1057
    invoke-static {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1400(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 1059
    invoke-virtual {p0, v4, v3, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 1061
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v1

    .line 1063
    .local v1, "delCnt":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 1064
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected number of deleted entries [table="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected=1, actual="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :cond_2
    invoke-virtual {p0, v0, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->end(Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 1074
    return-void

    .line 1067
    .end local v1    # "delCnt":I
    :catch_0
    move-exception v2

    .line 1068
    .local v2, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v5, Ljavax/cache/integration/CacheWriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove value from database [table="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    .end local v2    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->end(Ljava/sql/Connection;Ljava/sql/Statement;)V

    throw v5
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 1125
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1127
    :cond_0
    const/4 v8, 0x0

    .line 1130
    .local v8, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v8

    .line 1132
    const/4 v9, 0x0

    .line 1134
    .local v9, "currKeyTypeId":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1136
    .local v1, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    const/4 v2, 0x0

    .line 1138
    .local v2, "delStmt":Ljava/sql/PreparedStatement;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;

    invoke-direct {v6, p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/util/Collection;)V

    .line 1144
    .local v6, "lazyKeys":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<[Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "fromIdx":I
    const/4 v5, 0x0

    .line 1146
    .local v5, "prepared":I
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, "cacheName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v9    # "currKeyTypeId":Ljava/lang/Object;
    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1149
    .local v12, "key":Ljava/lang/Object;
    invoke-virtual {p0, v12}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1151
    .local v13, "keyTypeId":Ljava/lang/Object;
    invoke-direct {p0, v7, v13, v12}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v1

    .line 1153
    if-nez v2, :cond_2

    .line 1154
    invoke-static {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1400(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1156
    move-object v9, v13

    .line 1159
    :cond_2
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1160
    const-string v3, "deleteAll"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V

    .line 1162
    add-int/2addr v4, v5

    .line 1164
    const/4 v5, 0x0

    .line 1166
    move-object v9, v13

    .line 1169
    :cond_3
    invoke-virtual {p0, v2, v1, v12}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 1171
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 1173
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    rem-int v0, v5, v0

    if-nez v0, :cond_1

    .line 1174
    const-string v3, "deleteAll"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V

    .line 1176
    add-int/2addr v4, v5

    .line 1178
    const/4 v5, 0x0

    goto :goto_0

    .line 1182
    .end local v12    # "key":Ljava/lang/Object;
    .end local v13    # "keyTypeId":Ljava/lang/Object;
    :cond_4
    if-eqz v2, :cond_5

    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    rem-int v0, v5, v0

    if-eqz v0, :cond_5

    .line 1183
    const-string v3, "deleteAll"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :cond_5
    invoke-virtual {p0, v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    .line 1191
    return-void

    .line 1185
    .end local v1    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v2    # "delStmt":Ljava/sql/PreparedStatement;
    .end local v4    # "fromIdx":I
    .end local v5    # "prepared":I
    .end local v6    # "lazyKeys":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<[Ljava/lang/Object;>;"
    .end local v7    # "cacheName":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 1186
    .local v10, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v0, Ljavax/cache/integration/CacheWriterException;

    const-string v3, "Failed to remove values from database"

    invoke-direct {v0, v3, v10}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    .end local v10    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    throw v0
.end method

.method protected end(Ljava/sql/Connection;Ljava/sql/Statement;)V
    .locals 0
    .param p1, "conn"    # Ljava/sql/Connection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "st"    # Ljava/sql/Statement;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 306
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    .line 309
    return-void
.end method

.method protected abstract extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected fillKeyParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I
    .locals 7
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "idx"    # I
    .param p3, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p4, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 1240
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyColumns()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 1241
    .local v0, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-static {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, p4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1243
    .local v1, "fieldVal":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillParameter(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/CacheTypeFieldMetadata;Ljava/lang/Object;)V

    move p2, v3

    .line 1244
    .end local v3    # "idx":I
    .restart local p2    # "idx":I
    goto :goto_0

    .line 1246
    .end local v0    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v1    # "fieldVal":Ljava/lang/Object;
    :cond_0
    return p2
.end method

.method protected fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I
    .locals 1
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "m"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p3, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 1257
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected fillParameter(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/CacheTypeFieldMetadata;Ljava/lang/Object;)V
    .locals 4
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "i"    # I
    .param p3, "field"    # Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .param p4, "fieldVal"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    if-eqz p4, :cond_1

    .line 1206
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/UUID;

    if-ne v1, v2, :cond_0

    .line 1207
    invoke-virtual {p3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1220
    .end local p4    # "fieldVal":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-interface {p1, p2, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 1228
    :goto_1
    return-void

    .line 1209
    .restart local p4    # "fieldVal":Ljava/lang/Object;
    :sswitch_0
    check-cast p4, Ljava/util/UUID;

    .end local p4    # "fieldVal":Ljava/lang/Object;
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object p4

    .line 1211
    .local p4, "fieldVal":[B
    goto :goto_0

    .line 1214
    .local p4, "fieldVal":Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .local p4, "fieldVal":Ljava/lang/String;
    goto :goto_0

    .line 1223
    .local p4, "fieldVal":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseType()I

    move-result v1

    invoke-interface {p1, p2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1225
    .end local p4    # "fieldVal":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set statement parameter name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1207
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method protected fillValueParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I
    .locals 7
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "idx"    # I
    .param p3, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p4, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 1270
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    invoke-static {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1500(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 1271
    .local v0, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-static {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, p4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1273
    .local v1, "fieldVal":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillParameter(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/CacheTypeFieldMetadata;Ljava/lang/Object;)V

    move p2, v3

    .line 1274
    .end local v3    # "idx":I
    .restart local p2    # "idx":I
    goto :goto_0

    .line 1276
    .end local v0    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v1    # "fieldVal":Ljava/lang/Object;
    :cond_0
    return p2
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 1335
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    return v0
.end method

.method protected getColumnValue(Ljava/sql/ResultSet;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/ResultSet;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_1

    .line 353
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 416
    :cond_0
    :goto_0
    return-object v6

    .line 355
    :cond_1
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_2

    .line 356
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 358
    :cond_2
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_3

    .line 359
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    .line 361
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_4

    .line 362
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 364
    :cond_4
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_5

    .line 365
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getByte(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_0

    .line 367
    :cond_5
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_6

    .line 368
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_0

    .line 370
    :cond_6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v7, :cond_7

    .line 371
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    .line 373
    :cond_7
    const-class v7, Ljava/lang/Integer;

    if-eq p3, v7, :cond_8

    const-class v7, Ljava/lang/Long;

    if-eq p3, v7, :cond_8

    const-class v7, Ljava/lang/Double;

    if-eq p3, v7, :cond_8

    const-class v7, Ljava/lang/Byte;

    if-eq p3, v7, :cond_8

    const-class v7, Ljava/lang/Short;

    if-eq p3, v7, :cond_8

    const-class v7, Ljava/lang/Float;

    if-ne p3, v7, :cond_f

    .line 375
    :cond_8
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 377
    .local v6, "val":Ljava/lang/Object;
    if-eqz v6, :cond_e

    move-object v1, v6

    .line 378
    check-cast v1, Ljava/lang/Number;

    .line 380
    .local v1, "num":Ljava/lang/Number;
    const-class v7, Ljava/lang/Integer;

    if-ne p3, v7, :cond_9

    .line 381
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 382
    :cond_9
    const-class v7, Ljava/lang/Long;

    if-ne p3, v7, :cond_a

    .line 383
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_0

    .line 384
    :cond_a
    const-class v7, Ljava/lang/Double;

    if-ne p3, v7, :cond_b

    .line 385
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto/16 :goto_0

    .line 386
    :cond_b
    const-class v7, Ljava/lang/Byte;

    if-ne p3, v7, :cond_c

    .line 387
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto/16 :goto_0

    .line 388
    :cond_c
    const-class v7, Ljava/lang/Short;

    if-ne p3, v7, :cond_d

    .line 389
    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto/16 :goto_0

    .line 390
    :cond_d
    const-class v7, Ljava/lang/Float;

    if-ne p3, v7, :cond_f

    .line 391
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto/16 :goto_0

    .line 394
    .end local v1    # "num":Ljava/lang/Number;
    :cond_e
    sget-object v6, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->EMPTY_COLUMN_VALUE:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 397
    .end local v6    # "val":Ljava/lang/Object;
    :cond_f
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 399
    .restart local v6    # "val":Ljava/lang/Object;
    const-class v7, Ljava/util/UUID;

    if-ne p3, v7, :cond_0

    if-eqz v6, :cond_0

    .line 400
    instance-of v7, v6, Ljava/util/UUID;

    if-nez v7, :cond_0

    .line 403
    instance-of v7, v6, [B

    if-eqz v7, :cond_10

    .line 404
    check-cast v6, [B

    .end local v6    # "val":Ljava/lang/Object;
    check-cast v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 406
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 407
    .local v4, "most":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 409
    .local v2, "least":J
    new-instance v6, Ljava/util/UUID;

    invoke-direct {v6, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "least":J
    .end local v4    # "most":J
    .restart local v6    # "val":Ljava/lang/Object;
    :cond_10
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 413
    check-cast v6, Ljava/lang/String;

    .end local v6    # "val":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .prologue
    .line 1283
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dataSrc:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDialect()Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;
    .locals 1

    .prologue
    .line 1299
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    return-object v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 1317
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->maxPoolSz:I

    return v0
.end method

.method public getParallelLoadCacheMinimumThreshold()I
    .locals 1

    .prologue
    .line 1353
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->parallelLoadCacheMinThreshold:I

    return v0
.end method

.method protected ignite()Lorg/apache/ignite/Ignite;
    .locals 1

    .prologue
    .line 1369
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method protected abstract keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation
.end method

.method protected abstract keyTypeId(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 712
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-boolean v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 714
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v8

    .line 716
    .local v8, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start load value from database [table= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 719
    :cond_1
    const/4 v6, 0x0

    .line 721
    .local v6, "conn":Ljava/sql/Connection;
    const/4 v9, 0x0

    .line 724
    .local v9, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v6

    .line 726
    invoke-static {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$600(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    .line 728
    invoke-virtual {p0, v9, v8, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 730
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 732
    .local v5, "rs":Ljava/sql/ResultSet;
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    invoke-static {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueColumns()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 740
    invoke-virtual {p0, v6, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->end(Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 743
    :goto_0
    return-object v0

    .line 740
    :cond_2
    invoke-virtual {p0, v6, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->end(Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 743
    const/4 v0, 0x0

    goto :goto_0

    .line 735
    .end local v5    # "rs":Ljava/sql/ResultSet;
    :catch_0
    move-exception v7

    .line 736
    .local v7, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v0, Ljavax/cache/integration/CacheLoaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load object [table="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    .end local v7    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v6, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->end(Ljava/sql/Connection;Ljava/sql/Statement;)V

    throw v0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    sget-boolean v10, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 750
    :cond_0
    const/4 v1, 0x0

    .line 753
    .local v1, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v1

    .line 755
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "cacheName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v9

    .line 759
    .local v9, "workers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v7, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 762
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 764
    .local v6, "keyTypeId":Ljava/lang/Object;
    invoke-direct {p0, v0, v6, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v3

    .line 766
    .local v3, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;

    .line 768
    .local v8, "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    if-nez v8, :cond_2

    .line 769
    new-instance v8, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;

    .end local v8    # "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v3, v10}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/sql/Connection;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V

    .restart local v8    # "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_2
    invoke-static {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->access$800(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-static {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->access$800(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$900(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 774
    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;

    invoke-virtual {v10}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->call()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 782
    .end local v0    # "cacheName":Ljava/lang/String;
    .end local v3    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "keyTypeId":Ljava/lang/Object;
    .end local v7    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v8    # "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    .end local v9    # "workers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;>;"
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v10, Ljavax/cache/integration/CacheWriterException;

    const-string v11, "Failed to load entries from database"

    invoke-direct {v10, v11, v2}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-virtual {p0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    throw v10

    .line 777
    .restart local v0    # "cacheName":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v9    # "workers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;>;"
    :cond_3
    :try_start_2
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;

    .line 778
    .restart local v8    # "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    invoke-virtual {v8}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->call()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 786
    .end local v8    # "worker":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK;TV;>;"
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    return-object v7
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 26
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    const/16 v22, 0x0

    .line 619
    .local v22, "pool":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->maxPoolSz:I

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v22

    .line 621
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v15, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<*>;>;"
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 624
    move-object/from16 v0, p2

    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 625
    new-instance v4, Ljavax/cache/integration/CacheLoaderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected even number of arguments, but found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v15    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<*>;>;"
    :catch_0
    move-exception v12

    .line 703
    .local v12, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v4, Ljavax/cache/integration/CacheLoaderException;

    const-string v5, "Failed to load cache"

    invoke-virtual {v12}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v22

    invoke-static {v5, v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    throw v4

    .line 627
    .restart local v15    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<*>;>;"
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Start loading entries from db using user queries from arguments"

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 630
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v10

    .line 632
    .local v10, "cacheName":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 633
    aget-object v4, p2, v16

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 635
    .local v20, "keyType":Ljava/lang/String;
    add-int/lit8 v4, v16, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "selQry":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v4, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v6

    .line 639
    .local v6, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    new-instance v4, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v16, v16, 0x2

    goto :goto_0

    .line 643
    .end local v6    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v7    # "selQry":Ljava/lang/String;
    .end local v10    # "cacheName":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v20    # "keyType":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->cacheMappings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    .line 645
    .local v13, "entryMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Start loading all cache types entries from db"

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 648
    :cond_3
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .line 649
    .restart local v6    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->parallelLoadCacheMinThreshold:I
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_8

    .line 650
    const/4 v11, 0x0

    .line 653
    .local v11, "conn":Ljava/sql/Connection;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v11

    .line 655
    invoke-static {v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$400(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v24

    .line 657
    .local v24, "stmt":Ljava/sql/PreparedStatement;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->parallelLoadCacheMinThreshold:I

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 659
    invoke-interface/range {v24 .. v24}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v23

    .line 661
    .local v23, "rs":Ljava/sql/ResultSet;
    invoke-interface/range {v23 .. v23}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 662
    invoke-static {v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$500(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v19

    .line 664
    .local v19, "keyCnt":I
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 666
    .local v25, "upperBound":[Ljava/lang/Object;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 667
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v25, v16

    .line 666
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 669
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v6, v1, v4, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 672
    move-object/from16 v21, v25

    .line 674
    .local v21, "lowerBound":[Ljava/lang/Object;
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 676
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 677
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v25, v16

    .line 676
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 679
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 687
    .end local v16    # "i":I
    .end local v19    # "keyCnt":I
    .end local v21    # "lowerBound":[Ljava/lang/Object;
    .end local v23    # "rs":Ljava/sql/ResultSet;
    .end local v24    # "stmt":Ljava/sql/PreparedStatement;
    .end local v25    # "upperBound":[Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 688
    .local v18, "ignored":Ljava/sql/SQLException;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheFull(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 691
    :try_start_5
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 682
    .end local v18    # "ignored":Ljava/sql/SQLException;
    .restart local v16    # "i":I
    .restart local v19    # "keyCnt":I
    .restart local v23    # "rs":Ljava/sql/ResultSet;
    .restart local v24    # "stmt":Ljava/sql/PreparedStatement;
    .restart local v25    # "upperBound":[Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v6, v1, v2, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 691
    .end local v16    # "i":I
    .end local v19    # "keyCnt":I
    .end local v25    # "upperBound":[Ljava/lang/Object;
    :goto_5
    :try_start_7
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 685
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheFull(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 691
    .end local v23    # "rs":Ljava/sql/ResultSet;
    .end local v24    # "stmt":Ljava/sql/PreparedStatement;
    :catchall_1
    move-exception v4

    :try_start_9
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 695
    .end local v11    # "conn":Ljava/sql/Connection;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheFull(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 699
    .end local v6    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v13    # "entryMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Future;

    .line 700
    .local v14, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->get(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 706
    .end local v14    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v22

    invoke-static {v4, v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 708
    return-void
.end method

.method protected openConnection(Z)Ljava/sql/Connection;
    .locals 2
    .param p1, "autocommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 255
    .local v0, "conn":Ljava/sql/Connection;
    invoke-interface {v0, p1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 257
    return-object v0
.end method

.method protected abstract prepareBuilders(Ljava/lang/String;Ljava/util/Collection;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation
.end method

.method protected resolveDialect()Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    const/4 v0, 0x0

    .line 197
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v1, 0x0

    .line 200
    .local v1, "dbProductName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v3

    invoke-interface {v3}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 208
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 211
    const-string v3, "H2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;-><init>()V

    .line 228
    :goto_0
    return-object v3

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v3, Ljavax/cache/CacheException;

    const-string v4, "Failed access to metadata for detect database dialect."

    invoke-direct {v3, v4, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v2    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 214
    :cond_0
    const-string v3, "MySQL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;-><init>()V

    goto :goto_0

    .line 217
    :cond_1
    const-string v3, "Microsoft SQL Server"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;-><init>()V

    goto :goto_0

    .line 220
    :cond_2
    const-string v3, "Oracle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;-><init>()V

    goto :goto_0

    .line 223
    :cond_3
    const-string v3, "DB2/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 224
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/DB2Dialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/DB2Dialect;-><init>()V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve dialect (BasicJdbcDialect will be used): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 228
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;-><init>()V

    goto :goto_0
.end method

.method protected session()Lorg/apache/ignite/cache/store/CacheStoreSession;
    .locals 1

    .prologue
    .line 1376
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->ses:Lorg/apache/ignite/cache/store/CacheStoreSession;

    return-object v0
.end method

.method public sessionEnd(Z)V
    .locals 8
    .param p1, "commit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    const/16 v7, 0x5d

    .line 313
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v2

    .line 315
    .local v2, "ses":Lorg/apache/ignite/cache/store/CacheStoreSession;
    invoke-interface {v2}, Lorg/apache/ignite/cache/store/CacheStoreSession;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    .line 317
    .local v3, "tx":Lorg/apache/ignite/transactions/Transaction;
    if-eqz v3, :cond_1

    .line 318
    invoke-interface {v2}, Lorg/apache/ignite/cache/store/CacheStoreSession;->properties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "JDBC_STORE_CONNECTION"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 320
    .local v0, "conn":Ljava/sql/Connection;
    sget-boolean v4, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 323
    :cond_0
    if-eqz p1, :cond_3

    .line 324
    :try_start_0
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :goto_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 337
    .end local v0    # "conn":Ljava/sql/Connection;
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction ended [xid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/transactions/Transaction;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", commit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 339
    :cond_2
    return-void

    .line 326
    .restart local v0    # "conn":Ljava/sql/Connection;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_2
    new-instance v4, Ljavax/cache/integration/CacheWriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to end transaction [xid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/transactions/Transaction;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", commit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method public setBatchSize(I)V
    .locals 0
    .param p1, "batchSz"    # I

    .prologue
    .line 1344
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    .line 1345
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSrc"    # Ljavax/sql/DataSource;

    .prologue
    .line 1290
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dataSrc:Ljavax/sql/DataSource;

    .line 1291
    return-void
.end method

.method public setDialect(Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;)V
    .locals 0
    .param p1, "dialect"    # Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    .prologue
    .line 1308
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    .line 1309
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 0
    .param p1, "maxPoolSz"    # I

    .prologue
    .line 1326
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->maxPoolSz:I

    .line 1327
    return-void
.end method

.method public setParallelLoadCacheMinimumThreshold(I)V
    .locals 0
    .param p1, "parallelLoadCacheMinThreshold"    # I

    .prologue
    .line 1362
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->parallelLoadCacheMinThreshold:I

    .line 1363
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dataSrc:Ljavax/sql/DataSource;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Failed to initialize cache store (data source is not provided)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->resolveDialect()Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    .line 238
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    return-void
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    sget-boolean v9, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 869
    :cond_0
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 871
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v9, v10, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v2

    .line 873
    .local v2, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 874
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start write entry to database [table="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 876
    :cond_1
    const/4 v0, 0x0

    .line 879
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v0

    .line 881
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    invoke-interface {v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->hasMerge()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    if-eqz v9, :cond_3

    .line 882
    const/4 v6, 0x0

    .line 885
    .local v6, "stmt":Ljava/sql/PreparedStatement;
    :try_start_1
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1000(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    .line 887
    invoke-virtual {p0, v6, v2, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    move-result v3

    .line 889
    .local v3, "i":I
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v6, v3, v2, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillValueParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 891
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v7

    .line 893
    .local v7, "updCnt":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 894
    iget-object v9, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected number of updated entries [table="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "expected=1, actual="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :cond_2
    :try_start_2
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 925
    .end local v3    # "i":I
    .end local v6    # "stmt":Ljava/sql/PreparedStatement;
    .end local v7    # "updCnt":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    .line 927
    return-void

    .line 898
    .restart local v6    # "stmt":Ljava/sql/PreparedStatement;
    :catchall_0
    move-exception v9

    :try_start_3
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v9
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 920
    .end local v6    # "stmt":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v9, Ljavax/cache/integration/CacheWriterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write entry to database [table="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTableName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 925
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_1
    move-exception v9

    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    throw v9

    .line 902
    :cond_3
    const/4 v4, 0x0

    .line 904
    .local v4, "insStmt":Ljava/sql/PreparedStatement;
    const/4 v8, 0x0

    .line 907
    .local v8, "updStmt":Ljava/sql/PreparedStatement;
    :try_start_5
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 909
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 911
    invoke-direct {p0, v4, v8, v2, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->writeUpsert(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljavax/cache/Cache$Entry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 914
    :try_start_6
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 916
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 914
    :catchall_2
    move-exception v9

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 916
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v9
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 932
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    sget-boolean v3, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 934
    :cond_0
    const/4 v11, 0x0

    .line 937
    .local v11, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->connection()Ljava/sql/Connection;

    move-result-object v11

    .line 939
    const/4 v12, 0x0

    .line 941
    .local v12, "currKeyTypeId":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cache/store/CacheStoreSession;->cacheName()Ljava/lang/String;

    move-result-object v10

    .line 943
    .local v10, "cacheName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    invoke-interface {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->hasMerge()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 944
    const/4 v5, 0x0

    .line 947
    .local v5, "mergeStmt":Ljava/sql/PreparedStatement;
    const/4 v4, 0x0

    .line 949
    .local v4, "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    :try_start_1
    new-instance v9, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$2;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/util/Collection;)V

    .line 955
    .local v9, "lazyEntries":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<[Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "fromIdx":I
    const/4 v8, 0x0

    .line 957
    .local v8, "prepared":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v12    # "currKeyTypeId":Ljava/lang/Object;
    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/cache/Cache$Entry;

    .line 958
    .local v14, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    invoke-interface {v14}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    .line 960
    .local v18, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 962
    .local v19, "keyTypeId":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v4

    .line 964
    if-eqz v12, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 965
    :cond_2
    if-eqz v5, :cond_3

    .line 966
    const-string/jumbo v6, "writeAll"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V

    .line 968
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 971
    :cond_3
    invoke-static {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1000(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 973
    move-object/from16 v12, v19

    .line 975
    .restart local v12    # "currKeyTypeId":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 978
    .end local v12    # "currKeyTypeId":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v4, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillKeyParameters(Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    move-result v15

    .line 980
    .local v15, "i":I
    invoke-interface {v14}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15, v4, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillValueParameters(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/Object;)I

    .line 982
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 984
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    rem-int v3, v8, v3

    if-nez v3, :cond_1

    .line 985
    const-string/jumbo v6, "writeAll"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V

    .line 987
    const/4 v8, 0x0

    goto :goto_0

    .line 991
    .end local v14    # "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    .end local v15    # "i":I
    .end local v18    # "key":Ljava/lang/Object;, "TK;"
    .end local v19    # "keyTypeId":Ljava/lang/Object;
    :cond_5
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->batchSz:I

    rem-int v3, v8, v3

    if-eqz v3, :cond_6

    .line 992
    const-string/jumbo v6, "writeAll"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->executeBatch(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/sql/Statement;Ljava/lang/String;IILorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    :cond_6
    :try_start_2
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1037
    .end local v4    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v5    # "mergeStmt":Ljava/sql/PreparedStatement;
    .end local v7    # "fromIdx":I
    .end local v8    # "prepared":I
    .end local v9    # "lazyEntries":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<[Ljava/lang/Object;>;"
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    .line 1039
    return-void

    .line 995
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v4    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .restart local v5    # "mergeStmt":Ljava/sql/PreparedStatement;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1033
    .end local v4    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v5    # "mergeStmt":Ljava/sql/PreparedStatement;
    .end local v10    # "cacheName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1034
    .local v13, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v3, Ljavax/cache/integration/CacheWriterException;

    const-string v6, "Failed to write entries in database"

    invoke-direct {v3, v6, v13}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1037
    .end local v13    # "e":Ljava/sql/SQLException;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->closeConnection(Ljava/sql/Connection;)V

    throw v3

    .line 999
    .restart local v10    # "cacheName":Ljava/lang/String;
    .restart local v12    # "currKeyTypeId":Ljava/lang/Object;
    :cond_7
    const/16 v17, 0x0

    .line 1001
    .local v17, "insStmt":Ljava/sql/PreparedStatement;
    const/16 v20, 0x0

    .line 1004
    .local v20, "updStmt":Ljava/sql/PreparedStatement;
    :try_start_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v12    # "currKeyTypeId":Ljava/lang/Object;
    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/cache/Cache$Entry;

    .line 1005
    .restart local v14    # "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    invoke-interface {v14}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    .line 1007
    .restart local v18    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1009
    .restart local v19    # "keyTypeId":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->entryMapping(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-result-object v4

    .line 1011
    .restart local v4    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    if-eqz v12, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1012
    :cond_8
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1014
    invoke-static {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v17

    .line 1016
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1018
    invoke-static {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$1200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v20

    .line 1020
    move-object/from16 v12, v19

    .line 1023
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v14}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->writeUpsert(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljavax/cache/Cache$Entry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 1027
    .end local v4    # "em":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .end local v14    # "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "key":Ljava/lang/Object;, "TK;"
    .end local v19    # "keyTypeId":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    :try_start_6
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1029
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1027
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1029
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
