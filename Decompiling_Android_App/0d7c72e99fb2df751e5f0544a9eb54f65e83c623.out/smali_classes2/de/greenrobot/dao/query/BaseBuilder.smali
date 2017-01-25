.class public Lde/greenrobot/dao/query/BaseBuilder;
.super Ljava/lang/Object;
.source "BaseBuilder.java"


# instance fields
.field protected mDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<**>;"
        }
    .end annotation
.end field

.field protected mTablePrefix:Ljava/lang/String;

.field protected orderBuilder:Ljava/lang/StringBuilder;


# direct methods
.method protected constructor <init>(Lde/greenrobot/dao/Dao;Ljava/lang/String;)V
    .locals 0
    .param p2, "tablePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lde/greenrobot/dao/query/BaseBuilder;->mDao:Lde/greenrobot/dao/Dao;

    .line 15
    iput-object p2, p0, Lde/greenrobot/dao/query/BaseBuilder;->mTablePrefix:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private checkOrderBuilder()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 70
    invoke-virtual {p0, p2}, Lde/greenrobot/dao/query/BaseBuilder;->getTableAlias(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-object p1
.end method

.method protected getTableAlias(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Lde/greenrobot/dao/Selectable;

    .prologue
    .line 62
    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/BaseBuilder;->isMasterTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->mTablePrefix:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasOrderBy()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasterTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v0}, Lde/greenrobot/dao/Dao;->getTablename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected varargs orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V
    .locals 6
    .param p1, "ascOrDescWithLeadingSpace"    # Ljava/lang/String;
    .param p2, "properties"    # [Lde/greenrobot/dao/Property;

    .prologue
    .line 27
    move-object v0, p2

    .local v0, "arr$":[Lde/greenrobot/dao/Property;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 28
    .local v3, "property":Lde/greenrobot/dao/Property;
    invoke-direct {p0}, Lde/greenrobot/dao/query/BaseBuilder;->checkOrderBuilder()V

    .line 29
    iget-object v4, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Lde/greenrobot/dao/query/BaseBuilder;->append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;

    .line 30
    const-class v4, Ljava/lang/String;

    iget-object v5, v3, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    iget-object v4, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v5, " COLLATE LOCALIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    iget-object v4, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v3    # "property":Lde/greenrobot/dao/Property;
    :cond_1
    return-void
.end method

.method protected orderCustomInternal(Lde/greenrobot/dao/Property;Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lde/greenrobot/dao/query/BaseBuilder;->checkOrderBuilder()V

    .line 40
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/BaseBuilder;->append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method protected orderRawInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawOrder"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lde/greenrobot/dao/query/BaseBuilder;->checkOrderBuilder()V

    .line 50
    iget-object v0, p0, Lde/greenrobot/dao/query/BaseBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method
