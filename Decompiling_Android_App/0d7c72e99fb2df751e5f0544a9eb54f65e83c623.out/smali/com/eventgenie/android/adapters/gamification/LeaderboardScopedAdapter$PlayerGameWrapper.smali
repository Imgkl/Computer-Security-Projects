.class Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;
.super Ljava/lang/Object;
.source "LeaderboardScopedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerGameWrapper"
.end annotation


# instance fields
.field private company:Landroid/widget/TextView;

.field private from:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private points:Landroid/widget/TextView;

.field private rank:Landroid/widget/TextView;

.field private row:Landroid/view/View;

.field private star:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

.field private to:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;Landroid/view/View;Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;
    .param p3, "s"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->name:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->company:Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->from:Landroid/widget/TextView;

    .line 113
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->to:Landroid/widget/TextView;

    .line 119
    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    .line 123
    iput-object p2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    .line 125
    return-void
.end method

.method private getCompany()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->company:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->company:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->company:Landroid/widget/TextView;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->company:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFrom()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->from:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->from:Landroid/widget/TextView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->from:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->name:Landroid/widget/TextView;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)Ljava/lang/String;
    .locals 4
    .param p1, "playerGame"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mShowEntityId:Z
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$000(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPhoto()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->photo:Landroid/widget/ImageView;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getPoints()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->points:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->points:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->points:Landroid/widget/TextView;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->points:Landroid/widget/TextView;

    return-object v0
.end method

.method private getRank()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->rank:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->rank:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->rank:Landroid/widget/TextView;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->rank:Landroid/widget/TextView;

    return-object v0
.end method

.method private getStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->star:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->star:Landroid/widget/ImageView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->star:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTo()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->to:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->to:Landroid/widget/TextView;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->to:Landroid/widget/TextView;

    return-object v0
.end method

.method private safeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private setFeatured(Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;)V
    .locals 2
    .param p1, "game"    # Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;->isFeatured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private toggleMiddleRow()V
    .locals 4

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getFrom()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 271
    .local v0, "a":Z
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getTo()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v1

    .line 273
    .local v1, "b":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method populateFrom(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;I)V
    .locals 10
    .param p1, "playerGame"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .param p2, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 205
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityType:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$100(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "games"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getTotalGamePoints()J

    move-result-wide v2

    .line 213
    .local v2, "progress":J
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPoints()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getName()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getName(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getRank()Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getRank()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getGame()Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->setFeatured(Lcom/genie_connect/android/net/container/gson/entities/GameGsonModel;)V

    .line 220
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->row:Landroid/view/View;

    sget v4, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->TAG_VISITOR_ID:I

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getStar()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$300(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/access/Udm;

    move-result-object v4

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/access/Udm;->isVisitorFavourite(Ljava/lang/Long;)Z

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    invoke-virtual {v5}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->getDefaultDrawableForFav()I

    move-result v5

    invoke-static {v1, v4, v8, v5}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    .line 228
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$400(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->showThumbnail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$400(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v4

    invoke-interface {v4}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getPlaceholderAssetId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    const-string v1, "mugShotUrl"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-static {v5}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$500(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "mugshotUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 249
    .end local v0    # "mugshotUrl":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->toggleMiddleRow()V

    .line 251
    return-void

    .line 207
    .end local v2    # "progress":J
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityType:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$100(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "trophies"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->this$0:Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    # getter for: Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityId:J
    invoke-static {v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->access$200(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getScoreForTrophy(J)J

    move-result-wide v2

    .restart local v2    # "progress":J
    goto/16 :goto_0

    .line 210
    .end local v2    # "progress":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "progress":J
    goto/16 :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "mugshotUrl":Ljava/lang/String;
    goto :goto_1

    .line 243
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 246
    .end local v0    # "mugshotUrl":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
