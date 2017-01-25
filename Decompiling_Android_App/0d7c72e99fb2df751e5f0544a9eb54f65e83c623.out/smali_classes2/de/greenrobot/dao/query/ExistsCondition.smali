.class public Lde/greenrobot/dao/query/ExistsCondition;
.super Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;
.source "ExistsCondition.java"


# instance fields
.field private mExistsQuery:Lde/greenrobot/dao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/Query",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/query/QueryBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "existsQuery":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    invoke-direct {p0}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 13
    invoke-virtual {p1}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/query/ExistsCondition;->mExistsQuery:Lde/greenrobot/dao/query/Query;

    .line 14
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "masterTableName"    # Ljava/lang/String;
    .param p3, "masterTablePrefix"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "EXISTS ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, Lde/greenrobot/dao/query/ExistsCondition;->mExistsQuery:Lde/greenrobot/dao/query/Query;

    iget-object v0, v0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    return-void
.end method

.method public appendValuesTo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "valuesTarget":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/ExistsCondition;->mExistsQuery:Lde/greenrobot/dao/query/Query;

    iget-object v0, v4, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 26
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
