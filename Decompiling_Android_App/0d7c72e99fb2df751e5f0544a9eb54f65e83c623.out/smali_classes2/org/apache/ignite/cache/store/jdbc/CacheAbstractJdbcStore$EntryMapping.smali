.class public Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntryMapping"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cacheName:Ljava/lang/String;

.field private final cols:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

.field private final fullTblName:Ljava/lang/String;

.field private final insQry:Ljava/lang/String;

.field private final keyCols:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadCacheQry:Ljava/lang/String;

.field private final loadCacheSelRangeQry:Ljava/lang/String;

.field private final loadColIdxs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadQry:Ljava/lang/String;

.field private final loadQrySingle:Ljava/lang/String;

.field private final maxKeysPerStmt:I

.field private final mergeQry:Ljava/lang/String;

.field private final remQry:Ljava/lang/String;

.field private final typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

.field private final uniqValFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final updQry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1382
    const-class v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;Lorg/apache/ignite/cache/CacheTypeMetadata;)V
    .locals 14
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "dialect"    # Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;
    .param p3, "typeMeta"    # Lorg/apache/ignite/cache/CacheTypeMetadata;

    .prologue
    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;

    .line 1442
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    .line 1444
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 1446
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v5

    .line 1448
    .local v5, "keyFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v9

    .line 1450
    .local v9, "valFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->databaseColumns(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    .line 1452
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v11, 0x0

    new-instance v12, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;

    invoke-direct {v12, p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)V

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->uniqValFields:Ljava/util/Collection;

    .line 1458
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseSchema()Ljava/lang/String;

    move-result-object v6

    .line 1460
    .local v6, "schema":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseTable()Ljava/lang/String;

    move-result-object v7

    .line 1462
    .local v7, "tblName":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .end local v7    # "tblName":Ljava/lang/String;
    :goto_0
    iput-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    .line 1464
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->uniqValFields:Ljava/util/Collection;

    invoke-static {v10}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->databaseColumns(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    .line 1466
    .local v8, "uniqValCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    invoke-static {v10, v11, v8}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    .line 1468
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;

    .line 1470
    const/4 v3, 0x1

    .line 1472
    .local v3, "idx":I
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1473
    .local v1, "col":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_1

    .line 1462
    .end local v1    # "col":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "idx":I
    .end local v8    # "uniqValCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v7    # "tblName":Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1475
    .end local v7    # "tblName":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "idx":I
    .restart local v8    # "uniqValCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadCacheQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheQry:Ljava/lang/String;

    .line 1477
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadCacheSelectRangeQuery(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheSelRangeQry:Ljava/lang/String;

    .line 1479
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    iget-object v12, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12, v13}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQrySingle:Ljava/lang/String;

    .line 1481
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->getMaxParameterCount()I

    move-result v10

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    div-int/2addr v10, v11

    iput v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I

    .line 1483
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    iget-object v12, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    iget v13, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12, v13}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQry:Ljava/lang/String;

    .line 1485
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v8}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->insertQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->insQry:Ljava/lang/String;

    .line 1487
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v8}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->updateQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->updQry:Ljava/lang/String;

    .line 1489
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v8}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->mergeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->mergeQry:Ljava/lang/String;

    .line 1491
    iget-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->removeQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->remQry:Ljava/lang/String;

    .line 1492
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->mergeQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->insQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->updQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->remQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->uniqValFields:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheSelRangeQry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQrySingle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1382
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I

    return v0
.end method

.method private static databaseColumns(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    .local p0, "dsc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    new-instance v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$2;

    invoke-direct {v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$2;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected fullTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    return-object v0
.end method

.method protected keyColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1552
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected keyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadCacheRangeQuery(ZZ)Ljava/lang/String;
    .locals 6
    .param p1, "appendLowerBound"    # Z
    .param p2, "appendUpperBound"    # Z

    .prologue
    .line 1533
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadCacheRangeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadQuery(I)Ljava/lang/String;
    .locals 4
    .param p1, "keyCnt"    # I

    .prologue
    .line 1514
    sget-boolean v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1516
    :cond_0
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I

    if-ne p1, v0, :cond_1

    .line 1517
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQry:Ljava/lang/String;

    .line 1522
    :goto_0
    return-object v0

    .line 1519
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1520
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQrySingle:Ljava/lang/String;

    goto :goto_0

    .line 1522
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->dialect:Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->fullTblName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cols:Ljava/util/Collection;

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;->loadQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected valueColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected valueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->typeMeta:Lorg/apache/ignite/cache/CacheTypeMetadata;

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
