.class public Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;
.super Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;
.source "H2Dialect.java"


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
    .locals 9
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
    const/4 v3, 0x0

    .line 36
    invoke-static {v3, p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 38
    .local v0, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "MERGE INTO %s (%s) KEY (%s) VALUES(%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ","

    invoke-static {v0, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ","

    invoke-static {p2, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "?"

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    const-string v6, ""

    const-string v7, ", "

    const-string v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Lorg/apache/ignite/cache/store/jdbc/dialect/H2Dialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
