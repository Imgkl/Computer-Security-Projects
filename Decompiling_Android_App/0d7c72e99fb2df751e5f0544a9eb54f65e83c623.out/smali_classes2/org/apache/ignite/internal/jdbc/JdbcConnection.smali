.class public Lorg/apache/ignite/internal/jdbc/JdbcConnection;
.super Ljava/lang/Object;
.source "JdbcConnection.java"

# interfaces
.implements Ljava/sql/Connection;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final VALID_TASK_NAME:Ljava/lang/String; = "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcValidationTask"


# instance fields
.field private cacheName:Ljava/lang/String;

.field private final client:Lorg/apache/ignite/internal/client/GridClient;

.field private closed:Z

.field private nodeId:Ljava/util/UUID;

.field private timeout:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v3, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 65
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 67
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->url:Ljava/lang/String;

    .line 68
    const-string v3, "gg.jdbc.cache"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName:Ljava/lang/String;

    .line 70
    const-string v3, "gg.jdbc.nodeId"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "nodeIdProp":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 73
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->nodeId:Ljava/util/UUID;

    .line 76
    :cond_2
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/client/GridClientConfiguration;-><init>(Ljava/util/Properties;)V

    .line 78
    .local v0, "cfg":Lorg/apache/ignite/internal/client/GridClientConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gg.jdbc.host"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gg.jdbc.port"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setServers(Ljava/util/Collection;)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setEnableMetricsCache(Z)V

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setEnableAttributesCache(Z)V

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setAutoFetchMetrics(Z)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setAutoFetchAttributes(Z)V

    .line 86
    invoke-static {v0}, Lorg/apache/ignite/internal/client/GridClientFactory;->start(Lorg/apache/ignite/internal/client/GridClientConfiguration;)Lorg/apache/ignite/internal/client/GridClient;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client:Lorg/apache/ignite/internal/client/GridClient;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "Client is invalid. Probably cache name is wrong."

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v0    # "cfg":Lorg/apache/ignite/internal/client/GridClientConfiguration;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "Failed to start Ignite client."

    invoke-direct {v3, v4, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v1    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    .restart local v0    # "cfg":Lorg/apache/ignite/internal/client/GridClientConfiguration;
    :cond_3
    return-void
.end method

.method private ensureNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->closed:Z

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->close()V

    .line 487
    return-void
.end method

.method cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 226
    return-void
.end method

.method client()Lorg/apache/ignite/internal/client/GridClient;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client:Lorg/apache/ignite/internal/client/GridClient;

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->closed:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->closed:Z

    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client:Lorg/apache/ignite/internal/client/GridClient;

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClient;->id()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/GridClientFactory;->stop(Ljava/util/UUID;Z)V

    goto :goto_0
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 141
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 451
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 388
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 381
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 395
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 402
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .param p1, "resSetType"    # I
    .param p2, "resSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 3
    .param p1, "resSetType"    # I
    .param p2, "resSetConcurrency"    # I
    .param p3, "resSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 309
    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_0

    .line 310
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid result set type (only forward is supported.)"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    const/16 v1, 0x3ef

    if-eq p2, v1, :cond_1

    .line 313
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid concurrency (updates are not supported)."

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_1
    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    .line 316
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid holdability (transactions are not supported)."

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;)V

    .line 320
    .local v0, "stmt":Lorg/apache/ignite/internal/jdbc/JdbcStatement;
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    if-lez v1, :cond_3

    .line 321
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->timeout(I)V

    .line 323
    :cond_3
    return-object v0
.end method

.method createStatement0()Lorg/apache/ignite/internal/jdbc/JdbcStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    return-object v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 458
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 444
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 170
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/jdbc/JdbcDatabaseMetadata;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;)V

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 499
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 213
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Types mapping is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->closed:Z

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
    .line 183
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public isValid(I)Z
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 409
    if-gez p1, :cond_0

    .line 410
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client:Lorg/apache/ignite/internal/client/GridClient;

    invoke-interface {v2}, Lorg/apache/ignite/internal/client/GridClient;->compute()Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v2

    const-string v3, "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcValidationTask"

    iget-object v4, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/client/GridClientCompute;->executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v2

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Lorg/apache/ignite/internal/client/GridClientFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/client/GridClientFutureTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 419
    :goto_0
    return v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/apache/ignite/internal/client/GridClientException;
    :goto_1
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Failed to establish connection."

    invoke-direct {v2, v3, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 418
    .end local v0    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v1

    .line 419
    .local v1, "ignored":Lorg/apache/ignite/internal/client/GridClientException;
    const/4 v2, 0x0

    goto :goto_0

    .line 415
    .end local v1    # "ignored":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_2
    move-exception v0

    goto :goto_1
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
    .line 471
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/sql/Connection;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 119
    return-object p1
.end method

.method nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 112
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Callable functions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resSetType"    # I
    .param p3, "resSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 246
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Callable functions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resSetType"    # I
    .param p3, "resSetConcurrency"    # I
    .param p4, "resSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 353
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Callable functions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 105
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 360
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resSetType"    # I
    .param p3, "resSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resSetType"    # I
    .param p3, "resSetConcurrency"    # I
    .param p4, "resSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 331
    const/16 v1, 0x3eb

    if-eq p2, v1, :cond_0

    .line 332
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid result set type (only forward is supported.)"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    const/16 v1, 0x3ef

    if-eq p3, v1, :cond_1

    .line 335
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid concurrency (updates are not supported)."

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_1
    const/4 v1, 0x1

    if-eq p4, v1, :cond_2

    .line 338
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "Invalid holdability (transactions are not supported)."

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;Ljava/lang/String;)V

    .line 342
    .local v0, "stmt":Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    if-lez v1, :cond_3

    .line 343
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->timeout(I)V

    .line 345
    :cond_3
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 367
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "colNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 374
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 2
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 301
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 148
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 294
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoCommit(Z)V
    .locals 2
    .param p1, "autoCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 2
    .param p1, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 192
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Catalogs are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Client info is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Client info is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHoldability(I)V
    .locals 2
    .param p1, "holdability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 265
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 266
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Invalid holdability (transactions are not supported)."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 491
    if-gez p2, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout is below zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->timeout:I

    .line 495
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 280
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 287
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0
    .param p1, "schema"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 476
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->cacheName:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 206
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Transactions are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->ensureNotClosed()V

    .line 258
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Types mapping is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 463
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection is not a wrapper for "

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

    .line 466
    :cond_0
    return-object p0
.end method

.method url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->url:Ljava/lang/String;

    return-object v0
.end method
