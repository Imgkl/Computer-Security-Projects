.class public Lcom/genie_connect/android/db/access/TagsV2QueryHelper;
.super Ljava/lang/Object;
.source "TagsV2QueryHelper.java"


# static fields
.field private static final OR:Ljava/lang/String; = " OR "

.field public static final TITLE_DATA_SEPARATOR:Ljava/lang/String; = "%%"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDirtyQueryLogic(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/lang/String;
    .locals 5
    .param p0, "compareTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "nodeRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const-string v2, ""

    .line 20
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_0
    return-object v2

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 25
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addDirtyQueryLogic(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addDirtyQueryLogic(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static addIds(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V
    .locals 6
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 39
    const-string v3, "^ DbTagsV2 addIds [%s] = %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 46
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v0, p1, p2}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addIds(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V

    goto :goto_0

    .line 48
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_2
    return-void
.end method

.method public static addIdsCategoriesCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V
    .locals 6
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 176
    const-string v3, "^ DbTagsV2 addIdsCategorieCompat [%s] = %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getParentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 184
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v0, p1, p2}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addIdsCategoriesCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V

    goto :goto_0

    .line 186
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_2
    return-void
.end method

.method public static allChildrenSelected(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "node":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v2, 0x1

    .line 74
    .local v2, "ret":Z
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 76
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const/4 v2, 0x0

    .line 82
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private static cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ret"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "AND"

    aput-object v1, v0, v3

    const-string v1, "OR"

    aput-object v1, v0, v4

    .line 89
    .local v0, "prefixes":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    aget-object v1, v0, v3

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 94
    :cond_1
    aget-object v1, v0, v4

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    :cond_3
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 106
    :cond_5
    return-object p0
.end method

.method public static getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)Ljava/util/List;
    .locals 1
    .param p1, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 145
    invoke-static {p0, v0, p1}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addIds(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public static getSelectedTagsListFromTreeCategorieCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTreeCategorieCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedTagsListFromTreeCategorieCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)Ljava/util/List;
    .locals 1
    .param p1, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 209
    invoke-static {p0, v0, p1}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addIdsCategoriesCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/List;Z)V

    .line 211
    :cond_0
    return-object v0
.end method

.method public static getWhereOredSubtrees(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/Collection;
    .locals 7
    .param p0, "compareTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "oredSubtrees":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 56
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/String;

    .line 59
    .local v0, "hierarchies":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-static {p0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->addDirtyQueryLogic(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 61
    aget-object v4, v0, v1

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    aget-object v4, v0, v1

    const/4 v5, 0x0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 64
    :cond_0
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "hierarchies":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return-object v3
.end method

.method public static markAsValid(Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 152
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setEntityRelatedTag(Z)V

    .line 159
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 156
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {p0, v0}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->markAsValid(Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0
.end method
