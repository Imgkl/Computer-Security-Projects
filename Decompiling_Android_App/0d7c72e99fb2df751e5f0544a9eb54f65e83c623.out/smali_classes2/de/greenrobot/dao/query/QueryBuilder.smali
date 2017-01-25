.class public Lde/greenrobot/dao/query/QueryBuilder;
.super Lde/greenrobot/dao/query/BaseBuilder;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde/greenrobot/dao/query/BaseBuilder;"
    }
.end annotation


# static fields
.field public static LOG_SQL:Z

.field public static LOG_VALUES:Z


# instance fields
.field private final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private distinct:Z

.field private joinBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private selectColumns:[Ljava/lang/String;

.field private tableAliases:[Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final whereConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lde/greenrobot/dao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/query/QueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;)V
    .locals 1
    .param p2, "tablePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/query/BaseBuilder;-><init>(Lde/greenrobot/dao/Dao;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilders:Ljava/util/List;

    .line 89
    return-void
.end method

.method private appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tablePrefixOrNull"    # Ljava/lang/String;

    .prologue
    .line 537
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 538
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 541
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lde/greenrobot/dao/query/WhereCondition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const-string v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/WhereCondition;

    .line 546
    .local v0, "condition":Lde/greenrobot/dao/query/WhereCondition;
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v2}, Lde/greenrobot/dao/Dao;->getTablename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-interface {v0, p1, v2, v3}, Lde/greenrobot/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v0, v2}, Lde/greenrobot/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    .line 550
    .end local v0    # "condition":Lde/greenrobot/dao/query/WhereCondition;
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lde/greenrobot/dao/query/WhereCondition;>;"
    :cond_1
    return-void
.end method

.method public static internalCreate(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/QueryBuilder;

    invoke-direct {v0, p0}, Lde/greenrobot/dao/query/QueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;)V

    return-object v0
.end method

