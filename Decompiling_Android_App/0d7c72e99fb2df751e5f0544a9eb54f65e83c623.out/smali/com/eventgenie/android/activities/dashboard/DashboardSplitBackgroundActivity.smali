.class public Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "DashboardSplitBackgroundActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/julysystems/appx/AppXViewListner;


# instance fields
.field private final ICONS_PER_GRID:I

.field private hasShownBluetoothPrompt:Z

.field private mGotMessages:Z

.field private mGrid1:Landroid/widget/GridView;

.field private mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

.field private mLatestMessageId:J

.field private mLowerBg:Landroid/widget/ImageView;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mUpperBg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 84
    const/16 v0, 0x9

    iput v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->ICONS_PER_GRID:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLatestMessageId:J

    .line 97
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z

    return p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGrid1:Landroid/widget/GridView;

    return-object v0
.end method

.method private buildGridUI()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 115
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_window:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 116
    .local v9, "win":Landroid/widget/LinearLayout;
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_upperBackground:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    .line 117
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_lowerBackground:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_upperBackgroundContainer:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 121
    .local v2, "upperBgContainer":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    new-instance v4, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v7, v3

    .line 143
    .local v7, "getLiveArtwork":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getBackgroundColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getColour()I

    move-result v6

    .line 144
    .local v6, "backgroundColor":I
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getColour()I

    move-result v8

    .line 146
    .local v8, "navBarColor":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundUpperArtwork()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v7, :cond_5

    .line 147
    const-string v0, "^ DASH upperbackground SHOW"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidthInDp()I

    move-result v0

    const/16 v4, 0x258

    if-ne v0, v4, :cond_1

    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    sget v4, Lcom/eventgenie/android/R$drawable;->custom_background_upper:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 154
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundLowerArtwork()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;

    sget v4, Lcom/eventgenie/android/R$drawable;->custom_background_lower:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v4, ""

    invoke-interface {v0, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    if-eqz v7, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, v1, v3, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 179
    :cond_3
    const-string v3, "backgroundUpper"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->addPushDownToLayout(Landroid/content/Context;Lcom/julysystems/appx/AppXViewListner;Landroid/widget/LinearLayout;Ljava/lang/String;J)Lcom/julysystems/appx/AppXPushDown;

    .line 187
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_grid_1:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGrid1:Landroid/widget/GridView;

    .line 189
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isSponsorDisplayed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    const-string v0, "^ DASH: Show advert"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$3;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$3;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->showAdvert(Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 207
    :goto_2
    return-void

    .end local v6    # "backgroundColor":I
    .end local v7    # "getLiveArtwork":Z
    .end local v8    # "navBarColor":I
    :cond_4
    move v7, v1

    .line 139
    goto/16 :goto_0

    .line 157
    .restart local v6    # "backgroundColor":I
    .restart local v7    # "getLiveArtwork":Z
    .restart local v8    # "navBarColor":I
    :cond_5
    if-eqz v7, :cond_6

    .line 158
    const-string v0, "^ DASH upperbackground DO NOT SHOW - getLiveArtwork"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 161
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 164
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ DASH upperbackground DO NOT SHOW ...hasDashboardBackgroundUpperArtwork(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundUpperArtwork()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    :cond_7
    const-string v0, "^ DASH: Do not show advert"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private refreshModules()V
    .locals 7

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mModules:Ljava/util/List;

    .line 212
    new-instance v0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mModules:Ljava/util/List;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDashboardWidgetFontColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, v6}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->hasWidget(Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;IIIZ)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    .line 219
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGrid1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 376
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    .line 377
    return-void
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 381
    const/16 v0, 0x7b

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method protected isBackgroundUpdateApplicable()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 228
    const-string v2, "^ DASH: Starting DashboardSplitBackgroundActivity"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 230
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    sget v2, Lcom/eventgenie/android/R$layout;->activity_dashboard_split_background:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->setContentView(I)V

    .line 232
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->setRequestedOrientation(I)V

    .line 234
    const/4 v2, 0x0

    sput-boolean v2, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    .line 236
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 237
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->buildGridUI()V

    .line 239
    const-class v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->refreshModules()V

    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "resoredData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 245
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "resoredData":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mModules:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->jumpToMultiEventSelector(Ljava/util/List;)V

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v1, "syncFilter":Landroid/content/IntentFilter;
    const-string v2, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v2, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 256
    new-instance v2, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;

    invoke-direct {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->downloadDataIfNecessary(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 257
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home_dev:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 264
    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 272
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    const-class v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 274
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 275
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": UpdateApplySuccessEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->finish()V

    .line 341
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->refreshModules()V

    .line 224
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Exception;

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ APPX: onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 318
    return-void
.end method

.method public onFinishLoading(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ APPX: onReceiveCustomView  - Finished Loading : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mModules:Ljava/util/List;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 280
    return-void
.end method

.method public onMessageClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-wide v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLatestMessageId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 284
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLatestMessageId:J

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 285
    .local v0, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 287
    .end local v0    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->onMenuItemClick(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onReceiveCustomView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method

.method public onReceiveCustomView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lorg/json/JSONObject;

    .prologue
    .line 327
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 297
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messages"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 312
    const/4 v1, 0x1

    return v1
.end method
