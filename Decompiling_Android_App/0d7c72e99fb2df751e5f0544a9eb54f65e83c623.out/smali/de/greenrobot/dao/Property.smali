.class public Lde/greenrobot/dao/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lde/greenrobot/dao/Selectable;


# instance fields
.field public final columnName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final ordinal:I

.field public final primaryKey:Z

.field public final tableName:Ljava/lang/String;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ordinal"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "primaryKey"    # Z
    .param p5, "columnName"    # Ljava/lang/String;
    .param p6, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lde/greenrobot/dao/Property;->ordinal:I

    .line 42
    iput-object p2, p0, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    .line 43
    iput-object p3, p0, Lde/greenrobot/dao/Property;->name:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lde/greenrobot/dao/Property;->primaryKey:Z

    .line 45
    iput-object p5, p0, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lde/greenrobot/dao/Property;->tableName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;
    .locals 3
    .param p1, "asClause"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lde/greenrobot/dao/selectable/SqlSelectable;

    invoke-virtual {p0}, Lde/greenrobot/dao/Property;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/greenrobot/dao/Property;->getColumnPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/lang/Object;Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 3
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 67
    .local v0, "values":[Ljava/lang/Object;
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v2, " BETWEEN ? AND ?"

    invoke-direct {v1, p0, v2, v0}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">=?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lde/greenrobot/dao/Property;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public gt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public in(Ljava/util/Collection;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lde/greenrobot/dao/query/WhereCondition;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "inValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/Property;->in([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs in([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 3
    .param p1, "inValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lde/greenrobot/dao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isNotNull()Lde/greenrobot/dao/query/WhereCondition;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NOT NULL"

    invoke-direct {v0, p0, v1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNull()Lde/greenrobot/dao/query/WhereCondition;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NULL"

    invoke-direct {v0, p0, v1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<=?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " LIKE ?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public lt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notEq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<>?"

    invoke-direct {v0, p0, v1, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notIn(Ljava/util/Collection;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lde/greenrobot/dao/query/WhereCondition;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/Property;->notIn([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs notIn([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 3
    .param p1, "notInValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lde/greenrobot/dao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public withAlias(Ljava/lang/String;)Lde/greenrobot/dao/selectable/PropertyWithAlias;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Lde/greenrobot/dao/selectable/PropertyWithAlias;

    invoke-direct {v0, p0, p1}, Lde/greenrobot/dao/selectable/PropertyWithAlias;-><init>(Lde/greenrobot/dao/Property;Ljava/lang/String;)V

    return-object v0
.end method
