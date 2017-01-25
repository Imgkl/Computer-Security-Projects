.class abstract Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;
.super Ljava/lang/Object;
.source "BaseGenieMobileActionbar.java"

# interfaces
.implements Lcom/eventgenie/android/ui/actionbar/ActionbarBaseControls;


# static fields
.field protected static final ACTIONBAR_LOWER:I = 0x1

.field protected static final ACTIONBAR_UPPER:I = 0x0

.field protected static final TEXT_CANCEL:Ljava/lang/String; = "Cancel"

.field protected static final TEXT_OK:Ljava/lang/String; = "OK"


# instance fields
.field private final mActionbar:Landroid/view/ViewGroup;

.field private final mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActivity:Landroid/app/Activity;

    .line 55
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    goto :goto_0
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_0
.end method

.method protected getActionbar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getActionbarDefaultColour()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarDefaultColour()I

    move-result v0

    return v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    return-object v0
.end method

.method protected getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsTitleColour()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getDetailsDefaultColour()I

    move-result v0

    return v0
.end method

.method protected getScreenDensity()F
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getScreenDensity()F

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWindowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionbarValid()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    return v0
.end method

.method public isMarkedAsHideHomeButton()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isHideHome()Z

    move-result v0

    return v0
.end method

.method public isMarkedAsHomeActivity()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isHome()Z

    move-result v0

    return v0
.end method

.method protected isProoferAppSelectionActivity()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isProoferAppSelectionActivity()Z

    move-result v0

    return v0
.end method

.method public isProoferEnabled()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isProoferEnabled()Z

    move-result v0

    return v0
.end method

.method protected isScreenLong()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isLongScreen()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundToTransparent()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbar:Landroid/view/ViewGroup;

    sget v1, Lcom/eventgenie/android/R$drawable;->action_bar_bg_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected setIsActionbarValid(Z)V
    .locals 1
    .param p1, "yes"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->setIsValid(Z)V

    .line 155
    return-void
.end method

.method protected shouldIHideHome()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->mActionbarCommonLogic:Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->shouldIHideHome()Z

    move-result v0

    return v0
.end method
