.class Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;
.super Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;
.source "GamificationCursorBaseAdapter.java"


# instance fields
.field private final mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

.field private final mGameStore:Lcom/genie_connect/android/db/access/GameStore;

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
    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;)V

    .line 69
    iput-object p7, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    .line 71
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mShowEntityId:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected getGameStore()Lcom/genie_connect/android/db/access/GameStore;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    return-object v0
.end method

.method protected getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 86
    return-object p2
.end method

.method protected setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "modifier"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p2, "v"    # Landroid/widget/ImageView;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->showThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getVersion()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getPlaceholderAssetId()I

    move-result v0

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
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

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
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mFeatureConfig:Lcom/genie_connect/android/db/config/features/GmListModifier;

    invoke-virtual {p0, v0, p1, p2}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v3

    int-to-long v0, v3

    .line 122
    .local v0, "id":J
    sget v3, Lcom/eventgenie/android/R$id;->location:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 123
    sget-object v3, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    invoke-static {v3, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "textToAdd":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    return-void

    .line 124
    .end local v2    # "textToAdd":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/eventgenie/android/R$id;->type:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 125
    sget-object v3, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    invoke-static {v3, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "textToAdd":Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v2    # "textToAdd":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/eventgenie/android/R$id;->name:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 127
    iget-boolean v3, p0, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->mShowEntityId:Z

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, p2}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "textToAdd":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v2    # "textToAdd":Ljava/lang/String;
    :cond_2
    move-object v2, p2

    .restart local v2    # "textToAdd":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v2    # "textToAdd":Ljava/lang/String;
    :cond_3
    move-object v2, p2

    .restart local v2    # "textToAdd":Ljava/lang/String;
    goto :goto_0

    .line 139
    :cond_4
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected toggleMiddleRow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    sget v2, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 145
    .local v0, "a":Z
    sget v2, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v1

    .line 147
    .local v1, "b":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
