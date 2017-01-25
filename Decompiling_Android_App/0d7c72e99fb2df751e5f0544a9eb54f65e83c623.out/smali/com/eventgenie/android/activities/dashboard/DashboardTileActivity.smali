.class public Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "DashboardTileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DESIGNER_LAYOUT_BASE_LINE_WIDTH:I

.field private mFlowLayout:Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

.field private mGotMessages:Z

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

.field private final mSyncReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 84
    const/16 v0, 0x140

    iput v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->DESIGNER_LAYOUT_BASE_LINE_WIDTH:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z

    .line 90
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->scaleDesignerLayoutAsset(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p3, "x3"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromBitmap(Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p3, "x3"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromDrawable(Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    return-void
.end method

.method private buildUI()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    sget v5, Lcom/eventgenie/android/R$id;->dashboard_window:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 119
    .local v2, "win":Landroid/widget/LinearLayout;
    sget v5, Lcom/eventgenie/android/R$id;->bg_image:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    .local v0, "bg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v1, v4

    .line 123
    .local v1, "getLiveArtwork":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundArtwork()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 125
    sget v5, Lcom/eventgenie/android/R$drawable;->custom_background:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->custom_logo:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    .line 138
    :goto_2
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-static {p0, v5, v3, v4, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isSponsorDisplayed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->showAdvert()V

    .line 146
    :cond_2
    return-void

    .end local v1    # "getLiveArtwork":Z
    :cond_3
    move v1, v3

    .line 120
    goto :goto_0

    .line 127
    .restart local v1    # "getLiveArtwork":Z
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getBackgroundColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getColour()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private createTileViewFromBitmap(Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p3, "counter"    # I

    .prologue
    .line 356
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "tileView":Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;
    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {v0, p3}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->setModuleIndex(I)V

    .line 361
    invoke-virtual {v0, p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DASH: Created new tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mFlowLayout:Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->addView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method private createTileViewFromDrawable(Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p3, "counter"    # I

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DASH: Drawable size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "tileView":Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;
    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-virtual {v0, p3}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->setModuleIndex(I)V

    .line 380
    invoke-virtual {v0, p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DASH: Created new tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mFlowLayout:Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->addView(Landroid/view/View;)V

    .line 390
    :cond_0
    return-void
.end method

.method private populateFlowLayout()V
    .locals 24

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mFlowLayout:Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->removeAllViews()V

    .line 252
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 255
    .local v20, "namespaceToUseForIcons":Ljava/lang/Long;
    const/4 v11, 0x0

    .line 256
    .local v11, "counter":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v6, v4, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v6, "density":F
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/UIUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v7

    .line 258
    .local v7, "isLongScreen":Z
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v23

    .line 260
    .local v23, "smallestWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 262
    .local v19, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIconName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v23

    int-to-long v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getIconOverrideResolution(Ljava/lang/String;FZJ)I

    move-result v22

    .line 265
    .local v22, "resolution":I
    const/16 v17, 0x0

    .line 267
    .local v17, "imgUrl":Ljava/lang/String;
    const/4 v4, -0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIconName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getIconOverrideUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 272
    :cond_0
    if-eqz v17, :cond_2

    .line 274
    const-string v4, "icon_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, "drawableName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v14, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 281
    .local v13, "drawableId":I
    if-nez v13, :cond_1

    .line 285
    new-instance v4, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;ILcom/genie_connect/android/db/config/GenieMobileModule;Ljava/lang/Long;)V

    invoke-virtual {v4, v11}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->setCounter(I)Lcom/genie_connect/android/utils/delegates/Delegates$Action;

    move-result-object v10

    .line 311
    .local v10, "callback":Lcom/genie_connect/android/utils/delegates/Delegates$Action;, "Lcom/genie_connect/android/utils/delegates/Delegates$Action<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5, v10}, Lcom/genie_connect/android/db/config/IconManager;->getIconOverrideBitmap(Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/utils/delegates/Delegates$Action;)V

    .line 332
    .end local v10    # "callback":Lcom/genie_connect/android/utils/delegates/Delegates$Action;, "Lcom/genie_connect/android/utils/delegates/Delegates$Action<Landroid/graphics/Bitmap;>;"
    .end local v13    # "drawableId":I
    .end local v14    # "drawableName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 334
    goto :goto_0

    .line 318
    .restart local v13    # "drawableId":I
    .restart local v14    # "drawableName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v18

    .line 319
    .local v18, "is":Ljava/io/InputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 321
    .local v21, "originalImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->scaleDesignerLayoutAsset(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 323
    .local v16, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v11}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromBitmap(Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    goto :goto_1

    .line 328
    .end local v13    # "drawableId":I
    .end local v14    # "drawableName":Ljava/lang/String;
    .end local v16    # "image":Landroid/graphics/Bitmap;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v21    # "originalImage":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v5, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8, v9, v5}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 329
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1, v11}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromDrawable(Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    goto :goto_1

    .line 335
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "imgUrl":Ljava/lang/String;
    .end local v19    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v22    # "resolution":I
    :cond_3
    return-void
.end method

.method private refreshModules()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mModules:Ljava/util/ArrayList;

    .line 153
    sget v0, Lcom/eventgenie/android/R$id;->dashboard_flowLayout:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mFlowLayout:Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;

    .line 155
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->populateFlowLayout()V

    .line 156
    return-void
.end method

.method private scaleDesignerLayoutAsset(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "asset"    # Landroid/graphics/Bitmap;
    .param p2, "resolution"    # I

    .prologue
    .line 341
    invoke-static {p2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getLogicalDensityForResolution(I)F

    move-result v3

    const/high16 v4, 0x43a00000    # 320.0f

    mul-float v0, v3, v4

    .line 344
    .local v0, "layoutExpectedWidth":F
    invoke-static {p0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v0

    .line 346
    .local v1, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 352
    .local v2, "scaled":Landroid/graphics/Bitmap;
    return-object v2
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 429
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    .line 430
    return-void
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x7b

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
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
    .line 399
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method protected isBackgroundUpdateApplicable()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    instance-of v1, p1, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;

    if-eqz v1, :cond_0

    .line 161
    check-cast p1, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->getModuleIndex()I

    move-result v0

    .line 163
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 167
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 171
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->setRequestedOrientation(I)V

    .line 173
    sget v2, Lcom/eventgenie/android/R$layout;->activity_dashboard_tile_layout:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->setContentView(I)V

    .line 175
    const/4 v2, 0x0

    sput-boolean v2, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 179
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->buildUI()V

    .line 181
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->refreshModules()V

    .line 183
    const-class v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "resoredData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 187
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "resoredData":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z

    .line 190
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v1, "syncFilter":Landroid/content/IntentFilter;
    const-string v2, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->jumpToMultiEventSelector(Ljava/util/List;)V

    .line 199
    new-instance v2, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;

    invoke-direct {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->downloadDataIfNecessary(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 201
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home_dev:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 208
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
    .line 216
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    const-class v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 218
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 438
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

    .line 440
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->finish()V

    .line 441
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->refreshModules()V

    .line 114
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 223
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->onMenuItemClick(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 229
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z

    if-nez v0, :cond_0

    .line 230
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncEntitiesOnDashboard(Landroid/content/Context;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 245
    const/4 v1, 0x1

    return v1
.end method
