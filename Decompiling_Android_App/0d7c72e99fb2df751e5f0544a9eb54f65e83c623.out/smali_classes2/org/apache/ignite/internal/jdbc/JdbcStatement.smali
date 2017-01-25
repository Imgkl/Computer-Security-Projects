.class public Lorg/apache/ignite/internal/jdbc/JdbcStatement;
.super Ljava/lang/Object;
.source "JdbcStatement.java"

# interfaces
.implements Ljava/sql/Statement;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_FETCH_SIZE:I = 0x400

.field private static final TASK_NAME:Ljava/lang/String; = "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcTask"


# instance fields
.field protected args:[Ljava/lang/Object;

.field private closed:Z

.field private final conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

.field private fetchSize:I

.field private maxRows:I

.field private rs:Ljava/sql/ResultSet;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;)V
    .locals 1
    .param p1, "conn"    # Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->fetchSize:I

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    .line 69
    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 282
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 176
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Cancellation is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 289
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 189
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->closed:Z

    .line 123
    return-void
.end method

.method public closeOnCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "closeOnCompletion is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method connection()Lorg/apache/ignite/internal/jdbc/JdbcConnection;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    return-object v0
.end method

.method protected ensureNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->closed:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Statement is closed."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->rs:Ljava/sql/ResultSet;

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 345
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 346
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 355
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 356
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 365
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 366
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeBatch()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 296
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 18
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 75
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->rs:Ljava/sql/ResultSet;

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "SQL query is empty"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client()Lorg/apache/ignite/internal/client/GridClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/client/GridClient;->compute()Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v2

    const-string v11, "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcTask"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->nodeId()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->timeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->args:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->fetchSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->maxRows:I

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v10}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->taskArgument(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/Object;II)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->marshalArgument(Ljava/util/Map;)[B

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lorg/apache/ignite/internal/client/GridClientCompute;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 85
    .local v15, "packet":[B
    const/4 v2, 0x0

    aget-byte v16, v15, v2

    .line 86
    .local v16, "status":B
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    new-array v12, v2, [B

    .line 88
    .local v12, "data":[B
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v11, v12

    invoke-static {v15, v2, v12, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 90
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 91
    invoke-static {v12}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshalError([B)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v12    # "data":[B
    .end local v15    # "packet":[B
    .end local v16    # "status":B
    :catch_0
    move-exception v13

    .line 109
    .local v13, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Failed to query Ignite."

    invoke-direct {v2, v3, v13}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 93
    .end local v13    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    .restart local v12    # "data":[B
    .restart local v15    # "packet":[B
    .restart local v16    # "status":B
    :cond_2
    :try_start_1
    invoke-static {v12}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshal([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 95
    .local v14, "msg":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-boolean v2, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 97
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 98
    .local v4, "nodeId":Ljava/util/UUID;
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 99
    .local v5, "futId":Ljava/util/UUID;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 100
    .local v6, "tbls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 101
    .local v7, "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 102
    .local v8, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 103
    .local v9, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 105
    .local v10, "finished":Z
    new-instance v2, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->fetchSize:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;ZI)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 117
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 324
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 331
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 338
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->conn:Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 244
    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 261
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->fetchSize:I

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 317
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxFieldSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 143
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->maxRows:I

    return v0
.end method

.method public getMoreResults()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 229
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Multiple open results are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMoreResults(I)Z
    .locals 2
    .param p1, "curr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 310
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Multiple open results are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 162
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->timeout:I

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->rs:Ljava/sql/ResultSet;

    .line 213
    .local v0, "rs0":Ljava/sql/ResultSet;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->rs:Ljava/sql/ResultSet;

    .line 215
    return-object v0
.end method

.method public getResultSetConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 268
    const/16 v0, 0x3ef

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 275
    const/16 v0, 0x3eb

    return v0
.end method

.method public getUpdateCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 222
    const/4 v0, -0x1

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCloseOnCompletion()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->closed:Z

    return v0
.end method

.method public isPoolable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 395
    const/4 v0, 0x0

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
    .line 408
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/sql/Statement;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 195
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEscapeProcessing(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 156
    return-void
.end method

.method public setFetchDirection(I)V
    .locals 2
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 236
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 237
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Only forward direction is supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    return-void
.end method

.method public setFetchSize(I)V
    .locals 2
    .param p1, "fetchSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 251
    if-gtz p1, :cond_0

    .line 252
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Fetch size must be greater than zero."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->fetchSize:I

    .line 255
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 136
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Field size limitation is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxRows(I)V
    .locals 0
    .param p1, "maxRows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 150
    iput p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->maxRows:I

    .line 151
    return-void
.end method

.method public setPoolable(Z)V
    .locals 2
    .param p1, "poolable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 387
    if-eqz p1, :cond_0

    .line 388
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Pooling is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->ensureNotClosed()V

    .line 169
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->timeout:I

    .line 170
    return-void
.end method

.method timeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 429
    iput p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->timeout:I

    .line 430
    return-void
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
    .line 400
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement is not a wrapper for "

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

    .line 403
    :cond_0
    return-object p0
.end method
