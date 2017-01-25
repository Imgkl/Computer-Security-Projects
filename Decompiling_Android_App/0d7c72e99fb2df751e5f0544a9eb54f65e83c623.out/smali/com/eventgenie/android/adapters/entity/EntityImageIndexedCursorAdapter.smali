.class public Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
.super Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;
.source "EntityImageIndexedCursorAdapter.java"


# instance fields
.field private final mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

.field private final mShowEntityId:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "featureConfig"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p8, "namespace"    # J

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;)V

    .line 65
    iput-object p7, p0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 66
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->mShowEntityId:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 75
    const-string v1, "id"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 78
    :goto_0
    return-wide v2

    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 85
    return-object p2
.end method

.method protected setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "modifier"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p2, "v"    # Landroid/widget/ImageView;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->showThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :goto_0
    invoke-static {p3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 107
    :goto_1
    return-void

    .line 94
    :cond_0
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getPlaceholderAssetId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 105
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

    invoke-virtual {p0, v0, p1, p2}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->mShowEntityId:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toggleMiddleRow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    sget v2, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 132
    .local v0, "a":Z
    sget v2, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v1

    .line 134
    .local v1, "b":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
