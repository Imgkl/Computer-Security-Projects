.class public Lcom/eventgenie/android/ui/actionbar/GenieAbc;
.super Ljava/lang/Object;
.source "GenieAbc.java"

# interfaces
.implements Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;


# instance fields
.field private final mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

.field private final mActivity:Landroid/support/v7/app/ActionBarActivity;

.field private final mTitleTextColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 5
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ ACTIONBAR: New GenieMobileAbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 62
    new-instance v1, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-direct {v1, p1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    .line 64
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->hasActionbar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->setIsValid(Z)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ ACTIONBAR: CALLING ACTIVITY NOT VALID! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ ACTIONBAR: Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no actionbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isProoferAppSelectionActivity()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 84
    .local v0, "color":I
    const-string v1, "#%06X"

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mTitleTextColor:Ljava/lang/String;

    .line 93
    .end local v0    # "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionbarDefaultColour()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setupActionBarCommon(I)V

    .line 94
    return-void

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1, v4}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->setIsValid(Z)V

    goto/16 :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isWhiteText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    const-string v1, "#FFFFFF"

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mTitleTextColor:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_5
    const-string v1, "#000000"

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mTitleTextColor:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/eventgenie/android/ui/actionbar/GenieAbc;)Landroid/support/v7/app/ActionBarActivity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/ui/actionbar/GenieAbc;)Landroid/support/v7/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method private displayHome(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method

.method private static enableActionbarHomeButton(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v7/app/ActionBarActivity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 300
    return-void
.end method

.method private getActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method private hasActionbar()Z
    .locals 2

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupActionBarCommon(I)V
    .locals 8
    .param p1, "defaultColour"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isProoferAppSelectionActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->proofer_screen_navbar_logo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->lanyon_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setBackgroundColor(I)V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 241
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 242
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isMarkedAsHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isProoferAppSelectionActivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isGetLiveArtwork()Z

    move-result v1

    if-nez v1, :cond_4

    .line 254
    :goto_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isGetLiveArtwork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v7}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->shouldIHideHome()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 260
    invoke-direct {p0, v7}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->displayHome(Z)V

    goto/16 :goto_0

    .line 235
    :cond_3
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setBackgroundColor(I)V

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isProoferEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasAppIconArtwork()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 264
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getScreenDensity()F

    move-result v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isScreenLong()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAppIcon(FZ)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "iconUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    .line 267
    .local v4, "namespace":J
    new-instance v1, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieAbc;Landroid/content/Context;JZ)V

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 282
    .end local v0    # "iconUrl":Ljava/lang/String;
    .end local v4    # "namespace":J
    :cond_7
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->action_bar_padded_logo:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :cond_0
    return-void
.end method

.method public getActionbarCurrentColour()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarCurrentColour()I

    move-result v0

    return v0
.end method

.method protected getActionbarDefaultColour()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarDefaultColour()I

    move-result v0

    return v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    return-object v0
.end method

.method protected getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsTitleColour()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarDefaultColour()I

    move-result v0

    return v0
.end method

.method protected getScreenDensity()F
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getScreenDensity()F

    move-result v0

    return v0
.end method

.method protected getWindowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionbarValid()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    return v0
.end method

.method public isMarkedAsHideHomeButton()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isHideHome()Z

    move-result v0

    return v0
.end method

.method public isMarkedAsHomeActivity()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isHome()Z

    move-result v0

    return v0
.end method

.method protected isProoferAppSelectionActivity()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isProoferAppSelectionActivity()Z

    move-result v0

    return v0
.end method

.method public isProoferEnabled()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isProoferEnabled()Z

    move-result v0

    return v0
.end method

.method protected isScreenLong()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isLongScreen()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "colour"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->setActionbarCurrentColour(I)V

    .line 189
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundToTransparent()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->action_bar_bg_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public varargs setTitle(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "resource"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "string":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v2, p2

    if-eqz v2, :cond_1

    .line 218
    move-object v0, v1

    .line 223
    .local v0, "formattedString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    .end local v0    # "formattedString":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedString":Ljava/lang/String;
    goto :goto_1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mTitleTextColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method
