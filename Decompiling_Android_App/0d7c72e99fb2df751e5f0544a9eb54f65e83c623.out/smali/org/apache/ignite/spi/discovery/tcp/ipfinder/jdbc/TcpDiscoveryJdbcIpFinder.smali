.class public Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;
.super Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;
.source "TcpDiscoveryJdbcIpFinder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CHK_QRY:Ljava/lang/String; = "select count(*) from tbl_addrs"

.field public static final CREATE_ADDRS_TABLE_QRY:Ljava/lang/String; = "create table if not exists tbl_addrs (hostname VARCHAR(1024), port INT)"

.field public static final GET_ADDRS_QRY:Ljava/lang/String; = "select hostname, port from tbl_addrs"

.field public static final REG_ADDR_QRY:Ljava/lang/String; = "insert into tbl_addrs values (?, ?)"

.field public static final UNREG_ADDR_QRY:Ljava/lang/String; = "delete from tbl_addrs where hostname = ? and port = ?"


# instance fields
.field private dataSrc:Ljavax/sql/DataSource;

.field private final initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private initSchema:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;-><init>()V

    .line 81
    iput-boolean v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initSchema:Z

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 95
    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->setShared(Z)V

    .line 96
    return-void
.end method

.method private checkSchema()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 347
    .local v2, "stmt":Ljava/sql/Statement;
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v3}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 349
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 352
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 354
    const-string v3, "select count(*) from tbl_addrs"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 361
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 363
    return-void

    .line 338
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v2    # "stmt":Ljava/sql/Statement;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v4, "Thread has been interrupted."

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 356
    .end local v1    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .restart local v0    # "conn":Ljava/sql/Connection;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    :catch_1
    move-exception v1

    .line 357
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_2
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v4, "IP finder has not been properly initialized."

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 361
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 272
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    if-nez v4, :cond_0

    .line 274
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Data source is null (you must configure it via setDataSource(..) configuration property)"

    invoke-direct {v4, v5}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_0
    iget-boolean v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initSchema:Z

    if-nez v4, :cond_1

    .line 278
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 280
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->checkSchema()V

    .line 327
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v1, 0x0

    .line 287
    .local v1, "conn":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 289
    .local v3, "stmt":Ljava/sql/Statement;
    const/4 v0, 0x0

    .line 292
    .local v0, "committed":Z
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v4}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 294
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 296
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 299
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 301
    const-string v4, "create table if not exists tbl_addrs (hostname VARCHAR(1024), port INT)"

    invoke-interface {v3, v4}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 303
    invoke-interface {v1}, Ljava/sql/Connection;->commit()V

    .line 305
    const/4 v0, 0x1

    .line 307
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "DB schema has been initialized."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_2
    if-nez v0, :cond_3

    .line 317
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 319
    :cond_3
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 320
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 322
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/sql/SQLException;
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 313
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Failed to initialize DB schema."

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v2    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    if-nez v0, :cond_4

    .line 317
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 319
    :cond_4
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 320
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 322
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4

    .line 326
    .end local v0    # "committed":Z
    .end local v1    # "conn":Ljava/sql/Connection;
    .end local v3    # "stmt":Ljava/sql/Statement;
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->checkSchema()V

    goto :goto_0
.end method


# virtual methods
.method public getRegisteredAddresses()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->init()V

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "conn":Ljava/sql/Connection;
    const/4 v4, 0x0

    .line 106
    .local v4, "stmt":Ljava/sql/PreparedStatement;
    const/4 v3, 0x0

    .line 109
    .local v3, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v5}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 111
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 113
    const-string v5, "select hostname, port from tbl_addrs"

    invoke-interface {v1, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 115
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    new-instance v5, Ljava/net/InetSocketAddress;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v5, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v6, "Failed to get registered addresses version."

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v2    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 129
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 128
    .restart local v0    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_0
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 129
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method

.method public registerAddresses(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 138
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->init()V

    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "conn":Ljava/sql/Connection;
    const/4 v6, 0x0

    .line 144
    .local v6, "stmtUnreg":Ljava/sql/PreparedStatement;
    const/4 v5, 0x0

    .line 146
    .local v5, "stmtReg":Ljava/sql/PreparedStatement;
    const/4 v1, 0x0

    .line 149
    .local v1, "committed":Z
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v7}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    .line 151
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 153
    const/4 v7, 0x2

    invoke-interface {v2, v7}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 155
    const-string v7, "delete from tbl_addrs where hostname = ? and port = ?"

    invoke-interface {v2, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    .line 156
    const-string v7, "insert into tbl_addrs values (?, ?)"

    invoke-interface {v2, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 159
    .local v0, "addr":Ljava/net/InetSocketAddress;
    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 160
    const/4 v7, 0x2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-interface {v6, v7, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 162
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 164
    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 165
    const/4 v7, 0x2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-interface {v5, v7, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 167
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->addBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Ljava/sql/SQLException;
    :try_start_1
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 183
    new-instance v7, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to register addresses: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v7

    if-nez v1, :cond_1

    .line 187
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 189
    :cond_1
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 190
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 191
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 170
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeBatch()[I

    .line 171
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V

    .line 173
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeBatch()[I

    .line 174
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 176
    invoke-interface {v2}, Ljava/sql/Connection;->commit()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    const/4 v1, 0x1

    .line 186
    if-nez v1, :cond_3

    .line 187
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 189
    :cond_3
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 190
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 191
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 193
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSrc"    # Ljavax/sql/DataSource;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = false
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    .line 252
    return-void
.end method

.method public setInitSchema(Z)V
    .locals 0
    .param p1, "initSchema"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->initSchema:Z

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterAddresses(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    sget-boolean v6, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 199
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->init()V

    .line 201
    const/4 v2, 0x0

    .line 203
    .local v2, "conn":Ljava/sql/Connection;
    const/4 v5, 0x0

    .line 205
    .local v5, "stmt":Ljava/sql/PreparedStatement;
    const/4 v1, 0x0

    .line 208
    .local v1, "committed":Z
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/jdbc/TcpDiscoveryJdbcIpFinder;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v6}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    .line 210
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 212
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 214
    const-string v6, "delete from tbl_addrs where hostname = ? and port = ?"

    invoke-interface {v2, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 216
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 217
    .local v0, "addr":Ljava/net/InetSocketAddress;
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 218
    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 220
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->addBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/sql/SQLException;
    :try_start_1
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 231
    new-instance v6, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unregister addresses: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v6

    if-nez v1, :cond_1

    .line 235
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 237
    :cond_1
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 238
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 223
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeBatch()[I

    .line 224
    invoke-interface {v2}, Ljava/sql/Connection;->commit()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    const/4 v1, 0x1

    .line 234
    if-nez v1, :cond_3

    .line 235
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnectionQuiet(Ljava/sql/Connection;)V

    .line 237
    :cond_3
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 238
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 240
    return-void
.end method
