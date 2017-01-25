.class public Lcom/eventgenie/android/activities/mapping/MapLandingActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MapLandingActivity.java"


# instance fields
.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private mInteractiveForced:Z

.field private mInteractiveMapsPresent:Z

.field private mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveForced:Z

    .line 68
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveMapsPresent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    return-object v0
.end method

.method private onCreateGenieOverflow()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isHardMenuButtonPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$menu;->maplanding_dev:I

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->addOverflowMenu(I)V

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->OVERFLOW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 114
    :cond_0
    return-void
.end method

.method private setupInteractiveMapsButton(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 188
    :cond_1
    return-void
.end method

.method private setupStaticMapsButton(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isStaticMapsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STATICMAPS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 195
    :cond_1
    return-void
.end method

.method private setupVenueButton()V
    .locals 5

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VENUE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 200
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    .line 77
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mScale:F

    .line 79
    sget v0, Lcom/eventgenie/android/R$layout;->activity_map_landing:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setContentView(I)V

    .line 81
    sget v0, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveMapsPresent:Z

    .line 84
    invoke-direct {p0, v7}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setupInteractiveMapsButton(Z)V

    .line 85
    invoke-direct {p0, v7}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setupStaticMapsButton(Z)V

    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setupVenueButton()V

    .line 87
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->onCreateGenieOverflow()V

    .line 89
    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->showIndicator(ZZ)V

    .line 91
    new-instance v1, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;-><init>(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;Landroid/content/Context;JZ)V

    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    iget v3, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v6}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getBackgroundImageUrl(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void

    :cond_0
    move v0, v7

    .line 82
    goto :goto_0

    :cond_1
    move v6, v7

    .line 91
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isDevModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->maplanding_dev:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mMappingConfig:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveMapsPresent:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveForced:Z

    if-eqz v2, :cond_2

    .line 133
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "map_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 140
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->maps_uninimplemented_msg:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v4, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$2;-><init>(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCustomButton3Click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "map_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/eventgenie/android/R$id;->menu_force_interactive_maps:I

    if-ne v1, v2, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setupInteractiveMapsButton(Z)V

    .line 174
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mInteractiveForced:Z

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/eventgenie/android/R$id;->menu_force_static_maps:I

    if-ne v1, v2, :cond_1

    .line 177
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->setupStaticMapsButton(Z)V

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