.method private join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 5
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "joinType"    # Lde/greenrobot/dao/join/JoinType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Lde/greenrobot/dao/join/JoinType;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 285
    :try_start_0
    const-string v3, "TABLE_NAME"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "tableName":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 291
    .end local v1    # "tableName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 290
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "joinType"    # Lde/greenrobot/dao/join/JoinType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lde/greenrobot/dao/join/JoinType;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    new-instance v0, Lde/greenrobot/dao/join/JoinBuilder;

    invoke-direct {v0, p0, p1, p3}, Lde/greenrobot/dao/join/JoinBuilder;-><init>(Lde/greenrobot/dao/query/QueryBuilder;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)V

    .line 298
    .local v0, "jBuilder":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-virtual {v0, p2}, Lde/greenrobot/dao/join/JoinBuilder;->alias(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    .line 300
    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-object v0
.end method


# virtual methods
.method protected addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "condition"    # Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v0}, Lde/greenrobot/dao/Dao;->getTablename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-interface {p3, p1, v0, v1}, Lde/greenrobot/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p3, p2}, Lde/greenrobot/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 167
    return-void
.end method

.method public varargs and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 144
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " AND "

    invoke-virtual {p0, v0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public any()Z
    .locals 4

    .prologue
    .line 701
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->buildCount()Lde/greenrobot/dao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/CountQuery;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lde/greenrobot/dao/query/Query;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 435
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-static {v7}, Lde/greenrobot/dao/InternalQueryDaoAccess;->getStatements(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/internal/TableStatements;

    move-result-object v7

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    iget-object v9, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    iget-object v10, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    iget-boolean v11, p0, Lde/greenrobot/dao/query/QueryBuilder;->distinct:Z

    invoke-virtual {v7, v8, v9, v10, v11}, Lde/greenrobot/dao/internal/TableStatements;->getSelectColumns([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "select":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/dao/join/JoinBuilder;

    .line 443
    .local v2, "jBuilder":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-virtual {v2}, Lde/greenrobot/dao/join/JoinBuilder;->getJoinClause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 437
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jBuilder":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    .end local v5    # "select":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-static {v7}, Lde/greenrobot/dao/InternalQueryDaoAccess;->getStatements(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/internal/TableStatements;

    move-result-object v7

    iget-boolean v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->distinct:Z

    iget-object v9, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "select":Ljava/lang/String;
    goto :goto_0

    .line 446
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 448
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 449
    const-string v7, " ORDER BY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 452
    :cond_2
    const/4 v3, -0x1

    .line 453
    .local v3, "limitPosition":I
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 454
    const-string v7, " LIMIT ?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 459
    :cond_3
    const/4 v4, -0x1

    .line 460
    .local v4, "offsetPosition":I
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 461
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-nez v7, :cond_4

    .line 462
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Offset cannot be set without limit"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 464
    :cond_4
    const-string v7, " OFFSET ?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 469
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "sql":Ljava/lang/String;
    sget-boolean v7, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v7, :cond_6

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Built SQL for query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 474
    :cond_6
    sget-boolean v7, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v7, :cond_7

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Values for query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 478
    :cond_7
    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v6, v8, v3, v4}, Lde/greenrobot/dao/query/Query;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;

    move-result-object v7

    return-object v7
.end method

.method public buildCount()Lde/greenrobot/dao/query/CountQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "tablename":Ljava/lang/String;
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-static {v5, v6}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/dao/join/JoinBuilder;

    .line 520
    .local v3, "jBuilder":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-virtual {v3}, Lde/greenrobot/dao/join/JoinBuilder;->getJoinClause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    .end local v3    # "jBuilder":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    :cond_0
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "sql":Ljava/lang/String;
    sget-boolean v6, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v6, :cond_1

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Built SQL for count query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 529
    :cond_1
    sget-boolean v6, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v6, :cond_2

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Values for count query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 533
    :cond_2
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lde/greenrobot/dao/query/CountQuery;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/CountQuery;

    move-result-object v6

    return-object v6
.end method

.method public buildDelete()Lde/greenrobot/dao/query/DeleteQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "tablename":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "sql":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 500
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built SQL for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 503
    :cond_0
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 507
    :cond_1
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lde/greenrobot/dao/query/DeleteQuery;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v4

    return-object v4
.end method

.method protected varargs combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 9
    .param p1, "combineOp"    # Ljava/lang/String;
    .param p2, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p4, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 149
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "combinedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2, p2}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0, v1, v2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 156
    move-object v0, p4

    .local v0, "arr$":[Lde/greenrobot/dao/query/WhereCondition;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 157
    .local v3, "cond":Lde/greenrobot/dao/query/WhereCondition;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0, v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "cond":Lde/greenrobot/dao/query/WhereCondition;
    :cond_0
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    new-instance v6, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public count()J
    .locals 2

    .prologue
    .line 693
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->buildCount()Lde/greenrobot/dao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/CountQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public crossJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public crossJoin(Ljava/lang/Class;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public crossJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Cross:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public crossJoin(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Cross:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 684
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->cursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->distinct:Z

    .line 396
    return-object p0
.end method

.method public getMasterTablePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public innerJoin(Ljava/lang/Class;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public innerJoin(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Inner:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftJoin(Ljava/lang/Class;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/Class;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftJoin(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/join/JoinBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinType;->Left:Lde/greenrobot/dao/join/JoinType;

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/dao/query/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 382
    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lde/greenrobot/dao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listIterator()Lde/greenrobot/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lde/greenrobot/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listLazy()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public listLazyUncached()Lde/greenrobot/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listLazyUncached()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsBoolean(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsBoolean(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsByteArray(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsByteArray(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsByteArray(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsByteArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsDouble(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsDouble(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsInteger(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsInt(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsInteger(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsInt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsString(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsString(Lde/greenrobot/dao/Property;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsString(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->listOfFieldAsString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iput-object p1, p0, Lde/greenrobot/dao/query/QueryBuilder;->mTablePrefix:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public offset(I)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 391
    return-object p0
.end method

.method public varargs or(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 135
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " OR "

    invoke-virtual {p0, v0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " ASC"

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 308
    return-object p0
.end method

.method public orderCustom(Lde/greenrobot/dao/Property;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 0
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/query/QueryBuilder;->orderCustomInternal(Lde/greenrobot/dao/Property;Ljava/lang/String;)V

    .line 321
    return-object p0
.end method

.method public varargs orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " DESC"

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 314
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 0
    .param p1, "rawOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->orderRawInternal(Ljava/lang/String;)V

    .line 330
    return-object p0
.end method

.method public varargs select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 3
    .param p1, "properties"    # [Lde/greenrobot/dao/Selectable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/greenrobot/dao/Selectable;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    .line 341
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lde/greenrobot/dao/Selectable;->getColumnName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 346
    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lde/greenrobot/dao/query/QueryBuilder;->getTableAlias(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 5
    .param p1, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    .line 362
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    .line 364
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 366
    aget-object v2, p1, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 367
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 368
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    aget-object v3, p1, v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 369
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    aget-object v3, p1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 364
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->selectColumns:[Ljava/lang/String;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 372
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->tableAliases:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    goto :goto_1

    .line 376
    .end local v0    # "dotIndex":I
    :cond_1
    return-object p0
.end method

.method public union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<*>;)",
            "Lde/greenrobot/dao/query/UnionQueryBuilder;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "unionQuery":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    new-instance v0, Lde/greenrobot/dao/query/UnionQueryBuilder;

    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-direct {v0, v1}, Lde/greenrobot/dao/query/UnionQueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;)V

    .line 407
    .local v0, "unionBuilder":Lde/greenrobot/dao/query/UnionQueryBuilder;
    invoke-virtual {v0, p0}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    .line 408
    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    .line 410
    return-object v0
.end method

.method public union(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 2
    .param p1, "unionQuery"    # Ljava/lang/String;

    .prologue
    .line 419
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    new-instance v0, Lde/greenrobot/dao/query/UnionQueryBuilder;

    iget-object v1, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-direct {v0, v1}, Lde/greenrobot/dao/query/UnionQueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;)V

    .line 421
    .local v0, "unionBuilder":Lde/greenrobot/dao/query/UnionQueryBuilder;
    invoke-virtual {v0, p0}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    .line 422
    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    .line 424
    return-object v0
.end method

.method public unique()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 630
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsByteArray(Lde/greenrobot/dao/Property;)[Ljava/lang/Byte;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 618
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsByteArray(Lde/greenrobot/dao/Property;)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/lang/Double;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 582
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsInteger(Lde/greenrobot/dao/Property;)Ljava/lang/Integer;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 594
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsInt(Lde/greenrobot/dao/Property;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 606
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public uniqueFieldAsString(Lde/greenrobot/dao/Property;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 570
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lde/greenrobot/dao/Selectable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/query/Query;->uniqueFieldAsString(Lde/greenrobot/dao/Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->uniqueOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 5
    .param p1, "cond"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "[",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    move-object v0, p2

    .local v0, "arr$":[Lde/greenrobot/dao/query/WhereCondition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 106
    .local v3, "whereCondition":Lde/greenrobot/dao/query/WhereCondition;
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "whereCondition":Lde/greenrobot/dao/query/WhereCondition;
    :cond_0
    return-object p0
.end method

.method public varargs whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 2
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "[",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p0
.end method

.method public varargs whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 2
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "[",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->or(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method
