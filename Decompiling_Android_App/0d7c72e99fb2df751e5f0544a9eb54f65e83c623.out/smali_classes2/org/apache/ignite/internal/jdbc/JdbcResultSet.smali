.class public Lorg/apache/ignite/internal/jdbc/JdbcResultSet;
.super Ljava/lang/Object;
.source "JdbcResultSet.java"

# interfaces
.implements Ljava/sql/ResultSet;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TASK_NAME:Ljava/lang/String; = "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcTask"


# instance fields
.field private closed:Z

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

.field private curr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fetchSize:I

.field private fields:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final futId:Ljava/util/UUID;

.field private final nodeId:Ljava/util/UUID;

.field private pos:I

.field private final stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

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

.field private wasNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;)V
    .locals 2
    .param p1, "stmt"    # Lorg/apache/ignite/internal/jdbc/JdbcStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/jdbc/JdbcStatement;",
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
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "tbls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_4
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    .line 133
    iput-object p2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->tbls:Ljava/util/List;

    .line 134
    iput-object p3, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->cols:Ljava/util/List;

    .line 135
    iput-object p4, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->types:Ljava/util/List;

    .line 136
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    .line 138
    iput-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->nodeId:Ljava/util/UUID;

    .line 139
    iput-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->futId:Ljava/util/UUID;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z

    .line 143
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/jdbc/JdbcStatement;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Collection;ZI)V
    .locals 1
    .param p1, "stmt"    # Lorg/apache/ignite/internal/jdbc/JdbcStatement;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "futId"    # Ljava/util/UUID;
    .param p8, "finished"    # Z
    .param p9, "fetchSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/jdbc/JdbcStatement;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
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
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p4, "tbls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_4
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_5
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_6
    sget-boolean v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p9, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    .line 103
    iput-object p2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->nodeId:Ljava/util/UUID;

    .line 104
    iput-object p3, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->futId:Ljava/util/UUID;

    .line 105
    iput-object p4, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->tbls:Ljava/util/List;

    .line 106
    iput-object p5, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->cols:Ljava/util/List;

    .line 107
    iput-object p6, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->types:Ljava/util/List;

    .line 108
    iput p9, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fetchSize:I

    .line 109
    invoke-interface {p7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    .line 110
    iput-boolean p8, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z

    .line 111
    return-void
.end method

.method private ensureHasCurrentRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1516
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is not positioned on a row."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :cond_0
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
    .line 1506
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->closed:Z

    if-eqz v0, :cond_0

    .line 1507
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is closed."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1508
    :cond_0
    return-void
.end method

.method private getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
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
    .line 1482
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1483
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureHasCurrentRow()V

    .line 1486
    :try_start_0
    const-class v2, Ljava/lang/String;

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "val":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->wasNull:Z

    .line 1490
    return-object v1

    .line 1486
    .end local v1    # "val":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1488
    .restart local v1    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1492
    .end local v1    # "val":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "ignored":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid column index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1495
    .end local v0    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1496
    .local v0, "ignored":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value is an not instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
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
    .line 1462
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1463
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureHasCurrentRow()V

    .line 1465
    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->cols:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1467
    .local v0, "colIdx":I
    if-gtz v0, :cond_0

    .line 1468
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1470
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public absolute(I)Z
    .locals 2
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 548
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public afterLast()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 520
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beforeFirst()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 513
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelRowUpdates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 929
    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 419
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
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->closed:Z

    .line 202
    return-void
.end method

.method public deleteRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 916
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 4
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 449
    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->cols:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 451
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 452
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public first()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 527
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 980
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1011
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1013
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 292
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 392
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 473
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "colIdx"    # I
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 265
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 478
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 365
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 306
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Stream are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 406
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 966
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 997
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 999
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(I)Z
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    const-class v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 218
    .local v0, "val":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 316
    const-class v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 318
    .local v0, "val":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 223
    const-class v1, Ljava/lang/Byte;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 225
    .local v0, "val":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 323
    const-class v1, Ljava/lang/Byte;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 325
    .local v0, "val":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 270
    const-class v0, [B

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 370
    const-class v0, [B

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 461
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 468
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 973
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1006
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 608
    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 275
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .param p1, "colIdx"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1018
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1023
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 258
    const-class v1, Ljava/lang/Double;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 260
    .local v0, "val":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 358
    const-class v1, Ljava/lang/Double;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 360
    .local v0, "val":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 577
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
    .line 592
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 594
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fetchSize:I

    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 251
    const-class v1, Ljava/lang/Float;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 253
    .local v0, "val":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 351
    const-class v1, Ljava/lang/Float;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 353
    .local v0, "val":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1128
    const/4 v0, 0x1

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 237
    const-class v1, Ljava/lang/Integer;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    const-class v1, Ljava/lang/Integer;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    const-class v1, Ljava/lang/Long;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 246
    .local v0, "val":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 344
    const-class v1, Ljava/lang/Long;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 346
    .local v0, "val":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 432
    new-instance v0, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;

    iget-object v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->tbls:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->cols:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->types:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/jdbc/JdbcResultSetMetadata;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1224
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1229
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1231
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1168
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1175
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1210
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1217
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 437
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
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
    .line 1445
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 952
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 442
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
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
    .line 1450
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 985
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 959
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 992
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 541
    invoke-virtual {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->pos:I

    goto :goto_0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1100
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1107
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1180
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1182
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1187
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1189
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "SQL-specific types are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 230
    const-class v1, Ljava/lang/Short;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 232
    .local v0, "val":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 330
    const-class v1, Ljava/lang/Short;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 332
    .local v0, "val":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 947
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 311
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .param p1, "colIdx"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1028
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 380
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    return-object v0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1033
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 285
    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "colIdx"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1038
    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 385
    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1043
    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 601
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->getResultSetType()I

    move-result v0

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 1
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1048
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1053
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 299
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 399
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Streams are not supported."

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
    .line 411
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 902
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 492
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 483
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 485
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->pos:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->closed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 499
    iget v1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->pos:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 506
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1440
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/sql/ResultSet;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public last()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 534
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 940
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 941
    return-void
.end method

.method public moveToInsertRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 935
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 147
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 149
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z

    if-nez v7, :cond_4

    .line 150
    sget-boolean v7, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->nodeId:Ljava/util/UUID;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 151
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->futId:Ljava/util/UUID;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 154
    :cond_1
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->connection()Lorg/apache/ignite/internal/jdbc/JdbcConnection;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/jdbc/JdbcConnection;->client()Lorg/apache/ignite/internal/client/GridClient;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/client/GridClient;->compute()Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v0

    .line 156
    .local v0, "compute":Lorg/apache/ignite/internal/client/GridClientCompute;
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->nodeId:Ljava/util/UUID;

    invoke-interface {v0, v7}, Lorg/apache/ignite/internal/client/GridClientCompute;->node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/ignite/internal/client/GridClientCompute;->projection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v5

    .line 158
    .local v5, "prj":Lorg/apache/ignite/internal/client/GridClientCompute;
    const-string v7, "org.apache.ignite.internal.processors.cache.query.jdbc.GridCacheQueryJdbcTask"

    iget-object v10, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->nodeId:Ljava/util/UUID;

    iget-object v11, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->futId:Ljava/util/UUID;

    iget v12, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fetchSize:I

    iget-object v13, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->stmt:Lorg/apache/ignite/internal/jdbc/JdbcStatement;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/jdbc/JdbcStatement;->getMaxRows()I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->taskArgument(Ljava/util/UUID;Ljava/util/UUID;II)Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->marshalArgument(Ljava/util/Map;)[B

    move-result-object v10

    invoke-interface {v5, v7, v10}, Lorg/apache/ignite/internal/client/GridClientCompute;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 161
    .local v4, "packet":[B
    const/4 v7, 0x0

    aget-byte v6, v4, v7

    .line 162
    .local v6, "status":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    new-array v1, v7, [B

    .line 164
    .local v1, "data":[B
    const/4 v7, 0x1

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v4, v7, v1, v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 166
    if-ne v6, v8, :cond_2

    .line 167
    invoke-static {v1}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshalError([B)Ljava/sql/SQLException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "compute":Lorg/apache/ignite/internal/client/GridClientCompute;
    .end local v1    # "data":[B
    .end local v4    # "packet":[B
    .end local v5    # "prj":Lorg/apache/ignite/internal/client/GridClientCompute;
    .end local v6    # "status":B
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v7, Ljava/sql/SQLException;

    const-string v8, "Failed to query Ignite."

    invoke-direct {v7, v8, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 169
    .end local v2    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    .restart local v0    # "compute":Lorg/apache/ignite/internal/client/GridClientCompute;
    .restart local v1    # "data":[B
    .restart local v4    # "packet":[B
    .restart local v5    # "prj":Lorg/apache/ignite/internal/client/GridClientCompute;
    .restart local v6    # "status":B
    :cond_2
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/jdbc/JdbcUtils;->unmarshal([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 171
    .local v3, "msg":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-boolean v7, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 173
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    .line 174
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->finished:Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .end local v0    # "compute":Lorg/apache/ignite/internal/client/GridClientCompute;
    .end local v1    # "data":[B
    .end local v3    # "msg":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "packet":[B
    .end local v5    # "prj":Lorg/apache/ignite/internal/client/GridClientCompute;
    .end local v6    # "status":B
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 183
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    .line 185
    iget-object v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 186
    iput-object v14, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fields:Ljava/util/Iterator;

    .line 188
    :cond_5
    iget v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->pos:I

    move v7, v8

    .line 195
    :goto_0
    return v7

    .line 193
    :cond_6
    iput-object v14, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->curr:Ljava/util/List;

    move v7, v9

    .line 195
    goto :goto_0
.end method

.method public previous()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 562
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 923
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Row refreshing is not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relative(I)Z
    .locals 2
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 555
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Result set is forward-only."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 615
    const/4 v0, 0x0

    return v0
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
    .line 567
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 569
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 570
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Only forward direction is supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
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
    .line 582
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 584
    if-gtz p1, :cond_0

    .line 585
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Fetch size must be greater than zero."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->fetchSize:I

    .line 588
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
    .line 1432
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result set is not a wrapper for "

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

    .line 1435
    :cond_0
    return-object p0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1348
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1350
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 734
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1252
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1369
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1371
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 867
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1273
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 692
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 825
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1357
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 741
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1259
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1378
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 872
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 874
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1278
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1280
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1392
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1294
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1399
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1301
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBoolean(IZ)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 643
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 776
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateByte(IB)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 650
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 783
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBytes(I[B)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 706
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 839
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1364
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 748
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1266
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1385
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 881
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1287
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1406
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1308
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1413
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1315
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 713
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 846
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDouble(ID)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 685
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 818
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFloat(IF)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 678
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 811
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInt(II)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 664
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 797
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateLong(IJ)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 671
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 804
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1334
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1336
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1238
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1343
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1245
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1420
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1322
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "nClob"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1154
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1427
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1329
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "nClob"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1161
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "nStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1140
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "nStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1147
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNull(I)V
    .locals 2
    .param p1, "colIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 636
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 769
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 762
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scaleOrLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 755
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 895
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scaleOrLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 888
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1058
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 909
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1114
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1119
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1121
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "xmlObj"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1196
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "xmlObj"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 1203
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShort(IS)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 657
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 790
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 699
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 832
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 720
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 853
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 2
    .param p1, "colIdx"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 727
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 2
    .param p1, "colLb"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-direct {p0}, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->ensureNotClosed()V

    .line 860
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "Updates are not supported."

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcResultSet;->wasNull:Z

    return v0
.end method
