.class Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;
.super Ljava/lang/Object;
.source "PlayerComparisonActivityHelper.java"


# instance fields
.field private final areMugshotsVisible:Z

.field private final mContext:Landroid/content/Context;

.field private final mDescLeft:Landroid/widget/TextView;

.field private final mDescRight:Landroid/widget/TextView;

.field private final mEntityId:J

.field private final mEntityName:Ljava/lang/String;

.field private final mGameStore:Lcom/genie_connect/android/db/access/GameStore;

.field private mMyVisitorMugshotUrl:Ljava/lang/String;

.field private final mNameLeft:Landroid/widget/TextView;

.field private final mNameRight:Landroid/widget/TextView;

.field private mOpponentMugshotUrl:Ljava/lang/String;

.field private final mPhotoLeft:Landroid/widget/ImageView;

.field private final mPhotoRight:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;J)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;
    .param p2, "entityName"    # Ljava/lang/String;
    .param p3, "entityId"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "mugShotUrl"

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->areMugshotsVisible:Z

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-wide p3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityId:J

    .line 86
    iput-object p2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    .line 89
    sget v0, Lcom/eventgenie/android/R$id;->name1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameLeft:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/eventgenie/android/R$id;->desc1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescLeft:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/eventgenie/android/R$id;->photo1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mPhotoLeft:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/eventgenie/android/R$id;->name2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameRight:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/eventgenie/android/R$id;->desc2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescRight:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/eventgenie/android/R$id;->photo2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mPhotoRight:Landroid/widget/ImageView;

    .line 96
    return-void
.end method

.method private showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "line1"    # Ljava/lang/String;
    .param p3, "line2"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    if-nez p2, :cond_0

    const-string p2, ""

    .line 208
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 210
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    const-string v2, "photo_number"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v2, "photoset_desc_1"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "photoset_desc_2"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "extra_hide_view_original"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->photo1:I

    if-ne v2, v3, :cond_2

    .line 189
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mMyVisitorMugshotUrl:Ljava/lang/String;

    .line 190
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameLeft:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "name":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const-string v2, ""

    invoke-direct {p0, v1, v0, v2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->photo2:I

    if-ne v2, v3, :cond_3

    .line 192
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mOpponentMugshotUrl:Ljava/lang/String;

    .line 193
    .restart local v1    # "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameRight:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 196
    .restart local v1    # "url":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_1
.end method

.method public populateMyOpponentSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;JLcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V
    .locals 10
    .param p1, "obj"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "appLevelScore"    # J
    .param p4, "row"    # Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .prologue
    const/4 v7, 0x1

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "scoreString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 141
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->areMugshotsVisible:Z

    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mOpponentMugshotUrl:Ljava/lang/String;

    .line 147
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameRight:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mOpponentMugshotUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mPhotoRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 151
    :cond_0
    if-eqz p4, :cond_1

    .line 155
    invoke-virtual {p4}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightPlayerGameObject()Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;-><init>()V

    .line 159
    .local v0, "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :goto_1
    const-string v4, "apps"

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    move-wide v2, p2

    .line 169
    .local v2, "score":J
    :goto_2
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v0    # "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v2    # "score":J
    :cond_1
    if-eqz v1, :cond_2

    .line 177
    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescRight:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_2
    return-void

    .line 144
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mOpponentMugshotUrl:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p4}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightPlayerGameObject()Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    move-result-object v0

    goto :goto_1

    .line 161
    .restart local v0    # "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :cond_5
    const-string v4, "games"

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 162
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getTotalGamePoints()J

    move-result-wide v2

    .restart local v2    # "score":J
    goto :goto_2

    .line 163
    .end local v2    # "score":J
    :cond_6
    const-string/jumbo v4, "trophies"

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    iget-wide v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityId:J

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getScoreForTrophy(J)J

    move-result-wide v2

    .restart local v2    # "score":J
    goto :goto_2

    .line 166
    .end local v2    # "score":J
    :cond_7
    const-wide/16 v2, -0x1

    .restart local v2    # "score":J
    goto :goto_2
.end method

.method public populateMyVisitorSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 9
    .param p1, "obj"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    const/4 v8, 0x1

    .line 101
    const-string v3, "apps"

    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GameStore;->getTotalScore()I

    move-result v3

    int-to-long v0, v3

    .line 111
    .local v0, "score":J
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "scoreString":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->areMugshotsVisible:Z

    if-eqz v3, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mMyVisitorMugshotUrl:Ljava/lang/String;

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mNameLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mDescLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mMyVisitorMugshotUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mPhotoLeft:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 124
    return-void

    .line 103
    .end local v0    # "score":J
    .end local v2    # "scoreString":Ljava/lang/String;
    :cond_0
    const-string v3, "games"

    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityId:J

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/GameStore;->getMyScoreForGame(J)I

    move-result v3

    int-to-long v0, v3

    .restart local v0    # "score":J
    goto :goto_0

    .line 105
    .end local v0    # "score":J
    :cond_1
    const-string/jumbo v3, "trophies"

    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mEntityId:J

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/GameStore;->getMyScoreForTrophy(J)I

    move-result v3

    int-to-long v0, v3

    .restart local v0    # "score":J
    goto :goto_0

    .line 108
    .end local v0    # "score":J
    :cond_2
    const-wide/16 v0, -0x1

    .restart local v0    # "score":J
    goto :goto_0

    .line 118
    .restart local v2    # "scoreString":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->mMyVisitorMugshotUrl:Ljava/lang/String;

    goto :goto_1
.end method
