.class public Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;
.super Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;
.source "SQLServerDialect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMerge()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public mergeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;
    .locals 15
    .param p1, "fullTblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "uniqCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v7, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 38
    .local v2, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v7, ", "

    invoke-static {v2, v7}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "colsLst":Ljava/lang/String;
    new-instance v7, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$1;

    invoke-direct {v7, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$1;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;)V

    const-string v8, ""

    const-string v9, ", "

    const-string v10, ""

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8, v9, v10}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "match":Ljava/lang/String;
    new-instance v7, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$2;

    invoke-direct {v7, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$2;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;)V

    const-string v8, ""

    const-string v9, ", "

    const-string v10, ""

    move-object/from16 v0, p3

    invoke-static {v0, v7, v8, v9, v10}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "setCols":Ljava/lang/String;
    new-instance v7, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$3;

    invoke-direct {v7, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$3;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;)V

    const-string v8, ""

    const-string v9, ", "

    const-string v10, ""

    invoke-static {v2, v7, v8, v9, v10}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "valuesCols":Ljava/lang/String;
    const-string v7, "MERGE INTO %s t USING (VALUES(%s)) AS v (%s)  ON %s WHEN MATCHED THEN  UPDATE SET %s WHEN NOT MATCHED THEN  INSERT (%s) VALUES (%s);"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    const-string v10, "?"

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    const-string v12, ""

    const-string v13, ","

    const-string v14, ""

    invoke-static {v10, v11, v12, v13, v14}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    aput-object v5, v8, v9

    const/4 v9, 0x5

    aput-object v3, v8, v9

    const/4 v9, 0x6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
