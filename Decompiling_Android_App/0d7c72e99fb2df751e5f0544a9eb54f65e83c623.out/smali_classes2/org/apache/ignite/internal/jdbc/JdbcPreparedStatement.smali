.class public Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;
.super Lorg/apache/ignite/internal/jdbc/JdbcStatement;
.source "JdbcPreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# instance fields
.field private final argsCnt:I

.field private final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/ignite/internal/jdbc/JdbcConnection;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;-><init>(Lorg/apache/ignite/internal/jdbc/JdbcConnection;)V

    .line 46
    iput-object p2, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->sql:Ljava/lang/String;

    .line 48
    const-string v0, "[^?]"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->argsCnt:I

    .line 49
    return-void
.end method

.method private setArgument(ILjava/lang/Object;)V
    .locals 3
    .param p1, "paramIdx"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 403
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->argsCnt:I

    if-le p1, v0, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter index is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->args:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 407
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->argsCnt:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->args:[Ljava/lang/Object;

    .line 409
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->args:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 410
    return-void
.end method


# virtual methods
.method public addBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 184
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->args:[Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public execute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->sql:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->sql:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 55
    .local v0, "rs":Ljava/sql/ResultSet;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->args:[Ljava/lang/Object;

    .line 57
    return-object v0
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 64
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 226
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Meta data for prepared statement is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 258
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Meta data for prepared statement is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 219
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 348
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 141
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 327
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 355
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 155
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 334
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 383
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 300
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 205
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(IZ)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setByte(IB)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setBytes(I[B)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 362
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 191
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 341
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 376
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 293
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 212
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public setDouble(ID)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "val"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 369
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "val"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 279
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 390
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 307
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "val"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 286
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 272
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(II)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setNull(II)V

    .line 247
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 168
    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 198
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 265
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "xmlObj"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 314
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShort(IS)V
    .locals 1
    .param p1, "paramIdx"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 237
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 242
    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->setArgument(ILjava/lang/Object;)V

    .line 252
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 2
    .param p1, "paramIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcPreparedStatement;->ensureNotClosed()V

    .line 148
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
