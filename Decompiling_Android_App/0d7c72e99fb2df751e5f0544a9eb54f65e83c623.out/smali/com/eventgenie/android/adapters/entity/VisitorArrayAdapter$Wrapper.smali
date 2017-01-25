.class Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
.super Ljava/lang/Object;
.source "VisitorArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wrapper"
.end annotation


# instance fields
.field private company:Landroid/widget/TextView;

.field private favStar:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private row:Landroid/view/View;

.field final synthetic this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 192
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->company:Landroid/widget/TextView;

    .line 193
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    .line 194
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    .line 195
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->favStar:Landroid/widget/ImageView;

    .line 198
    iput-object p2, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    .line 199
    return-void
.end method

.method private optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getCompany()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->company:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->company:Landroid/widget/TextView;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->company:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFavouriteStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->favStar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->favStar:Landroid/widget/ImageView;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->favStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public populateFrom(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 17
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/access/DbNotes;->getVisitorsWithNotes()Ljava/util/ArrayList;

    move-result-object v14

    # setter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorsWithNotes:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$002(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 240
    if-eqz p1, :cond_5

    .line 241
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "firstNames"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "lastNames"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "name":Ljava/lang/String;
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 245
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mShowEntityId:Z
    invoke-static {v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$200(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v13

    invoke-static {v6, v7, v9}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getFavouriteStar()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$300(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/access/Udm;

    move-result-object v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/genie_connect/android/db/access/Udm;->isVisitorFavourite(Ljava/lang/Long;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorsWithNotes:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$000(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->getDefaultDrawableForFav()I

    move-result v16

    invoke-static/range {v13 .. v16}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "companyRestricted":Z
    const/4 v5, 0x0

    .line 260
    .local v5, "mugshotRestricted":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genie_connect/common/utils/Pair;

    .line 261
    .local v10, "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    const-string/jumbo v13, "visitorGroup"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 263
    .local v12, "visitorGroup":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 264
    invoke-virtual {v10}, Lcom/genie_connect/common/utils/Pair;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "name"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 265
    invoke-virtual {v10}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v13, v14, :cond_2

    .line 266
    const/4 v2, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "companyRestricted":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mugshotRestricted":Z
    .end local v10    # "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    .end local v12    # "visitorGroup":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    .restart local v2    # "companyRestricted":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mugshotRestricted":Z
    .restart local v10    # "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    .restart local v12    # "visitorGroup":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v10}, Lcom/genie_connect/common/utils/Pair;->second()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    if-ne v13, v14, :cond_0

    .line 268
    const/4 v5, 0x1

    goto :goto_1

    .line 274
    .end local v10    # "restriction":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    .end local v12    # "visitorGroup":Lorg/json/JSONObject;
    :cond_3
    if-nez v2, :cond_6

    const-string v13, "companyName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v13

    const-string v14, "companyName"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->showThumbnail()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getVersion()I

    move-result v13

    if-nez v13, :cond_8

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v13

    sget v14, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    const-string v13, "mugShotUrl"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v5, :cond_4

    .line 286
    const-string v13, "mugShotUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 288
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v11, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 317
    .end local v11    # "value":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # invokes: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->isThisVisitorMe(J)Z
    invoke-static {v13, v6, v7}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$500(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;J)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/eventgenie/android/R$color;->search_myself_color:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 323
    .end local v2    # "companyRestricted":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mugshotRestricted":Z
    .end local v6    # "id":J
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    :goto_4
    return-void

    .line 277
    .restart local v2    # "companyRestricted":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mugshotRestricted":Z
    .restart local v6    # "id":J
    .restart local v9    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 290
    .restart local v11    # "value":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_3

    .line 294
    .end local v11    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v13

    sget v14, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "defaultThumbnail":Ljava/lang/String;
    const-string v13, "mugShotUrl"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v5, :cond_9

    .line 299
    const-string v13, "mugShotUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "mugshotUrl":Ljava/lang/String;
    :goto_5
    invoke-static {v8}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 305
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 301
    .end local v8    # "mugshotUrl":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "mugshotUrl":Ljava/lang/String;
    goto :goto_5

    .line 306
    :cond_a
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 307
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_3

    .line 309
    :cond_b
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto/16 :goto_3

    .line 313
    .end local v3    # "defaultThumbnail":Ljava/lang/String;
    .end local v8    # "mugshotUrl":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 320
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->row:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->access$100(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/eventgenie/android/R$color;->white:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4
.end method
