.class public Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
.super Ljava/lang/Object;
.source "TagsV2QueryBuilder.java"


# static fields
.field private static final COMMA:C = ','

.field public static final NO_LIMIT:I = -0x1

.field private static final SPACE:C = ' '

.field private static final WHERE:Ljava/lang/String; = " WHERE "


# instance fields
.field private final mAdditionalJoins:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBy:Ljava/lang/String;

.field private mIsDistinct:Z

.field private mLimit:I

.field private final mMainTable:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mSearchTerm:Ljava/lang/String;

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

.field private mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSelect:Ljava/util/Collection;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mAdditionalJoins:Ljava/util/Collection;

    .line 34
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mMainTable:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSelect:Ljava/util/Collection;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mAdditionalJoins:Ljava/util/Collection;

    .line 40
    iput-object p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mMainTable:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 43
    return-void
.end method

.method private static addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "addCommaToo"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    return-void
.end method

.method private buildSingleQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x29

    const/16 v9, 0x28

    const/4 v7, 0x0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "SELECT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v4, v7}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 109
    iget-boolean v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mIsDistinct:Z

    if-eqz v6, :cond_0

    .line 110
    const-string v6, "DISTINCT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 114
    .local v0, "first":Z
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    .local v5, "selects":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v4, v6}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    :cond_1
    move v6, v7

    .line 115
    goto :goto_1

    .line 120
    .end local v5    # "selects":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " FROM "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mMainTable:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mAdditionalJoins:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "join":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSpaceIfNeeded(Ljava/lang/StringBuilder;Z)V

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    .end local v3    # "join":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSearchTerm:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 128
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    .line 129
    .local v1, "hasPath":Z
    const-string v6, " WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_4
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v1, :cond_5

    .line 137
    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .end local v1    # "hasPath":Z
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 144
    :cond_6
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    const-string v6, " WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static varargs buildWhereStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "queryArgs"    # [Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "methodResult":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 185
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 187
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/DbHelper;->replaceQuestionMarksWithArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addGroupBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mGroupBy:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 1
    .param p1, "join"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mAdditionalJoins:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-object p0
.end method

.method public addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 1
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mOrderBy:Ljava/lang/String;

    .line 56
    :cond_0
    return-object p0
.end method

.method public addSearchTerm(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSearchTerm:Ljava/lang/String;

    .line 63
    :cond_0
    return-object p0
.end method

.method public addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mSelect:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "path LIKE "

    iget-object v7, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-static {v6, v7}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getWhereOredSubtrees(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/Collection;

    move-result-object v4

    .line 76
    .local v4, "pathWheres":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->buildSingleQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 81
    const-string v6, " INTERSECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 83
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->buildSingleQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mGroupBy:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    const-string v6, " GROUP BY %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mGroupBy:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    iget-object v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mOrderBy:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    const-string v6, " ORDER BY %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mOrderBy:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_4
    iget v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mLimit:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mLimit:I

    if-lez v6, :cond_5

    .line 98
    const-string v6, " LIMIT %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mLimit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public setDistinct(Z)V
    .locals 0
    .param p1, "isDistinct"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mIsDistinct:Z

    .line 175
    return-void
.end method

.method public setLimit(I)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mLimit:I

    .line 69
    return-object p0
.end method

.method public setTagTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    iput-object p1, p0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 170
    return-object p0
.end method
