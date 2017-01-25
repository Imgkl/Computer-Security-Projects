.class public Lde/greenrobot/dao/join/JoinBuilder;
.super Ljava/lang/Object;
.source "JoinBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/join/JoinBuilder$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDestProperty:Ljava/lang/String;

.field private mJoinTable:Ljava/lang/String;

.field private mJoinTableAlias:Ljava/lang/String;

.field private mJoinType:Lde/greenrobot/dao/join/JoinType;

.field private mQueryBuilder:Lde/greenrobot/dao/query/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSourceProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/query/QueryBuilder;Ljava/lang/String;Lde/greenrobot/dao/join/JoinType;)V
    .locals 0
    .param p2, "joinTable"    # Ljava/lang/String;
    .param p3, "joinType"    # Lde/greenrobot/dao/join/JoinType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lde/greenrobot/dao/join/JoinType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    .local p1, "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mQueryBuilder:Lde/greenrobot/dao/query/QueryBuilder;

    .line 18
    iput-object p2, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTable:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinType:Lde/greenrobot/dao/join/JoinType;

    .line 20
    return-void
.end method

.method private getJoinSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    sget-object v0, Lde/greenrobot/dao/join/JoinBuilder$1;->$SwitchMap$de$greenrobot$dao$join$JoinType:[I

    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinType:Lde/greenrobot/dao/join/JoinType;

    invoke-virtual {v1}, Lde/greenrobot/dao/join/JoinType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const-string v0, "INNER JOIN "

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "LEFT JOIN "

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "CROSS JOIN "

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getJoinToSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "joinTo":Ljava/lang/String;
    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTableAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTableAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTableAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method private getQualitifedColumn(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # Lde/greenrobot/dao/Selectable;

    .prologue
    .line 28
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/join/JoinBuilder;->mQueryBuilder:Lde/greenrobot/dao/query/QueryBuilder;

    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->isMasterTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mQueryBuilder:Lde/greenrobot/dao/query/QueryBuilder;

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->getMasterTablePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lde/greenrobot/dao/Selectable;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public alias(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;
    .locals 0
    .param p1, "joinTableAlias"    # Ljava/lang/String;
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
    .line 23
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    iput-object p1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mJoinTableAlias:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public getJoinClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lde/greenrobot/dao/join/JoinBuilder;->getJoinSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p0}, Lde/greenrobot/dao/join/JoinBuilder;->getJoinToSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mSourceProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mDestProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 2
    .param p1, "sourceProperty"    # Lde/greenrobot/dao/Selectable;
    .param p2, "destProperty"    # Lde/greenrobot/dao/Selectable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Selectable;",
            "Lde/greenrobot/dao/Selectable;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/join/JoinBuilder;->getQualitifedColumn(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lde/greenrobot/dao/join/JoinBuilder;->getQualitifedColumn(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public on(Lde/greenrobot/dao/Selectable;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "sourceProperty"    # Lde/greenrobot/dao/Selectable;
    .param p2, "destProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Selectable;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/join/JoinBuilder;->getQualitifedColumn(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public on(Ljava/lang/String;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "sourceProperty"    # Ljava/lang/String;
    .param p2, "destProperty"    # Lde/greenrobot/dao/Selectable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lde/greenrobot/dao/Selectable;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    invoke-direct {p0, p2}, Lde/greenrobot/dao/join/JoinBuilder;->getQualitifedColumn(Lde/greenrobot/dao/Selectable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "sourceProperty"    # Ljava/lang/String;
    .param p2, "destProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lde/greenrobot/dao/join/JoinBuilder;, "Lde/greenrobot/dao/join/JoinBuilder<TT;>;"
    iput-object p1, p0, Lde/greenrobot/dao/join/JoinBuilder;->mSourceProperty:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lde/greenrobot/dao/join/JoinBuilder;->mDestProperty:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lde/greenrobot/dao/join/JoinBuilder;->mQueryBuilder:Lde/greenrobot/dao/query/QueryBuilder;

    return-object v0
.end method
