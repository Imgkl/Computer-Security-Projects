.class public Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "TagV2GsonModel.java"

# interfaces
.implements Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;


# instance fields
.field private children:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "children"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isRootParent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRootParent"
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field private noChildren:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noChildren"
    .end annotation
.end field

.field private parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent"
    .end annotation
.end field

.field private parentId:J

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private relatedTags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relatedTags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/Long;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "isRootParent"    # Z
    .param p6, "noChildren"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->id:J

    .line 85
    iput-object p2, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->label:Ljava/lang/String;

    .line 86
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    .line 87
    invoke-virtual {p0, p4}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->setPath(Ljava/lang/String;)V

    .line 88
    iput-boolean p5, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent:Z

    .line 89
    iput p6, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->noChildren:I

    .line 90
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 2
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    .line 74
    const-string v0, "id"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->id:J

    .line 75
    const-string v0, "label"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->label:Ljava/lang/String;

    .line 76
    const-string v0, "parent"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    .line 77
    const-string v0, "path"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->setPath(Ljava/lang/String;)V

    .line 78
    const-string v0, "isRootParent"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent:Z

    .line 79
    const-string v0, "noChildren"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->noChildren:I

    .line 80
    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->children:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->id:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNoChildren()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->noChildren:I

    return v0
.end method

.method public getParent()Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    return-object v0
.end method

.method public getParentId()J
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v0

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->relatedTags:Ljava/util/List;

    return-object v0
.end method

.method public isRootParent()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent:Z

    return v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->path:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagV2GsonModel [children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRootParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->noChildren:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parent:Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->parentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relatedTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->relatedTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
