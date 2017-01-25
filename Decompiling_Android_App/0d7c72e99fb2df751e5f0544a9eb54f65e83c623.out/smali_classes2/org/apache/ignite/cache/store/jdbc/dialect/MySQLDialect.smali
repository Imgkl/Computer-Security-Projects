.class public Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;
.super Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;
.source "MySQLDialect.java"


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
    .locals 10
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
    const/4 v6, 0x0

    .line 37
    invoke-static {v6, p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 39
    .local v0, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect$1;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;)V

    const-string v3, ""

    const-string v4, ", "

    const-string v5, ""

    invoke-static {p3, v2, v3, v4, v5}, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "updPart":Ljava/lang/String;
    const-string v2, "INSERT INTO %s (%s) VALUES (%s) ON DUPLICATE KEY UPDATE %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    const-string v5, ", "

    invoke-static {v0, v5}, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "?"

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    const-string v7, ""

    const-string v8, ","

    const-string v9, ""

    invoke-static {v5, v6, v7, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/dialect/MySQLDialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
