.class Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
.super Ljava/lang/Object;
.source "LeaderboardGlobalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wrapper"
.end annotation


# instance fields
.field private company:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private points:Landroid/widget/TextView;

.field private rank:Landroid/widget/TextView;

.field private row:Landroid/view/View;

.field private star:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object p1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 133
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->company:Landroid/widget/TextView;

    .line 139
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    .line 142
    iput-object p2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    .line 143
    return-void
.end method

.method private getCompany()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->company:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->company:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->company:Landroid/widget/TextView;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->company:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)Ljava/lang/String;
    .locals 4
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    .line 162
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mShowEntityId:Z
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$000(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPhoto()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getPoints()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->points:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->points:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->points:Landroid/widget/TextView;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->points:Landroid/widget/TextView;

    return-object v0
.end method

.method private getRank()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->rank:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->rank:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->rank:Landroid/widget/TextView;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->rank:Landroid/widget/TextView;

    return-object v0
.end method

.method private getStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->star:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->star:Landroid/widget/ImageView;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->star:Landroid/widget/ImageView;

    return-object v0
.end method

.method private safeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private toggleMiddleRow()V
    .locals 3

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 262
    .local v0, "a":Z
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public populateFrom(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;I)V
    .locals 8
    .param p1, "visitorObject"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "position"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 203
    if-eqz p1, :cond_4

    .line 204
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getName(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPoints()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getTotalPlayerPoints()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getRank()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getRank()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->row:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->TAG_VISITOR_ID:I

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getStar()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;
    invoke-static {v3}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$100(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/access/Udm;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/access/Udm;->isVisitorFavourite(Ljava/lang/Long;)Z

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    invoke-virtual {v4}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->getDefaultDrawableForFav()I

    move-result v4

    invoke-static {v2, v3, v6, v4}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    .line 219
    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$200(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v2

    invoke-interface {v2}, Lcom/genie_connect/android/db/config/features/GmListModifier;->showThumbnail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;
    invoke-static {v3}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$200(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v3

    invoke-interface {v3}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getPlaceholderAssetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$300(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "defaultThumbnail":Ljava/lang/String;
    const-string v2, "mugShotUrl"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->access$300(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 243
    .end local v0    # "defaultThumbnail":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->toggleMiddleRow()V

    .line 249
    :goto_2
    return-void

    .line 228
    .restart local v0    # "defaultThumbnail":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 233
    :cond_1
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 240
    .end local v0    # "defaultThumbnail":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getPoints()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
