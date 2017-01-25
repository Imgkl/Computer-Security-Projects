.class public Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;
.super Ljava/lang/Object;
.source "CommonActionbarLogicBox.java"


# instance fields
.field private mActionBarCurrentColour:Ljava/lang/Integer;

.field private final mActionBarDefaultColour:I

.field private final mActivity:Landroid/app/Activity;

.field private final mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private final mDetailsDefaultColour:I

.field private final mDisableShare:Z

.field private final mGetLiveArtwork:Z

.field private final mIsHideHome:Z

.field private final mIsHome:Z

.field private final mIsLongScreen:Z

.field private final mIsProofer:Z

.field private final mIsProoferAppSelectionActivity:Z

.field private mIsValid:Z

.field private final mIsWhiteText:Z

.field private final mScreenDensity:F

.field private final mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    .line 65
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 66
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mScreenDensity:F

    .line 67
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/eventgenie/android/R$bool;->proofer_available:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsProofer:Z

    .line 68
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsProoferAppSelectionActivity:Z

    .line 69
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getTitleBarColour()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDetailsDefaultColour:I

    .line 70
    iget v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDetailsDefaultColour:I

    iput v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActionBarDefaultColour:I

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isProoferEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mGetLiveArtwork:Z

    .line 72
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->isWhiteText()Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsWhiteText:Z

    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/eventgenie/android/ui/help/UIUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsLongScreen:Z

    .line 76
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 78
    const-string v1, "hide_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHideHome:Z

    .line 79
    const-string v1, "is_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHome:Z

    .line 80
    const-string/jumbo v1, "window_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mWindowTitle:Ljava/lang/String;

    .line 81
    const-string v1, "disable_share"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDisableShare:Z

    .line 88
    :goto_1
    return-void

    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    move v1, v2

    .line 71
    goto :goto_0

    .line 83
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_2
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHideHome:Z

    .line 84
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDisableShare:Z

    .line 85
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHome:Z

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mWindowTitle:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getActionbarCurrentColour()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActionBarCurrentColour:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActionBarCurrentColour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarDefaultColour()I

    move-result v0

    goto :goto_0
.end method

.method public getActionbarDefaultColour()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActionBarDefaultColour:I

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method public getDetailsDefaultColour()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDetailsDefaultColour:I

    return v0
.end method

.method public getScreenDensity()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mScreenDensity:F

    return v0
.end method

.method public getWindowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mWindowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isGetLiveArtwork()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mGetLiveArtwork:Z

    return v0
.end method

.method public isHideHome()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHideHome:Z

    return v0
.end method

.method public isHome()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHome:Z

    return v0
.end method

.method public isLongScreen()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsLongScreen:Z

    return v0
.end method

.method public isProoferAppSelectionActivity()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsProoferAppSelectionActivity:Z

    return v0
.end method

.method public isProoferEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsProofer:Z

    return v0
.end method

.method public isShareDisabled()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mDisableShare:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsValid:Z

    return v0
.end method

.method public isWhiteText()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsWhiteText:Z

    return v0
.end method

.method public setActionbarCurrentColour(I)V
    .locals 1
    .param p1, "colour"    # I

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActionBarCurrentColour:Ljava/lang/Integer;

    .line 164
    return-void
.end method

.method public setIsValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsValid:Z

    .line 168
    return-void
.end method

.method public shouldIHideHome()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHome:Z

    if-nez v1, :cond_0

    .line 173
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->mIsHideHome:Z

    if-nez v1, :cond_0

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method
