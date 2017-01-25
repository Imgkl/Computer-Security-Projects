.class public Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
.super Ljava/lang/Object;
.source "TreeNodeGsonModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "children"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private data:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private transient isEntityRelatedTag:Z

.field private transient parent:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private parentId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parentId"
    .end annotation
.end field

.field private selected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selected"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "data":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isEntityRelatedTag:Z

    .line 28
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->data:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public addChild(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;, "TT;"
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    .line 34
    .local v0, "childNode":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setParent(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 36
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v0
.end method

.method public addChild(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;)",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    invoke-virtual {p1, p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setParent(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 43
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    return-object v0
.end method

.method public getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->data:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    return-object v0
.end method

.method public getParent()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->parent:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->parentId:J

    return-wide v0
.end method

.method public hasAnyNodeChecked()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    const/4 v2, 0x1

    .line 141
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 146
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasAnyNodeChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 151
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    const/4 v0, 0x1

    .line 77
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :cond_1
    return v0
.end method

.method public isAnythingSelected()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    :goto_0
    return v2

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 90
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isAnythingSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 96
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEntityRelatedTag()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isEntityRelatedTag:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->selected:Z

    return v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;>;"
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->children:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setData(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "data":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;, "TT;"
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->data:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    .line 113
    return-void
.end method

.method public setEntityRelatedTag(Z)V
    .locals 0
    .param p1, "isEntityRelatedTag"    # Z

    .prologue
    .line 116
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iput-boolean p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isEntityRelatedTag:Z

    .line 117
    return-void
.end method

.method public setParent(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    .local p1, "parent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->parent:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 129
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->parentId:J

    .line 130
    return-void
.end method

.method public setParentId(J)V
    .locals 1
    .param p1, "parentId"    # J

    .prologue
    .line 133
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iput-wide p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->parentId:J

    .line 134
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 137
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<TT;>;"
    iput-boolean p1, p0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->selected:Z

    .line 138
    return-void
.end method
