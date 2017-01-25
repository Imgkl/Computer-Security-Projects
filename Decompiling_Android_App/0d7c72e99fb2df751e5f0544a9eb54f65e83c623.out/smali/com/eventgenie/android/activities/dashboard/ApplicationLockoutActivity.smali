.class public Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "ApplicationLockoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$1;,
        Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    .line 56
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v3, Lcom/eventgenie/android/R$layout;->activity_application_lockout:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->setContentView(I)V

    .line 58
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, "multiEventButton":Landroid/widget/Button;
    sget v3, Lcom/eventgenie/android/R$id;->textView1:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getEventExpiryMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->MULTIEVENT_RETURN:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v0

    .line 64
    .local v0, "hasNavBarLogo":Z
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v2

    .line 65
    .local v2, "proofer":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    new-instance v3, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$CleanEvent;-><init>(Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity$1;)V

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 77
    return-void

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 69
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->custom_logo:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
