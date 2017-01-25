.class public Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;
.super Ljava/lang/Object;
.source "JdbcResultSetMetadata.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COL_WIDTH:I = 0x1e


# instance fields
.field private final cols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tbls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "tbls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->tbls:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->cols:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->types:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->types:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->cols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 90
    const/16 v0, 0x1e

    return v0
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->cols:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->cols:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getColumnType(I)I
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->types:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->type(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->types:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision(I)I
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getScale(I)I
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->tbls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->tbls:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAutoIncrement(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isCaseSensitive(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrency(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isDefinitelyWritable(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public isNullable(I)I
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public isSearchable(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isSigned(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 85
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
    .line 168
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/sql/ResultSetMetaData;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable(I)Z
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

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
    .line 160
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result set meta data is not a wrapper for "

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

    .line 163
    :cond_0
    return-object p0
.end method
