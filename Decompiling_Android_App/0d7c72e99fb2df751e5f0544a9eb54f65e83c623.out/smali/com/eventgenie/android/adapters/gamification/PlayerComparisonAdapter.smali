.class Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlayerComparisonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGameStore:Lcom/genie_connect/android/db/access/GameStore;

.field private final mLayoutId:I

.field private final mUdm:Lcom/genie_connect/android/db/access/Udm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;JILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "namespace"    # J
    .param p5, "layout"    # I
    .param p6, "entity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    invoke-direct {p0, p1, p5, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 64
    iput p5, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mLayoutId:I

    .line 65
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PLAYERCOMPAREADAPTER: Data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 68
    return-void

    .line 67
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private doProgressBars(Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V
    .locals 10
    .param p1, "pb1"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p2, "pb2"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p3, "item"    # Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 71
    sget-object v0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1, v6}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 96
    invoke-virtual {p2, v6}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 113
    :goto_1
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p1, v6}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 74
    invoke-virtual {p2, v6}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 78
    invoke-virtual {p2, v3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 80
    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftNormalisedValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v4

    invoke-virtual {v2, v8, v9, v4, v5}, Lcom/genie_connect/android/db/access/GameStore;->getColourForGame(JJ)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JI)V

    .line 85
    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightNormalisedValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightProgressValue()J

    move-result-wide v4

    invoke-virtual {v2, v8, v9, v4, v5}, Lcom/genie_connect/android/db/access/GameStore;->getColourForGame(JJ)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JI)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1, v3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 99
    invoke-virtual {p2, v3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 101
    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftMaxValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftProgressValue()J

    move-result-wide v6

    invoke-virtual {v0, v8, v9, v6, v7}, Lcom/genie_connect/android/db/access/GameStore;->getColourForGame(JJ)I

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V

    .line 107
    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightProgressValue()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightMaxValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {p3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightProgressValue()J

    move-result-wide v6

    invoke-virtual {v0, v8, v9, v6, v7}, Lcom/genie_connect/android/db/access/GameStore;->getColourForGame(JJ)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static doRowImage(Landroid/widget/ImageView;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V
    .locals 5
    .param p0, "rowImage"    # Landroid/widget/ImageView;
    .param p1, "item"    # Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v3, v4, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRowImage()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "value":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 142
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 122
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 125
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 127
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRowImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/db/config/IconManager;->getTrophyIconResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    .local v1, "imageRes":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-virtual {p1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRowImageColour()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 133
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 135
    :cond_2
    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 138
    .end local v0    # "color":Ljava/lang/String;
    :cond_3
    sget v3, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private static safeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static setFeatured(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFeatured"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .line 161
    .local v3, "item":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    if-nez p2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 163
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v9, p0, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->mLayoutId:I

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 168
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .local v6, "row":Landroid/view/View;
    :goto_0
    sget v9, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 169
    .local v8, "rowTtile":Landroid/widget/TextView;
    sget v9, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 170
    .local v7, "rowImage":Landroid/widget/ImageView;
    sget v9, Lcom/eventgenie/android/R$id;->progressbar1:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/ui/other/TextProgressBar;

    .line 171
    .local v4, "pbLeft":Lcom/eventgenie/android/ui/other/TextProgressBar;
    sget v9, Lcom/eventgenie/android/R$id;->progressbar2:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/ui/other/TextProgressBar;

    .line 172
    .local v5, "pbRight":Lcom/eventgenie/android/ui/other/TextProgressBar;
    sget v9, Lcom/eventgenie/android/R$id;->actions1:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, "descLeft":Landroid/widget/TextView;
    sget v9, Lcom/eventgenie/android/R$id;->actions2:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    .local v1, "descRight":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRowTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {v7, v3}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->doRowImage(Landroid/widget/ImageView;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V

    .line 180
    invoke-direct {p0, v4, v5, v3}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->doProgressBars(Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V

    .line 181
    invoke-virtual {v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->isFeatured()Z

    move-result v9

    invoke-static {v6, v9}, Lcom/eventgenie/android/adapters/gamification/PlayerComparisonAdapter;->setFeatured(Landroid/view/View;Z)V

    .line 182
    return-object v6

    .line 165
    .end local v0    # "descLeft":Landroid/widget/TextView;
    .end local v1    # "descRight":Landroid/widget/TextView;
    .end local v4    # "pbLeft":Lcom/eventgenie/android/ui/other/TextProgressBar;
    .end local v5    # "pbRight":Lcom/eventgenie/android/ui/other/TextProgressBar;
    .end local v6    # "row":Landroid/view/View;
    .end local v7    # "rowImage":Landroid/widget/ImageView;
    .end local v8    # "rowTtile":Landroid/widget/TextView;
    :cond_0
    move-object v6, p2

    .restart local v6    # "row":Landroid/view/View;
    goto :goto_0
.end method
