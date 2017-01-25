.class public Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;
.super Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;
.source "OracleDialect.java"


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
    .locals 11
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
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "uniqCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 36
    invoke-static {v10, p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 38
    .local v0, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v6, ", "

    invoke-static {v0, v6}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "colsLst":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$1;

    invoke-direct {v6, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$1;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;)V

    const-string v7, ""

    const-string v8, ", "

    const-string v9, ""

    invoke-static {v0, v6, v7, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "selCols":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$2;

    invoke-direct {v6, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$2;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;)V

    const-string v7, "("

    const-string v8, " AND "

    const-string v9, ")"

    invoke-static {p2, v6, v7, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "match":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$3;

    invoke-direct {v6, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$3;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;)V

    const-string v7, ""

    const-string v8, ", "

    const-string v9, ""

    invoke-static {p3, v6, v7, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "setCols":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$4;

    invoke-direct {v6, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect$4;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;)V

    const-string v7, ""

    const-string v8, ", "

    const-string v9, ""

    invoke-static {v0, v6, v7, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/OracleDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "valuesCols":Ljava/lang/String;
    const-string v6, "MERGE INTO %s t USING (SELECT %s FROM dual) v  ON %s WHEN MATCHED THEN  UPDATE SET %s WHEN NOT MATCHED THEN  INSERT (%s) VALUES (%s)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v10

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
