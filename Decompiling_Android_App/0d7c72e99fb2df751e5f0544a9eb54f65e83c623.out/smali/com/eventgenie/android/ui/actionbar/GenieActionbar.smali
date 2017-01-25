.class public Lcom/eventgenie/android/ui/actionbar/GenieActionbar;
.super Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;
.source "GenieActionbar.java"

# interfaces
.implements Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/actionbar/GenieActionbar$10;,
        Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;
    }
.end annotation


# instance fields
.field private final mButtonOverflow:Landroid/widget/ImageButton;

.field private final mButtonProoferOptions:Landroid/widget/ImageButton;

.field private final mFilterCount:Landroid/widget/TextView;

.field private final mFilterFlipper:Landroid/widget/ViewFlipper;

.field private mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

.field private mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 91
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;-><init>(Landroid/app/Activity;I)V

    .line 92
    const/4 v0, 0x1

    .line 94
    .local v0, "valid":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-nez v1, :cond_0

    .line 95
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

    .line 96
    const/4 v0, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
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

    .line 101
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonProoferOptions:Landroid/widget/ImageButton;

    .line 102
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonOverflow:Landroid/widget/ImageButton;

    .line 104
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    .line 105
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterCount:Landroid/widget/TextView;

    .line 106
    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setIsActionbarValid(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbarDefaultColour()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setupActionBarCommon(I)V

    .line 118
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_proofer:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonProoferOptions:Landroid/widget/ImageButton;

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_soft_overflow:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonOverflow:Landroid/widget/ImageButton;

    .line 111
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setupGenericQuickActions()V

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->flipper_title_filter:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    .line 113
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->badge_title_filter:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterCount:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private applyBadgeCount(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "badgeview"    # Landroid/widget/TextView;
    .param p2, "count"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 150
    :cond_0
    if-lez p2, :cond_2

    .line 151
    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    .line 152
    const-string v0, "99+"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 159
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private coloriseViewTree(Landroid/view/ViewGroup;I)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "color"    # I

    .prologue
    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 168
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->btn_title_home:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->title_logo_img:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->btn_title_multievent_return:I

    if-eq v3, v4, :cond_0

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Landroid/widget/ImageButton;

    if-ne v0, v3, :cond_1

    .line 175
    check-cast v2, Landroid/widget/ImageButton;

    .end local v2    # "v":Landroid/view/View;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p2, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    const-class v3, Landroid/widget/Button;

    if-eq v0, v3, :cond_0

    .line 177
    const-class v3, Landroid/widget/ImageView;

    if-ne v0, v3, :cond_2

    .line 178
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "v":Landroid/view/View;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 179
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 180
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->coloriseViewTree(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 184
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method

.method private setTextViewColor(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isWhiteText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setViewVisibility(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private setupActionBarCommon(I)V
    .locals 8
    .param p1, "defaultColour"    # I

    .prologue
    const v3, 0x106000b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferAppSelectionActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    sget v1, Lcom/eventgenie/android/R$drawable;->proofer_screen_navbar_logo:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    .line 441
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->lanyon_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setBackgroundColor(I)V

    .line 442
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setButtonColour(I)V

    .line 448
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isWhiteText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isMarkedAsHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferAppSelectionActivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    invoke-direct {p0, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionProofer(Z)V

    .line 456
    invoke-direct {p0, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionMultiEventReturn(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isGetLiveArtwork()Z

    move-result v1

    if-nez v1, :cond_5

    .line 459
    sget v1, Lcom/eventgenie/android/R$drawable;->custom_logo:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    .line 464
    :goto_3
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isGetLiveArtwork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v7}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->shouldIHideHome()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 470
    invoke-direct {p0, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionHome(Z)V

    goto/16 :goto_0

    .line 444
    :cond_3
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setBackgroundColor(I)V

    .line 445
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 461
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 472
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasAppIconArtwork()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 474
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getScreenDensity()F

    move-result v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isScreenLong()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAppIcon(FZ)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "imgUrlUpper":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    .line 477
    .local v4, "namespace":J
    new-instance v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$9;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$9;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;Landroid/content/Context;JZ)V

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 491
    .end local v0    # "imgUrlUpper":Ljava/lang/String;
    .end local v4    # "namespace":J
    :cond_8
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_title_home:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private setupGenericQuickActions()V
    .locals 3

    .prologue
    .line 499
    new-instance v0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonOverflow:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .line 500
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonOverflow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V

    .line 505
    :cond_0
    return-void
.end method

.method private setupProoferQuickActions()V
    .locals 4

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonProoferOptions:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .line 511
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionOpenProoferPage(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 512
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadLiveData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 513
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadPublishedData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 514
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadSpecificPublish(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 515
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadSpecificPublishDeltasTil(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 516
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionReloadConfig(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 517
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionPreviewSpash(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 518
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionOpenMarketPage(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 519
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionInitialiseSpecificEntities(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 520
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionDebugMenu(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 521
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V

    .line 522
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mButtonProoferOptions:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    :cond_0
    return-void
.end method

.method private showActionHome(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_home:I

    invoke-direct {p0, v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    .line 682
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->title_home_seperator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showActionIndicatorLeft(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->btn_title_home:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    .line 690
    sget v0, Lcom/eventgenie/android/R$id;->title_refresh_progress:I

    invoke-direct {p0, v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    goto :goto_0

    .line 689
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showActionIndicatorRight(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->btn_title_refresh:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    .line 698
    sget v0, Lcom/eventgenie/android/R$id;->title_refresh_progress_right:I

    invoke-direct {p0, v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    goto :goto_0

    .line 697
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showActionMultiEventReturn(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 703
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v5, Lcom/eventgenie/android/R$id;->btn_title_multievent_return:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 707
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v5, Lcom/eventgenie/android/R$id;->title_home_seperator:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 709
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v2

    if-nez v2, :cond_2

    .line 711
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 712
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_home_seperator:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isWhiteText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 720
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x106000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 721
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/eventgenie/android/R$color;->title_separator_dark:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 727
    :goto_1
    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 728
    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 723
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x106000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 724
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/eventgenie/android/R$color;->title_separator_light:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 727
    goto :goto_2

    :cond_5
    move v3, v4

    .line 728
    goto :goto_3
.end method

.method private showActionProofer(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isProoferAppSelectionActivity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_proofer:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 742
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz p1, :cond_3

    .line 743
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    if-nez v1, :cond_2

    .line 744
    invoke-direct {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setupProoferQuickActions()V

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 749
    :cond_3
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private showActionSend(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_send:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 759
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isWhiteText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 765
    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 765
    :cond_2
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method public addOverflowMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    return-void
.end method

.method public applyActionBarButtonImageColour(I)V
    .locals 4
    .param p1, "colour"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 134
    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    check-cast v0, Landroid/widget/ImageButton;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 139
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 140
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic bringToFront()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->bringToFront()V

    return-void
.end method

.method public displayAppropriateIndicator(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->shouldIHideHome()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionIndicatorRight(Z)V

    .line 193
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 194
    sget-object v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionIndicatorLeft(Z)V

    goto :goto_0
.end method

.method public getActionbarCurrentColour()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->getActionbarCurrentColour()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDetailsTitleColour()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->getDetailsTitleColour()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView(I)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isActionbarValid()Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isActionbarValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMarkedAsHideHomeButton()Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isMarkedAsHideHomeButton()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMarkedAsHomeActivity()Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isMarkedAsHomeActivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProoferEnabled()Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isProoferEnabled()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_proofer:I

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupMenuProofer:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_soft_overflow:I

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mPopupOverflow:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    move v2, v3

    .line 332
    :goto_1
    return v2

    .line 222
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/eventgenie/android/utils/help/ProoferUtils;->launchAppMarketIntent(Landroid/content/Context;J)V

    goto :goto_1

    .line 233
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 237
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Reload Live Config"

    const-string v5, "You are about to apply the latest live Config onto the event."

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$2;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$1;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$1;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 257
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Load Live Data"

    const-string v5, "You are about to load the data as they currently appear on the CMS"

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    .restart local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$4;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$4;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$3;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$3;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 280
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Load Publised Data"

    const-string v5, "You are about to load the last published version for this Event"

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    .restart local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$5;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$5;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 302
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 306
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "applyDeltasTil"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 311
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_9
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Reload Specific Entities"

    const-string v5, "You are about to selectively reload entities into the application.\nWarning: This option can break the app!"

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    .restart local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$7;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$7;-><init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 330
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "colour"    # I

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->setActionbarCurrentColour(I)V

    .line 341
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic setBackgroundToTransparent()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->setBackgroundToTransparent()V

    return-void
.end method

.method public setButtonColour(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->coloriseViewTree(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 4
    .param p1, "resource"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_logo_img:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 369
    .local v1, "logo":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_logo:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "layout":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_logo_img:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 358
    .local v1, "logo":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->title_logo:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "layout":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLogoScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->title_logo_img:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public setLogoWidth(Z)V
    .locals 4
    .param p1, "matchParent"    # Z

    .prologue
    const/4 v3, -0x1

    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->title_logo_img:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 393
    .local v0, "logo":Landroid/widget/ImageView;
    if-eqz p1, :cond_1

    .line 394
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 396
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public varargs setTitle(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "resource"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "v":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v1, p2

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(ILandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 538
    :cond_0
    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V
    .locals 3
    .param p1, "action"    # Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;
    .param p2, "show"    # Z

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$10;->$SwitchMap$com$eventgenie$android$ui$actionbar$GenieActionbar$ACTION:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 649
    const/4 v0, 0x0

    .line 653
    .local v0, "viewId":I
    :goto_1
    if-lez v0, :cond_0

    .line 654
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setViewVisibility(IZ)V

    goto :goto_0

    .line 561
    .end local v0    # "viewId":I
    :pswitch_0
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_as_post:I

    .line 562
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 564
    .end local v0    # "viewId":I
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_agenda:I

    .line 565
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 567
    .end local v0    # "viewId":I
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_category:I

    .line 568
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 570
    .end local v0    # "viewId":I
    :pswitch_3
    if-eqz p2, :cond_2

    .line 571
    sget v1, Lcom/eventgenie/android/R$id;->btn_title_contacts:I

    invoke-direct {p0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setTextViewColor(I)V

    .line 573
    :cond_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_contacts:I

    .line 574
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 576
    .end local v0    # "viewId":I
    :pswitch_4
    sget v0, Lcom/eventgenie/android/R$id;->keyword_search:I

    .line 577
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 579
    .end local v0    # "viewId":I
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionIndicatorLeft(Z)V

    goto :goto_0

    .line 582
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionIndicatorRight(Z)V

    goto :goto_0

    .line 585
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionMultiEventReturn(Z)V

    goto :goto_0

    .line 588
    :pswitch_8
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_content_new:I

    .line 589
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 591
    .end local v0    # "viewId":I
    :pswitch_9
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_place_marker:I

    .line 592
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 594
    .end local v0    # "viewId":I
    :pswitch_a
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_profile:I

    .line 595
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 597
    .end local v0    # "viewId":I
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionProofer(Z)V

    goto :goto_0

    .line 600
    :pswitch_c
    sget v0, Lcom/eventgenie/android/R$id;->btn_qrscanner:I

    .line 601
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 603
    .end local v0    # "viewId":I
    :pswitch_d
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_refresh:I

    .line 604
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 606
    .end local v0    # "viewId":I
    :pswitch_e
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_route:I

    .line 607
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 609
    .end local v0    # "viewId":I
    :pswitch_f
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_search:I

    .line 610
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 612
    .end local v0    # "viewId":I
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionSend(Z)V

    goto :goto_0

    .line 615
    :pswitch_11
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_servers:I

    .line 616
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 618
    .end local v0    # "viewId":I
    :pswitch_12
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_settings:I

    .line 619
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 621
    .end local v0    # "viewId":I
    :pswitch_13
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isShareDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    const/4 v0, 0x0

    .restart local v0    # "viewId":I
    goto :goto_1

    .line 624
    .end local v0    # "viewId":I
    :cond_3
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_share:I

    .line 626
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 628
    .end local v0    # "viewId":I
    :pswitch_14
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_toggle:I

    .line 629
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 631
    .end local v0    # "viewId":I
    :pswitch_15
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_view:I

    .line 632
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 634
    .end local v0    # "viewId":I
    :pswitch_16
    sget v0, Lcom/eventgenie/android/R$id;->btn_soft_overflow:I

    .line 635
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 637
    .end local v0    # "viewId":I
    :pswitch_17
    sget v0, Lcom/eventgenie/android/R$id;->btn_tweet:I

    .line 638
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 640
    .end local v0    # "viewId":I
    :pswitch_18
    sget v0, Lcom/eventgenie/android/R$id;->btn_browser_close:I

    .line 641
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 643
    .end local v0    # "viewId":I
    :pswitch_19
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_my_location:I

    .line 644
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 646
    .end local v0    # "viewId":I
    :pswitch_1a
    sget v0, Lcom/eventgenie/android/R$id;->btn_discard:I

    .line 647
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public showActionFilter(ZZI)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "state"    # Z
    .param p3, "badgeCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    :goto_0
    return-void

    .line 663
    :cond_0
    if-eqz p2, :cond_2

    .line 664
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 665
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 673
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterCount:Landroid/widget/TextView;

    invoke-direct {p0, v1, p3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->applyBadgeCount(Landroid/widget/TextView;I)V

    .line 674
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1

    .line 674
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public showRightLogo()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->img_logo_right:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchToggleDrawable()V
    .locals 3

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_title_toggle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 773
    .local v0, "ib":Landroid/widget/ImageButton;
    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_dark_go_to_today:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public toggleFilter(Z)V
    .locals 2
    .param p1, "filtersEnabled"    # Z

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 781
    :cond_0
    if-eqz p1, :cond_1

    .line 782
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->mFilterFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
