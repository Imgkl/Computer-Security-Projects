.class public Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "DashboardGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;
    }
.end annotation


# instance fields
.field private final ICONS_PER_GRID:I

.field private final PADDING_FOR_GRID:I

.field private mActionCallBack:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

.field private mGrid1:Landroid/widget/GridView;

.field private mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

.field private mLatestMessageId:J

.field private mModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgContainer:Landroid/view/View;

.field private final mSyncReceiver:Landroid/content/BroadcastReceiver;

.field private msgAuthor:Landroid/widget/TextView;

.field private msgBody:Landroid/widget/TextView;

.field private msgSubject:Landroid/widget/TextView;

.field private msgTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 91
    const/16 v0, 0x9

    iput v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->ICONS_PER_GRID:I

    .line 92
    const/16 v0, 0x19

    iput v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->PADDING_FOR_GRID:I

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mLatestMessageId:J

    .line 105
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$3;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$3;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mActionCallBack:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgSubject:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgBody:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgAuthor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;
    .param p1, "x1"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mLatestMessageId:J

    return-wide p1
.end method

.method private buildGridUI()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    sget v3, Lcom/eventgenie/android/R$id;->dashboard_window:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 130
    .local v2, "win":Landroid/widget/LinearLayout;
    sget v3, Lcom/eventgenie/android/R$id;->bg_image:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, "bg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v1, v5

    .line 134
    .local v1, "getLiveArtwork":Z
    :goto_0
    sget v3, Lcom/eventgenie/android/R$id;->dashboard_grid_1:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundArtwork()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    .line 138
    sget v3, Lcom/eventgenie/android/R$drawable;->custom_background:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget v6, Lcom/eventgenie/android/R$drawable;->custom_logo:I

    invoke-virtual {v3, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    .line 151
    :goto_2
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-static {p0, v3, v4, v5, v4}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    sget v3, Lcom/eventgenie/android/R$id;->message_subject:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgSubject:Landroid/widget/TextView;

    .line 159
    sget v3, Lcom/eventgenie/android/R$id;->message_timestamp:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgTime:Landroid/widget/TextView;

    .line 160
    sget v3, Lcom/eventgenie/android/R$id;->message_body:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgBody:Landroid/widget/TextView;

    .line 161
    sget v3, Lcom/eventgenie/android/R$id;->message_author:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgAuthor:Landroid/widget/TextView;

    .line 162
    sget v3, Lcom/eventgenie/android/R$id;->dashboard_message_container:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mMsgContainer:Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isLatestMessageDisplayed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mMsgContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v4

    const/16 v5, 0x19

    invoke-static {v5, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isSponsorDisplayed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    new-instance v3, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->showAdvert(Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 183
    :cond_3
    return-void

    .end local v1    # "getLiveArtwork":Z
    :cond_4
    move v1, v4

    .line 131
    goto/16 :goto_0

    .line 140
    .restart local v1    # "getLiveArtwork":Z
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getBackgroundColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getColour()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 147
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private refreshModules()V
    .locals 7

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mModules:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDashboardWidgetFontColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, v6}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->hasWidget(Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;IIIZ)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    .line 196
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 309
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    .line 310
    return-void
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x7b

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
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
    .line 279
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method protected isBackgroundUpdateApplicable()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    sget v1, Lcom/eventgenie/android/R$layout;->activity_dashboard:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->setContentView(I)V

    .line 209
    const/4 v1, 0x0

    sput-boolean v1, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 213
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->buildGridUI()V

    .line 215
    const-class v1, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->refreshModules()V

    .line 217
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->jumpToMultiEventSelector(Ljava/util/List;)V

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    new-instance v1, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;

    invoke-direct {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->downloadDataIfNecessary(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 228
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home_dev:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 238
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 235
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
    .line 243
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    const-class v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 246
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 411
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

    .line 413
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->finish()V

    .line 414
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->startActivity(Landroid/content/Intent;)V

    .line 415
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->refreshModules()V

    .line 202
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
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mModules:Ljava/util/ArrayList;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 252
    return-void
.end method

.method public onMessageClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mLatestMessageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 256
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mLatestMessageId:J

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 263
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->onMenuItemClick(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->showIndicator(Z)V

    .line 273
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 274
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncEntitiesOnDashboard(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 350
    const/4 v1, 0x1

    return v1
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 326
    return-void
.end method
