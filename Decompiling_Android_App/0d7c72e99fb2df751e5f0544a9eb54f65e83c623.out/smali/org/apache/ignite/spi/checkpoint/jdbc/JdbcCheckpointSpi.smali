.class public Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "JdbcCheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
.implements Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field private static final CHECK_EXISTS_SQL:Ljava/lang/String; = "SELECT 0 FROM {0} WHERE {1} = ?"

.field private static final CHECK_TABLE_EXISTS_SQL:Ljava/lang/String; = "SELECT 0 FROM {0} WHERE 0 <> 0"

.field private static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE {0} ({1} {2} PRIMARY KEY, {3} {4} , {5} {6} NULL)"

.field private static final DELETE_EXPIRED_SQL:Ljava/lang/String; = "DELETE FROM {0} WHERE {1} IS NOT NULL AND {1} <= ?"

.field private static final DELETE_SQL:Ljava/lang/String; = "DELETE FROM {0} WHERE {1} = ?"

.field public static final DFLT_CHECKPOINT_TABLE_NAME:Ljava/lang/String; = "CHECKPOINTS"

.field public static final DFLT_EXPIRE_DATE_FIELD_NAME:Ljava/lang/String; = "EXPIRE_DATE"

.field public static final DFLT_EXPIRE_DATE_FIELD_TYPE:Ljava/lang/String; = "DATETIME"

.field public static final DFLT_KEY_FIELD_NAME:Ljava/lang/String; = "NAME"

.field public static final DFLT_KEY_FIELD_TYPE:Ljava/lang/String; = "VARCHAR(256)"

.field public static final DFLT_NUMBER_OF_RETRIES:I = 0x2

.field public static final DFLT_VALUE_FIELD_NAME:Ljava/lang/String; = "VALUE"

.field public static final DFLT_VALUE_FIELD_TYPE:Ljava/lang/String; = "BLOB"

.field private static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO {0} ({1}, {2}, {3}) VALUES (?, ?, ?)"

.field private static final NON_EXPIRABLE_TIMEOUT:J = 0x0L

.field private static final SELECT_EXPIRED_SQL:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} IS NOT NULL AND {2} <= ?"

.field private static final SELECT_SQL:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} = ? AND ({3} IS NULL OR {3} > ?)"

.field private static final UPDATE_SQL:Ljava/lang/String; = "UPDATE {0} SET {1} = ?, {2} = ? WHERE {3} = ?"


# instance fields
.field private chkExistsSql:Ljava/lang/String;

.field private chkTblExistsSql:Ljava/lang/String;

.field private crtTblSql:Ljava/lang/String;

.field private dataSrc:Ljavax/sql/DataSource;

.field private delExpSql:Ljava/lang/String;

.field private delSql:Ljava/lang/String;

.field private expDateName:Ljava/lang/String;

.field private expDateType:Ljava/lang/String;

.field private insSql:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private keyType:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

.field private pwd:Ljava/lang/String;

.field private retryNum:I

.field private selExpSql:Ljava/lang/String;

.field private selSql:Ljava/lang/String;

.field private tblName:Ljava/lang/String;

.field private updateSql:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private valName:Ljava/lang/String;

.field private valType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    .line 187
    const-string v0, "CHECKPOINTS"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    .line 190
    const-string v0, "NAME"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    .line 193
    const-string v0, "VARCHAR(256)"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyType:Ljava/lang/String;

    .line 196
    const-string v0, "VALUE"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    .line 199
    const-string v0, "BLOB"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valType:Ljava/lang/String;

    .line 202
    const-string v0, "EXPIRE_DATE"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    .line 205
    const-string v0, "DATETIME"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateType:Ljava/lang/String;

    return-void
.end method

