.class public Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;
.super Ljava/lang/Object;
.source "JdbcDatabaseMetadata.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcMetadataTask"


# instance fields
.field private final conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

.field private indexes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;)V
    .locals 0
    .param p1, "conn"    # Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    .line 53
    return-void
.end method

.method private columnRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Ljava/util/List;
    .locals 3
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "tbl"    # Ljava/lang/String;
    .param p3, "col"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "typeName"    # Ljava/lang/String;
    .param p6, "nullable"    # Z
    .param p7, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v1, v2

    .line 802
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 808
    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 809
    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 812
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 813
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    const-string v1, "YES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 817
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 818
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 819
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    check-cast v2, Ljava/lang/Short;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v1, "NO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    return-object v0

    .line 811
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ptrn"    # Ljava/lang/String;

    .prologue
    .line 1310
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, ".*"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

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

.method private tableRow(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "tbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v1, v2

    .line 714
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v1, "TABLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 718
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 719
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 720
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 721
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 722
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    return-object v0
.end method

.method private updateMetaData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1277
    iget-object v5, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1278
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "Connection is closed."

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1281
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client()Lorg/apache/ignite/internal/client/GridClient;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/client/GridClient;->compute()Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v5

    const-string v6, "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcMetadataTask"

    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/client/GridClientCompute;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1283
    .local v2, "packet":[B
    const/4 v5, 0x0

    aget-byte v4, v2, v5

    .line 1284
    .local v4, "status":B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [B

    .line 1286
    .local v0, "data":[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v2, v5, v0, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 1288
    if-ne v4, v8, :cond_1

    .line 1289
    invoke-static {v0}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshalError([B)Ljava/sql/SQLException;

    move-result-object v5

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v0    # "data":[B
    .end local v2    # "packet":[B
    .end local v4    # "status":B
    :catch_0
    move-exception v1

    .line 1298
    .local v1, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "Failed to get meta data from Ignite."

    invoke-direct {v5, v6, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1291
    .end local v1    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    .restart local v0    # "data":[B
    .restart local v2    # "packet":[B
    .restart local v4    # "status":B
    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshal([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1293
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iput-object v5, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    .line 1294
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    iput-object v5, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->indexes:Ljava/util/Collection;
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1300
    return-void
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1268
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "typeNamePtrn"    # Ljava/lang/String;
    .param p4, "attributeNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .param p4, "scope"    # I
    .param p5, "nullable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 377
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 367
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 735
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "TABLE_CAT"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .param p4, "colNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 17
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "tblNamePtrn"    # Ljava/lang/String;
    .param p4, "colNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->updateMetaData()V

    .line 758
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 760
    .local v14, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v9, 0x0

    .line 762
    .local v9, "cnt":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 763
    .local v15, "schema":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 765
    .local v16, "tbl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 767
    .local v10, "col":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->type(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->nullable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->columnRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    .end local v10    # "col":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "schema":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v16    # "tbl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TABLE_CAT"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "TABLE_SCHEM"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "TABLE_NAME"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "COLUMN_NAME"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "DATA_TYPE"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "TYPE_NAME"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "COLUMN_SIZE"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "DECIMAL_DIGITS"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "NUM_PREC_RADIX"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "NULLABLE"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "REMARKS"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "COLUMN_DEF"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "CHAR_OCTET_LENGTH"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "ORDINAL_POSITION"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "IS_NULLABLE"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "SCOPE_CATLOG"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "SCOPE_SCHEMA"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "SCOPE_TABLE"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "SOURCE_DATA_TYPE"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "IS_AUTOINCREMENT"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x14

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-class v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v2
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "parentCatalog"    # Ljava/lang/String;
    .param p2, "parentSchema"    # Ljava/lang/String;
    .param p3, "parentTbl"    # Ljava/lang/String;
    .param p4, "foreignCatalog"    # Ljava/lang/String;
    .param p5, "foreignSchema"    # Ljava/lang/String;
    .param p6, "foreignTbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDatabaseMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1130
    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "Ignite Cache"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "4.1.0"

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v0, "Ignite JDBC Driver"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "1.0"

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "functionNamePtrn"    # Ljava/lang/String;
    .param p4, "colNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1225
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "FUNCTION_CAT"

    aput-object v4, v3, v6

    const-string v4, "FUNCTION_SCHEM"

    aput-object v4, v3, v7

    const-string v4, "FUNCTION_NAME"

    aput-object v4, v3, v8

    const-string v4, "COLUMN_NAME"

    aput-object v4, v3, v9

    const-string v4, "COLUMN_TYPE"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "DATA_TYPE"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "TYPE_NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "PRECISION"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "LENGTH"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "SCALE"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "RADIX"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "NULLABLE"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "REMARKS"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "CHAR_OCTET_LENGTH"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "ORDINAL_POSITION"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "IS_NULLABLE"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "SPECIFIC_NAME"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "functionNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1211
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "FUNCTION_CAT"

    aput-object v4, v3, v6

    const-string v4, "FUNCTION_SCHEM"

    aput-object v4, v3, v7

    const-string v4, "FUNCTION_NAME"

    aput-object v4, v3, v8

    const-string v4, "REMARKS"

    aput-object v4, v3, v9

    const-string v4, "FUNCTION_TYPE"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "SPECIFIC_NAME"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, " "

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 14
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .param p4, "unique"    # Z
    .param p5, "approximate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 944
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->indexes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    .local v6, "rows":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->indexes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 947
    .local v8, "idx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 948
    .local v9, "idxSchema":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 950
    .local v10, "idxTbl":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v11, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "D"

    :goto_1
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 962
    :cond_3
    const-string v1, "A"

    goto :goto_1

    .line 971
    .end local v8    # "idx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v9    # "idxSchema":Ljava/lang/String;
    .end local v10    # "idxTbl":Ljava/lang/String;
    .end local v11    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    new-instance v1, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "TABLE_CAT"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v12, "TABLE_SCHEM"

    aput-object v12, v4, v5

    const/4 v5, 0x2

    const-string v12, "TABLE_NAME"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "NON_UNIQUE"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    const-string v12, "INDEX_QUALIFIER"

    aput-object v12, v4, v5

    const/4 v5, 0x5

    const-string v12, "INDEX_NAME"

    aput-object v12, v4, v5

    const/4 v5, 0x6

    const-string v12, "TYPE"

    aput-object v12, v4, v5

    const/4 v5, 0x7

    const-string v12, "ORDINAL_POSITION"

    aput-object v12, v4, v5

    const/16 v5, 0x8

    const-string v12, "COLUMN_NAME"

    aput-object v12, v4, v5

    const/16 v5, 0x9

    const-string v12, "ASC_OR_DESC"

    aput-object v12, v4, v5

    const/16 v5, 0xa

    const-string v12, "CARDINALITY"

    aput-object v12, v4, v5

    const/16 v5, 0xb

    const-string v12, "PAGES"

    aput-object v12, v4, v5

    const/16 v5, 0xc

    const-string v12, "FILTER_CONDITION"

    aput-object v12, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/String;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x3

    const-class v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x4

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x5

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x6

    const-class v13, Ljava/lang/Short;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x7

    const-class v13, Ljava/lang/Short;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v12, 0x8

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v12, 0x9

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v12, 0xa

    const-class v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v12, 0xb

    const-class v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v12, 0xc

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v1
.end method

.method public getJDBCMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1140
    const/4 v0, 0x1

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, ""

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 12
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->updateMetaData()V

    .line 877
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 879
    .local v5, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 880
    .local v8, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    :cond_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 882
    .local v9, "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    :cond_3
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string v2, "_KEY"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "_KEY"

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 886
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v9    # "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v10, "TABLE_CAT"

    aput-object v10, v3, v4

    const/4 v4, 0x1

    const-string v10, "TABLE_SCHEM"

    aput-object v10, v3, v4

    const/4 v4, 0x2

    const-string v10, "TABLE_NAME"

    aput-object v10, v3, v4

    const/4 v4, 0x3

    const-string v10, "COLUMN_NAME"

    aput-object v10, v3, v4

    const/4 v4, 0x4

    const-string v10, "KEY_SEQ"

    aput-object v10, v3, v4

    const/4 v4, 0x5

    const-string v10, "PK_NAME"

    aput-object v10, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-class v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "procedureNamePtrn"    # Ljava/lang/String;
    .param p4, "colNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 662
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PROCEDURE_CAT"

    aput-object v4, v3, v6

    const-string v4, "PROCEDURE_SCHEM"

    aput-object v4, v3, v7

    const-string v4, "PROCEDURE_NAME"

    aput-object v4, v3, v8

    const-string v4, "COLUMN_NAME"

    aput-object v4, v3, v9

    const-string v4, "COLUMN_TYPE"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "DATA_TYPE"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "TYPE_NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "PRECISION"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "LENGTH"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "SCALE"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "RADIX"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "NULLABLE"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "REMARKS"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "COLUMN_DEF"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "SQL_DATA_TYPE"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "SQL_DATETIME_SUB"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "CHAR_OCTET_LENGTH"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "ORDINAL_POSITION"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "IS_NULLABLE"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "SPECIFIC_NAME"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 362
    const-string v0, ""

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "procedureNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 648
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PROCEDURE_CAT"

    aput-object v4, v3, v6

    const-string v4, "PROCEDURE_SCHEM"

    aput-object v4, v3, v7

    const-string v4, "PROCEDURE_NAME"

    aput-object v4, v3, v8

    const-string v4, "REMARKS"

    aput-object v4, v3, v9

    const-string v4, "PROCEDURE_TYPE"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "SPECIFIC_NAME"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "tblNamePtrn"    # Ljava/lang/String;
    .param p4, "colNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1257
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1125
    const/4 v0, 0x1

    return v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1165
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, ""

    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x0

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1170
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->updateMetaData()V

    .line 1172
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1174
    .local v5, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1175
    .local v7, "schema":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v9

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1178
    .end local v7    # "schema":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "TABLE_SCHEM"

    aput-object v4, v3, v9

    const-string v4, "TABLE_CATALOG"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 212
    const-string v0, ""

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 197
    const-string v0, ""

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "tblNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1097
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "typeNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1085
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v0, ""

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "tblNamePtrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "TABLE_TYPE"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "TABLE"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 12
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "tblNamePtrn"    # Ljava/lang/String;
    .param p4, "tblTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->updateMetaData()V

    .line 685
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 687
    .local v5, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz p4, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TABLE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->meta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 689
    .local v8, "schema":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 691
    .local v9, "tbl":Ljava/lang/String;
    invoke-direct {p0, v9, p3}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v9}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->tableRow(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 694
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "schema":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v9    # "tbl":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v10, "TABLE_CAT"

    aput-object v10, v3, v4

    const/4 v4, 0x1

    const-string v10, "TABLE_SCHEM"

    aput-object v10, v3, v4

    const/4 v4, 0x2

    const-string v10, "TABLE_NAME"

    aput-object v10, v3, v4

    const/4 v4, 0x3

    const-string v10, "TABLE_TYPE"

    aput-object v10, v3, v4

    const/4 v4, 0x4

    const-string v10, "REMARKS"

    aput-object v10, v3, v4

    const/4 v4, 0x5

    const-string v10, "TYPE_CAT"

    aput-object v10, v3, v4

    const/4 v4, 0x6

    const-string v10, "TYPE_SCHEM"

    aput-object v10, v3, v4

    const/4 v4, 0x7

    const-string v10, "TYPE_NAME"

    aput-object v10, v3, v4

    const/16 v4, 0x8

    const-string v10, "SELF_REFERENCING_COL_NAME"

    aput-object v10, v3, v4

    const/16 v4, 0x9

    const-string v10, "REF_GENERATION"

    aput-object v10, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-class v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, ""

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 932
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPtrn"    # Ljava/lang/String;
    .param p3, "typeNamePtrn"    # Ljava/lang/String;
    .param p4, "types"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1048
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 864
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V

    return-object v0
.end method

.method public insertsAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public isCatalogAtStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/sql/DatabaseMetaData;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v0, 0x0

    return v0
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 1
    .param p1, "fromType"    # I
    .param p2, "toType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "concurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 992
    const/16 v0, 0x3ef

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1
    .param p1, "holdability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1120
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsResultSetType(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 987
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSavepoints()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1160
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public supportsUnion()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database meta data is not a wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_0
    return-object p0
.end method

.method public updatesAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFilePerTable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
