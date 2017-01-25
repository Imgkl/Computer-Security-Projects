.class public final Lcom/genie_connect/android/db/access/GenieQueryBuilder;
.super Ljava/lang/Object;
.source "GenieQueryBuilder.java"

# interfaces
.implements Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;,
        Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;
    }
.end annotation


# static fields
.field private static final COLLATE:Ljava/lang/String; = "COLLATE"

.field private static final COMMA:C = ','

.field private static final KEYWORD_AS:Ljava/lang/String; = " AS "

.field private static final KEYWORD_ON:Ljava/lang/String; = " ON "

.field private static final LEFT_OUTER_JOIN:Ljava/lang/String; = "LEFT OUTER JOIN"

.field private static final PERIOD:C = '.'

.field private static final SPACE:C = ' '

.field private static final WHERE_AND:Ljava/lang/String; = " AND "

.field private static final WHERE_OR:Ljava/lang/String; = " OR "


# instance fields
.field private mDistinct:Z

.field private final mGroupBy:Ljava/lang/StringBuilder;

.field private final mHaving:Ljava/lang/StringBuilder;

.field private final mJoins:Ljava/lang/StringBuilder;

.field private mLimit:Ljava/lang/String;

.field private final mOrderBy:Ljava/lang/StringBuilder;

.field private final mSelect:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrict:Z

.field private final mTables:Ljava/lang/StringBuilder;

.field private final mWhere:Ljava/lang/StringBuilder;

.field private final mWhereArgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mHaving:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    .line 75
    return-void
.end method

.method private static addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "addCommaToo"    # Z

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 332
    if-eqz p1, :cond_0

    .line 333
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    return-void
.end method

.method private static putBrackets(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 342
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-object p0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 3
    .param p1, "colName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object p0

    .line 85
    :cond_1
    if-eqz p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "colName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object p0

    .line 92
    :cond_1
    if-eqz p3, :cond_0

    .line 93
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addColumns(Ljava/util/Collection;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/genie_connect/android/db/access/GenieQueryBuilder;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public addColumns([Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 2
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-object p0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public addGroupBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-object p0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 112
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addHaving(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-object p0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mHaving:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 119
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mHaving:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "on"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 125
    return-object p0
.end method

.method public addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "on"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 129
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object p0

    .line 130
    :cond_1
    if-eqz p3, :cond_0

    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 134
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    const-string v1, "LEFT OUTER JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    if-eqz p2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->putBrackets(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0, v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 152
    return-object p0
.end method

.method public addOrderBy(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "collation"    # Ljava/lang/String;
    .param p3, "order"    # Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    .prologue
    const/16 v2, 0x20

    .line 156
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object p0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    if-eqz p2, :cond_2

    .line 163
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    const-string v1, "COLLATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    if-eqz p3, :cond_0

    .line 170
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 179
    return-object p0
.end method

.method public addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object p0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 185
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public varargs addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 6
    .param p1, "link"    # Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    :cond_0
    return-object p0

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz p1, :cond_2

    .line 203
    iget-object v4, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->putBrackets(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 208
    if-eqz p3, :cond_0

    .line 209
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 210
    .local v0, "arg":Ljava/lang/String;
    iget-object v4, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs addWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Luk/co/alt236/easycursor/EasyQueryModel;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    return-object v0
.end method

.method public build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    invoke-direct {v0, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 223
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 229
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 230
    return-void
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mGroupBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelect()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTables()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 273
    :goto_0
    return-object v1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 273
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWhereArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public isDistinct()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mDistinct:Z

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mStrict:Z

    return v0
.end method

.method public setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mDistinct:Z

    .line 300
    return-object p0
.end method

.method public setLimit(I)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 304
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mLimit:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public setLimit(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 0
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mLimit:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setStrict(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mStrict:Z

    .line 315
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasySelectQueryBuilder [mSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mTables:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJoins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mJoins:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWhereArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mWhereArgs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->mOrderBy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
