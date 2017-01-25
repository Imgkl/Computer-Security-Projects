.class public Lde/greenrobot/dao/query/UnionQueryBuilder;
.super Lde/greenrobot/dao/query/BaseBuilder;
.source "UnionQueryBuilder.java"


# instance fields
.field private mDao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;"
        }
    .end annotation
.end field

.field private mParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mRawSqlClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSql:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lde/greenrobot/dao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<**>;"
    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/query/BaseBuilder;-><init>(Lde/greenrobot/dao/Dao;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mQueryBuilders:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mRawSqlClauses:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mDao:Lde/greenrobot/dao/AbstractDao;

    .line 36
    return-void
.end method

.method private build()V
    .locals 13

    .prologue
    .line 86
    const/4 v1, 0x1

    .line 88
    .local v1, "first":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v6, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v10, "sql":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mQueryBuilders:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/greenrobot/dao/query/QueryBuilder;

    .line 94
    .local v8, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    if-nez v1, :cond_0

    .line 95
    const-string v11, " UNION "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v7

    .line 100
    .local v7, "q":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<*>;"
    iget-object v11, v7, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, v7, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 103
    .local v5, "parameter":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v5    # "parameter":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 107
    goto :goto_0

    .line 109
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "q":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<*>;"
    .end local v8    # "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    :cond_2
    iget-object v11, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mRawSqlClauses:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 111
    .local v9, "rawSql":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 112
    const-string v11, " UNION "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v1, 0x0

    .line 118
    goto :goto_2

    .line 120
    .end local v9    # "rawSql":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 121
    const-string v11, " ORDER BY "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 124
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mSql:Ljava/lang/String;

    .line 125
    iput-object v6, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mParameters:Ljava/util/ArrayList;

    .line 126
    return-void
.end method


# virtual methods
.method public cursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lde/greenrobot/dao/query/UnionQueryBuilder;->build()V

    .line 134
    iget-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mDao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mSql:Ljava/lang/String;

    iget-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mParameters:Ljava/util/ArrayList;

    iget-object v3, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lde/greenrobot/dao/query/UnionQueryBuilder;->build()V

    .line 82
    iget-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method varargs orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;

    .prologue
    .line 54
    const-string v0, " ASC"

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 55
    return-object p0
.end method

.method orderCustom(Lde/greenrobot/dao/Property;Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 0
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderCustomInternal(Lde/greenrobot/dao/Property;Ljava/lang/String;)V

    .line 68
    return-object p0
.end method

.method varargs orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;

    .prologue
    .line 60
    const-string v0, " DESC"

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 61
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 0
    .param p1, "rawOrder"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderRawInternal(Ljava/lang/String;)V

    .line 77
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
    .line 39
    .local p1, "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    invoke-virtual {p1}, Lde/greenrobot/dao/query/QueryBuilder;->hasOrderBy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Cannot add a query with an ORDER BY to a UNION clause. Please use .union(...).orderby(...)"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mQueryBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object p0
.end method

.method public union(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lde/greenrobot/dao/query/UnionQueryBuilder;->mRawSqlClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object p0
.end method
