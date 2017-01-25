.class Lcom/eventgenie/android/adapters/entity/NotesAdapter;
.super Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;
.source "NotesAdapter.java"


# static fields
.field private static final ENTITY:Ljava/lang/String; = "entity"


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
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 67
    invoke-virtual/range {p7 .. p7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;)V

    .line 69
    invoke-virtual/range {p7 .. p7}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 70
    return-void
.end method

.method private applyRestrictions(Luk/co/alt236/easycursor/EasyCursor;Landroid/view/View;)V
    .locals 12
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 108
    sget v8, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "descriptionView":Landroid/view/View;
    sget v8, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 111
    .local v5, "mugshotView":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 112
    .local v0, "descriptionRestricted":Z
    const/4 v3, 0x0

    .line 114
    .local v3, "mugshotRestricted":Z
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v8

    const-class v9, Lcom/genie_connect/android/repository/VisitorRepository;

    invoke-virtual {v8, v9}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genie_connect/android/repository/VisitorRepository;

    const-string v9, "entityId"

    invoke-interface {p1, v9}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/genie_connect/android/repository/VisitorRepository;->getVisitorGroupForVisitor(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "visitorGroup":Ljava/lang/String;
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->getViewRestrictions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/common/utils/Pair;

    .line 118
    .local v6, "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    if-eqz v7, :cond_0

    .line 119
    invoke-virtual {v6}, Lcom/genie_connect/common/utils/Pair;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    invoke-virtual {v6}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v8, v9, :cond_1

    .line 121
    const/4 v0, 0x1

    .line 124
    :cond_1
    invoke-virtual {v6}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v8, v9, :cond_0

    .line 125
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    .end local v6    # "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 132
    if-eqz v0, :cond_5

    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_3
    if-eqz v5, :cond_4

    .line 137
    const-string v8, "image"

    invoke-interface {p1, v8}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "mugshotUrl":Ljava/lang/String;
    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 140
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 145
    .end local v4    # "mugshotUrl":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 132
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 142
    .restart local v4    # "mugshotUrl":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2
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
    .line 75
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mViewRestrictions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v0

    .line 79
    .local v0, "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    if-nez v0, :cond_1

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mViewRestrictions:Ljava/util/List;

    .line 86
    .end local v0    # "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mViewRestrictions:Ljava/util/List;

    return-object v1

    .line 82
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

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->mViewRestrictions:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 96
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 98
    const-string v1, "entity"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visitors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->applyRestrictions(Luk/co/alt236/easycursor/EasyCursor;Landroid/view/View;)V

    .line 103
    :cond_0
    return-object p2
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    const-string v1, "entity"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->getModifier(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;->setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method
