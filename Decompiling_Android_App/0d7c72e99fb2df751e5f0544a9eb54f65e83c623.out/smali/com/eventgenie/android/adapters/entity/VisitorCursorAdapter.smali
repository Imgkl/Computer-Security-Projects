.class Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;
.super Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
.source "VisitorCursorAdapter.java"


# instance fields
.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private mViewRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "featureConfig"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p8, "namespace"    # J

    .prologue
    .line 58
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 60
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 61
    return-void
.end method

.method private getViewRestrictions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mViewRestrictions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v0

    .line 71
    .local v0, "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    if-nez v0, :cond_1

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mViewRestrictions:Ljava/util/List;

    .line 78
    .end local v0    # "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mViewRestrictions:Ljava/util/List;

    return-object v1

    .line 74
    .restart local v0    # "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_1
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->getAllViewRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mViewRestrictions:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    const-string v11, "id"

    invoke-interface {v10, v11}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    sget v10, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "companyNameView":Landroid/view/View;
    sget v10, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 88
    .local v7, "mugshotView":Landroid/widget/ImageView;
    sget v10, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "descriptionView":Landroid/view/View;
    const/4 v1, 0x0

    .line 91
    .local v1, "companyRestricted":Z
    const/4 v5, 0x0

    .line 92
    .local v5, "mugshotRestricted":Z
    const/4 v2, 0x0

    .line 94
    .local v2, "descriptionRestricted":Z
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->getViewRestrictions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genie_connect/common/utils/Pair;

    .line 95
    .local v8, "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    invoke-interface {v10, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    const-string/jumbo v11, "visitorGroup"

    invoke-interface {v10, v11}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "visitorGroup":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 100
    invoke-virtual {v8}, Lcom/genie_connect/common/utils/Pair;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 101
    invoke-virtual {v8}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v10, v11, :cond_1

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v8}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v10, v11, :cond_2

    .line 104
    const/4 v5, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v8}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v10, v11, :cond_0

    .line 106
    const/4 v2, 0x1

    goto :goto_0

    .line 112
    .end local v8    # "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    .end local v9    # "visitorGroup":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    if-eqz v1, :cond_7

    const/16 v10, 0x8

    :goto_1
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_4
    if-eqz v7, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    const-string v11, "mugShotUrl"

    invoke-interface {v10, v11}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "mugshotUrl":Ljava/lang/String;
    if-nez v5, :cond_8

    if-eqz v6, :cond_8

    .line 121
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 127
    .end local v6    # "mugshotUrl":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 128
    if-eqz v2, :cond_9

    const/16 v10, 0x8

    :goto_3
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_6
    return-object p2

    .line 113
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 123
    .restart local v6    # "mugshotUrl":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 128
    .end local v6    # "mugshotUrl":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto :goto_3
.end method
