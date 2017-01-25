.class public Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;
.super Lorg/apache/ignite/cache/store/CacheStoreAdapter;
.source "CacheJdbcBlobStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/cache/store/CacheStoreAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ATTR_CONN:Ljava/lang/String; = "JDBC_STORE_CONNECTION"

.field public static final DFLT_CONN_URL:Ljava/lang/String; = "jdbc:h2:mem:jdbcCacheStore;DB_CLOSE_DELAY=-1"

.field public static final DFLT_CREATE_TBL_QRY:Ljava/lang/String; = "create table if not exists ENTRIES (key binary primary key, val binary)"

.field public static final DFLT_DEL_QRY:Ljava/lang/String; = "delete from ENTRIES where key=?"

.field public static final DFLT_INSERT_QRY:Ljava/lang/String; = "insert into ENTRIES (key, val) values (?, ?)"

.field public static final DFLT_LOAD_QRY:Ljava/lang/String; = "select * from ENTRIES where key=?"

.field public static final DFLT_UPDATE_QRY:Ljava/lang/String; = "update ENTRIES set val=? where key=?"


# instance fields
.field private final closed:Lorg/jsr166/LongAdder8;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private connUrl:Ljava/lang/String;

.field private createTblQry:Ljava/lang/String;

.field private dataSrc:Ljavax/sql/DataSource;

.field private delQry:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private final initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private initOk:Z

.field private initSchema:Z

.field private insertQry:Ljava/lang/String;

.field private loadQry:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private final opened:Lorg/jsr166/LongAdder8;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private passwd:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ses:Lorg/apache/ignite/cache/store/CacheStoreSession;
    .annotation runtime Lorg/apache/ignite/resources/CacheStoreSessionResource;
    .end annotation
.end field

.field private testMode:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private updateQry:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/CacheStoreAdapter;-><init>()V

    .line 115
    const-string v0, "jdbc:h2:mem:jdbcCacheStore;DB_CLOSE_DELAY=-1"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connUrl:Ljava/lang/String;

    .line 118
    const-string v0, "create table if not exists ENTRIES (key binary primary key, val binary)"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->createTblQry:Ljava/lang/String;

    .line 121
    const-string v0, "select * from ENTRIES where key=?"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->loadQry:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "update ENTRIES set val=? where key=?"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->updateQry:Ljava/lang/String;

    .line 127
    const-string v0, "insert into ENTRIES (key, val) values (?, ?)"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->insertQry:Ljava/lang/String;

    .line 130
    const-string v0, "delete from ENTRIES where key=?"

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->delQry:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initSchema:Z

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 166
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->opened:Lorg/jsr166/LongAdder8;

    .line 170
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closed:Lorg/jsr166/LongAdder8;

    return-void
.end method

.method private closeConnection(Ljava/sql/Connection;)V
    .locals 1
    .param p1, "conn"    # Ljava/sql/Connection;

    .prologue
    .line 384
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 386
    iget-boolean v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->testMode:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closed:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 388
    :cond_0
    return-void
.end method

