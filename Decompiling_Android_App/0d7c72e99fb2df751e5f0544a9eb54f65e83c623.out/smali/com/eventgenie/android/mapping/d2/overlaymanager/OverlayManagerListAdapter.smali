.class public Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OverlayManagerListAdapter.java"


# instance fields
.field private final mConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mItems:Ljava/util/List;

    .line 58
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    .line 59
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_exhibitor_map:I

    iput v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mLayoutId:I

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 79
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .line 85
    .local v1, "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    if-nez p2, :cond_1

    .line 86
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mLayoutId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, "v":Landroid/view/View;
    :goto_0
    sget v5, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    .local v0, "fav":Landroid/widget/ImageView;
    sget v5, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, "name":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$id;->logo:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .local v2, "logo":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v5, v6, :cond_2

    .line 98
    :cond_0
    sget v5, Lcom/eventgenie/android/R$drawable;->ic_three_dots:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_1
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->isFavourite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :goto_2
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 127
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    return-object v4

    .line 88
    .end local v0    # "fav":Landroid/widget/ImageView;
    .end local v2    # "logo":Landroid/widget/ImageView;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_0

    .line 100
    .restart local v0    # "fav":Landroid/widget/ImageView;
    .restart local v2    # "logo":Landroid/widget/ImageView;
    .restart local v3    # "name":Landroid/widget/TextView;
    :cond_2
    sget v5, Lcom/eventgenie/android/R$drawable;->ic_action_blue_important:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 117
    :cond_4
    iget-object v5, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v5

    invoke-interface {v5}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 118
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;->mConfig:Lcom/genie_connect/android/db/config/FeatureConfig;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 123
    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_3
.end method