.method private createCheckpoint(Ljava/sql/Connection;Ljava/lang/String;[BLjava/sql/Time;)I
    .locals 3
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "state"    # [B
    .param p4, "expTime"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 717
    .local v0, "st":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->insSql:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 719
    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 720
    const/4 v1, 0x2

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 721
    const/4 v1, 0x3

    invoke-interface {v0, v1, p4}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 723
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 726
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v1
.end method

.method private createCheckpointTable(Ljava/sql/Connection;)V
    .locals 4
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 810
    .local v0, "st":Ljava/sql/Statement;
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->crtTblSql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 814
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully created checkpoint table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 820
    return-void

    .line 818
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v1
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->user:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->pwd:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->user:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->pwd:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 768
    .local v0, "conn":Ljava/sql/Connection;
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 770
    return-object v0

    .line 764
    .end local v0    # "conn":Ljava/sql/Connection;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private isCheckpointExists(Ljava/sql/Connection;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 686
    .local v1, "st":Ljava/sql/PreparedStatement;
    const/4 v0, 0x0

    .line 689
    .local v0, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->chkExistsSql:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 691
    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 693
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 698
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 699
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return v2

    .line 698
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 699
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v2
.end method

.method private isCheckpointTableExists(Ljava/sql/Connection;)Z
    .locals 5
    .param p1, "conn"    # Ljava/sql/Connection;

    .prologue
    .line 780
    const/4 v2, 0x0

    .line 782
    .local v2, "st":Ljava/sql/Statement;
    const/4 v1, 0x0

    .line 785
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 787
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->chkTblExistsSql:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 789
    const/4 v3, 0x1

    .line 795
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 796
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    :goto_0
    return v3

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "ignored":Ljava/sql/SQLException;
    const/4 v3, 0x0

    .line 795
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 796
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_0

    .line 795
    .end local v0    # "ignored":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 796
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v3
.end method

.method private removeExpiredCheckpoints(Ljava/sql/Connection;)I
    .locals 9
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 832
    .local v0, "delCnt":I
    const/4 v3, 0x0

    .line 833
    .local v3, "selSt":Ljava/sql/PreparedStatement;
    const/4 v1, 0x0

    .line 835
    .local v1, "delSt":Ljava/sql/PreparedStatement;
    const/4 v2, 0x0

    .line 837
    .local v2, "rs":Ljava/sql/ResultSet;
    new-instance v4, Ljava/sql/Time;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Time;-><init>(J)V

    .line 839
    .local v4, "time":Ljava/sql/Time;
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 842
    .local v5, "tmp":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    if-eqz v5, :cond_0

    .line 843
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->selExpSql:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 845
    const/4 v6, 0x1

    invoke-interface {v3, v6, v4}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 847
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 849
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 850
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/spi/checkpoint/CheckpointListener;->onCheckpointRemoved(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 861
    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 862
    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v6

    .line 853
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->delExpSql:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 855
    const/4 v6, 0x1

    invoke-interface {v1, v6, v4}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 857
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 860
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 861
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 862
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 865
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 866
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully removed expired checkpoints from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 868
    :cond_1
    return v0
.end method

.method private varargs sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "ptrn"    # Ljava/lang/String;
    .param p2, "s"    # [Ljava/lang/Object;

    .prologue
    .line 433
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateCheckpoint(Ljava/sql/Connection;Ljava/lang/String;[BLjava/sql/Time;)I
    .locals 3
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "state"    # [B
    .param p4, "expTime"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 744
    .local v0, "st":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->updateSql:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 746
    const/4 v1, 0x1

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 747
    const/4 v1, 0x2

    invoke-interface {v0, v1, p4}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 748
    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 750
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 753
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v1
.end method


# virtual methods
.method public getCheckpointTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireDateFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDateFieldType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyFieldType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfRetries()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getValueFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueFieldType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valType:Ljava/lang/String;

    return-object v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)[B
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 540
    .local v3, "st":Ljava/sql/PreparedStatement;
    const/4 v2, 0x0

    .line 543
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 545
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->selSql:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 547
    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 548
    const/4 v4, 0x2

    new-instance v5, Ljava/sql/Time;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Time;-><init>(J)V

    invoke-interface {v3, v4, v5}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 550
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 552
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getBytes(I)[B
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 558
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 559
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 560
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return-object v4

    .line 552
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load checkpoint [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 559
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 560
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v4
.end method

.method protected onContextDestroyed0()V
    .locals 5

    .prologue
    .line 512
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    if-eqz v2, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 516
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 518
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->removeExpiredCheckpoints(Ljava/sql/Connection;)I

    .line 520
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 532
    .end local v0    # "conn":Ljava/sql/Connection;
    :cond_0
    :goto_0
    return-void

    .line 522
    .restart local v0    # "conn":Ljava/sql/Connection;
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnection(Ljava/sql/Connection;Lorg/apache/ignite/IgniteLogger;)V

    .line 525
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove expired checkpoints from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_0

    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v2
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 570
    .local v3, "st":Ljava/sql/PreparedStatement;
    const/4 v2, 0x0

    .line 573
    .local v2, "rmv":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 575
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->delSql:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 577
    const/4 v5, 0x1

    invoke-interface {v3, v5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 579
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v5

    if-lez v5, :cond_0

    .line 580
    const/4 v2, 0x1

    .line 582
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 584
    .local v4, "tmp":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    if-eqz v4, :cond_0

    .line 585
    invoke-interface {v4, p1}, Lorg/apache/ignite/spi/checkpoint/CheckpointListener;->onCheckpointRemoved(Ljava/lang/String;)V

    .line 588
    .end local v4    # "tmp":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    :cond_0
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 599
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    move v5, v2

    .line 602
    :goto_0
    return v5

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnection(Ljava/sql/Connection;Lorg/apache/ignite/IgniteLogger;)V

    .line 593
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove checkpoint [tblName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    const/4 v5, 0x0

    .line 598
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 599
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_0

    .line 598
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 599
    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v5
.end method

.method public saveCheckpoint(Ljava/lang/String;[BJZ)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # [B
    .param p3, "timeout"    # J
    .param p5, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 608
    const/4 v3, 0x0

    .line 610
    .local v3, "expTime":Ljava/sql/Time;
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    .line 611
    new-instance v3, Ljava/sql/Time;

    .end local v3    # "expTime":Ljava/sql/Time;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-direct {v3, v4, v5}, Ljava/sql/Time;-><init>(J)V

    .line 613
    .restart local v3    # "expTime":Ljava/sql/Time;
    :cond_0
    const/4 v0, 0x0

    .line 616
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 618
    const/4 v2, 0x0

    .line 621
    .local v2, "errCnt":I
    :goto_0
    iget v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    if-lt v2, v4, :cond_1

    .line 622
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save checkpoint after pre-configured number of retries [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", retryNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v2    # "errCnt":I
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save checkpoint [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v4

    .line 627
    .restart local v2    # "errCnt":I
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->isCheckpointExists(Ljava/sql/Connection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 628
    invoke-direct {p0, v0, p1, p2, v3}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->createCheckpoint(Ljava/sql/Connection;Ljava/lang/String;[BLjava/sql/Time;)I

    move-result v4

    if-nez v4, :cond_4

    .line 629
    add-int/lit8 v2, v2, 0x1

    .line 631
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create checkpoint (will try again) [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 654
    :catch_1
    move-exception v1

    .line 655
    .restart local v1    # "e":Ljava/sql/SQLException;
    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnection(Ljava/sql/Connection;Lorg/apache/ignite/IgniteLogger;)V

    .line 657
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    if-lt v2, v4, :cond_5

    .line 658
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save checkpoint [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    .end local v1    # "e":Ljava/sql/SQLException;
    :cond_2
    if-nez p5, :cond_3

    .line 639
    const/4 v4, 0x0

    .line 671
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    :goto_1
    return v4

    .line 640
    :cond_3
    :try_start_4
    invoke-direct {p0, v0, p1, p2, v3}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->updateCheckpoint(Ljava/sql/Connection;Ljava/lang/String;[BLjava/sql/Time;)I

    move-result v4

    if-nez v4, :cond_4

    .line 641
    add-int/lit8 v2, v2, 0x1

    .line 643
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update checkpoint as it may be deleted (will try create) [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 650
    :cond_4
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 652
    const/4 v4, 0x1

    .line 671
    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_1

    .line 662
    .restart local v1    # "e":Ljava/sql/SQLException;
    :cond_5
    :try_start_5
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save checkpoint (will try again) [tblName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .prologue
    .line 873
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 874
    return-void
.end method

.method public setCheckpointTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tblName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 349
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSrc"    # Ljavax/sql/DataSource;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = false
    .end annotation

    .prologue
    .line 304
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    .line 305
    return-void
.end method

.method public setExpireDateFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "expDateName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setExpireDateFieldType(Ljava/lang/String;)V
    .locals 0
    .param p1, "expDateType"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 423
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateType:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setKeyFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setKeyFieldType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 373
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyType:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setNumberOfRetries(I)V
    .locals 0
    .param p1, "retryNum"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 315
    iput p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    .line 316
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 339
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->pwd:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->user:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setValueFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "valName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 385
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setValueFieldType(Ljava/lang/String;)V
    .locals 0
    .param p1, "valType"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 398
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valType:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 12
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 439
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->startStopwatch()V

    .line 441
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->dataSrc:Ljavax/sql/DataSource;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    const-string v6, "dataSrc != null"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 442
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    const-string v6, "!F.isEmpty(tblName)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 443
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_2
    const-string v6, "!F.isEmpty(keyName)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 444
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyType:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_3
    const-string v6, "!F.isEmpty(keyType)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 445
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_4
    const-string v6, "!F.isEmpty(valName)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 446
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valType:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_5
    const-string v6, "!F.isEmpty(valType)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 447
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_6
    const-string v6, "!F.isEmpty(expDateName)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 448
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateType:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    :goto_7
    const-string v6, "!F.isEmpty(expDateType)"

    invoke-virtual {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 451
    const-string v3, "CREATE TABLE {0} ({1} {2} PRIMARY KEY, {3} {4} , {5} {6} NULL)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyType:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valType:Ljava/lang/String;

    aput-object v7, v6, v11

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateType:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->crtTblSql:Ljava/lang/String;

    .line 452
    const-string v3, "SELECT 0 FROM {0} WHERE 0 <> 0"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->chkTblExistsSql:Ljava/lang/String;

    .line 453
    const-string v3, "SELECT 0 FROM {0} WHERE {1} = ?"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->chkExistsSql:Ljava/lang/String;

    .line 454
    const-string v3, "UPDATE {0} SET {1} = ?, {2} = ? WHERE {3} = ?"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->updateSql:Ljava/lang/String;

    .line 455
    const-string v3, "INSERT INTO {0} ({1}, {2}, {3}) VALUES (?, ?, ?)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->insSql:Ljava/lang/String;

    .line 456
    const-string v3, "DELETE FROM {0} WHERE {1} = ?"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->delSql:Ljava/lang/String;

    .line 457
    const-string v3, "SELECT {0} FROM {1} WHERE {2} = ? AND ({3} IS NULL OR {3} > ?)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->valName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->selSql:Ljava/lang/String;

    .line 458
    const-string v3, "DELETE FROM {0} WHERE {1} IS NOT NULL AND {1} <= ?"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->delExpSql:Ljava/lang/String;

    .line 459
    const-string v3, "SELECT {0} FROM {1} WHERE {2} IS NOT NULL AND {2} <= ?"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->keyName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    aput-object v5, v6, v4

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->expDateName:Ljava/lang/String;

    aput-object v4, v6, v9

    invoke-direct {p0, v3, v6}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->sql(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->selExpSql:Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .line 464
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->getConnection()Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 467
    const/4 v2, 0x0

    .line 471
    .local v2, "errCnt":I
    :cond_0
    :goto_8
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->isCheckpointTableExists(Ljava/sql/Connection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 472
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->createCheckpointTable(Ljava/sql/Connection;)V

    .line 474
    :cond_1
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 499
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 500
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->startInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 501
    :cond_2
    return-void

    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v2    # "errCnt":I
    :cond_3
    move v3, v5

    .line 441
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 442
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 443
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 444
    goto/16 :goto_3

    :cond_7
    move v3, v5

    .line 445
    goto/16 :goto_4

    :cond_8
    move v3, v5

    .line 446
    goto/16 :goto_5

    :cond_9
    move v3, v5

    .line 447
    goto/16 :goto_6

    :cond_a
    move v3, v5

    .line 448
    goto/16 :goto_7

    .line 478
    .restart local v0    # "conn":Ljava/sql/Connection;
    .restart local v2    # "errCnt":I
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->rollbackConnection(Ljava/sql/Connection;Lorg/apache/ignite/IgniteLogger;)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->retryNum:I

    if-lt v2, v3, :cond_b

    .line 482
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create checkpoint table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v2    # "errCnt":I
    :catch_1
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/sql/SQLException;
    :try_start_3
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start jdbc checkpoint SPI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v3

    .line 484
    .restart local v1    # "e":Ljava/sql/SQLException;
    .restart local v2    # "errCnt":I
    :cond_b
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create checkpoint table as it may already exist (will try again): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->tblName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method