.method private connection(Lorg/apache/ignite/transactions/Transaction;)Ljava/sql/Connection;
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/transactions/Transaction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cache/store/CacheStoreSession;->properties()Ljava/util/Map;

    move-result-object v1

    .line 327
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/Connection;>;"
    const-string v2, "JDBC_STORE_CONNECTION"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 329
    .local v0, "conn":Ljava/sql/Connection;
    if-nez v0, :cond_0

    .line 330
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    .line 334
    const-string v2, "JDBC_STORE_CONNECTION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v1    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/Connection;>;"
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V
    .locals 0
    .param p1, "tx"    # Lorg/apache/ignite/transactions/Transaction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "conn"    # Ljava/sql/Connection;
    .param p3, "st"    # Ljava/sql/Statement;

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 354
    if-nez p1, :cond_0

    .line 356
    invoke-direct {p0, p2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closeConnection(Ljava/sql/Connection;)V

    .line 357
    :cond_0
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 396
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 397
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Initializing cache store."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    new-instance v3, Lorg/apache/ignite/IgniteException;

    const-string v4, "Failed to initialize cache store (connection URL is not provided)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initSchema:Z

    if-nez v3, :cond_3

    .line 405
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 451
    :cond_2
    return-void

    .line 410
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->createTblQry:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    new-instance v3, Lorg/apache/ignite/IgniteException;

    const-string v4, "Failed to initialize cache store (create table query is not provided)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_4
    const/4 v0, 0x0

    .line 415
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 418
    .local v2, "stmt":Ljava/sql/Statement;
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->createTblQry:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 424
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    .line 426
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initOk:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 434
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closeConnection(Ljava/sql/Connection;)V

    .line 436
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 449
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v2    # "stmt":Ljava/sql/Statement;
    :cond_5
    :goto_0
    iget-boolean v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initOk:Z

    if-nez v3, :cond_2

    .line 450
    new-instance v3, Lorg/apache/ignite/IgniteException;

    const-string v4, "Cache store was not properly initialized."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    .restart local v0    # "conn":Ljava/sql/Connection;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v3, Lorg/apache/ignite/IgniteException;

    const-string v4, "Failed to create database table."

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 434
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closeConnection(Ljava/sql/Connection;)V

    .line 436
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v3

    .line 441
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v2    # "stmt":Ljava/sql/Statement;
    :cond_6
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 443
    :catch_1
    move-exception v1

    .line 444
    .local v1, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    invoke-direct {v3, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private openConnection(Z)Ljava/sql/Connection;
    .locals 4
    .param p1, "autocommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->dataSrc:Ljavax/sql/DataSource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 370
    .local v0, "conn":Ljava/sql/Connection;
    :goto_0
    iget-boolean v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->testMode:Z

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->opened:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->increment()V

    .line 373
    :cond_0
    invoke-interface {v0, p1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 375
    return-object v0

    .line 367
    .end local v0    # "conn":Ljava/sql/Connection;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->passwd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private transaction()Lorg/apache/ignite/transactions/Transaction;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v0

    .line 587
    .local v0, "ses":Lorg/apache/ignite/cache/store/CacheStoreSession;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/cache/store/CacheStoreSession;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 290
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->init()V

    .line 292
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    .line 294
    .local v3, "tx":Lorg/apache/ignite/transactions/Transaction;
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store remove [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 299
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 302
    .local v2, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connection(Lorg/apache/ignite/transactions/Transaction;)Ljava/sql/Connection;

    move-result-object v0

    .line 304
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->delQry:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 306
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 308
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-direct {p0, v3, v0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 316
    return-void

    .line 310
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v4, Ljavax/cache/integration/CacheWriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    throw v4

    .line 310
    :catch_1
    move-exception v4

    move-object v1, v4

    goto :goto_0
.end method

.method protected fromBytes([B)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([B)TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 576
    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->init()V

    .line 214
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v4

    .line 216
    .local v4, "tx":Lorg/apache/ignite/transactions/Transaction;
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Store load [key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 224
    .local v3, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connection(Lorg/apache/ignite/transactions/Transaction;)Ljava/sql/Connection;

    move-result-object v0

    .line 226
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->loadQry:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 228
    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 230
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 232
    .local v2, "rs":Ljava/sql/ResultSet;
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->fromBytes([B)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 239
    invoke-direct {p0, v4, v0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 242
    :goto_0
    return-object v5

    .line 239
    :cond_1
    invoke-direct {p0, v4, v0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 242
    const/4 v5, 0x0

    goto :goto_0

    .line 235
    .end local v2    # "rs":Ljava/sql/ResultSet;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v5, Ljavax/cache/integration/CacheLoaderException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    throw v5

    .line 235
    :catch_1
    move-exception v5

    move-object v1, v5

    goto :goto_1
.end method

.method protected session()Lorg/apache/ignite/cache/store/CacheStoreSession;
    .locals 1

    .prologue
    .line 594
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->ses:Lorg/apache/ignite/cache/store/CacheStoreSession;

    return-object v0
.end method

.method public sessionEnd(Z)V
    .locals 8
    .param p1, "commit"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    const/16 v7, 0x5d

    .line 182
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->init()V

    .line 184
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    .line 186
    .local v3, "tx":Lorg/apache/ignite/transactions/Transaction;
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->session()Lorg/apache/ignite/cache/store/CacheStoreSession;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cache/store/CacheStoreSession;->properties()Ljava/util/Map;

    move-result-object v2

    .line 188
    .local v2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/Connection;>;"
    const-string v4, "JDBC_STORE_CONNECTION"

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 190
    .local v0, "conn":Ljava/sql/Connection;
    if-eqz v0, :cond_0

    .line 192
    if-eqz p1, :cond_2

    .line 193
    :try_start_0
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closeConnection(Ljava/sql/Connection;)V

    .line 205
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 207
    :cond_1
    return-void

    .line 195
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
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

    .line 201
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->closeConnection(Ljava/sql/Connection;)V

    throw v4
.end method

.method public setConnectionUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "connUrl"    # Ljava/lang/String;

    .prologue
    .line 470
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connUrl:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setCreateTableQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTblQry"    # Ljava/lang/String;

    .prologue
    .line 479
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->createTblQry:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSrc"    # Ljavax/sql/DataSource;

    .prologue
    .line 547
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->dataSrc:Ljavax/sql/DataSource;

    .line 548
    return-void
.end method

.method public setDeleteQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "delQry"    # Ljava/lang/String;

    .prologue
    .line 515
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->delQry:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setInitSchema(Z)V
    .locals 0
    .param p1, "initSchema"    # Z

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->initSchema:Z

    .line 462
    return-void
.end method

.method public setInsertQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "insertQry"    # Ljava/lang/String;

    .prologue
    .line 506
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->insertQry:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setLoadQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadQry"    # Ljava/lang/String;

    .prologue
    .line 488
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->loadQry:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 533
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->passwd:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setUpdateQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateQry"    # Ljava/lang/String;

    .prologue
    .line 497
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->updateQry:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->user:Ljava/lang/String;

    .line 525
    return-void
.end method

.method protected toBytes(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 552
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    const-class v1, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;

    const-string v2, "passwd"

    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->passwd:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "*"

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    const/16 v9, 0x5d

    .line 247
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->init()V

    .line 249
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->transaction()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v4

    .line 251
    .local v4, "tx":Lorg/apache/ignite/transactions/Transaction;
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 254
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Store put [key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", val="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 262
    .local v3, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->connection(Lorg/apache/ignite/transactions/Transaction;)Ljava/sql/Connection;

    move-result-object v0

    .line 264
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->updateQry:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 266
    const/4 v6, 0x1

    invoke-virtual {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 267
    const/4 v6, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 269
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v6

    if-nez v6, :cond_1

    .line 270
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 272
    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->insertQry:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 274
    const/4 v6, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 275
    const/4 v6, 0x2

    invoke-virtual {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->toBytes(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 277
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_1
    invoke-direct {p0, v4, v0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    .line 286
    return-void

    .line 280
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v6, Ljavax/cache/integration/CacheWriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to put object [key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", val="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcBlobStore;->end(Lorg/apache/ignite/transactions/Transaction;Ljava/sql/Connection;Ljava/sql/Statement;)V

    throw v6

    .line 280
    :catch_1
    move-exception v6

    move-object v1, v6

    goto :goto_0
.end method
