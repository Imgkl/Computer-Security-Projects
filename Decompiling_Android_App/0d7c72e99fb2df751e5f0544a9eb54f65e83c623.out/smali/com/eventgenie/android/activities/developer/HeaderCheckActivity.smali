.class public Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;
.super Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;
.source "HeaderCheckActivity.java"


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# instance fields
.field private mActionProvider:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;-><init>()V

    return-void
.end method

.method private getHeaderList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 62
    .local v3, "mDefaultPrefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .end local v3    # "mDefaultPrefs":Landroid/content/SharedPreferences;
    .local v0, "dataVersion":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-direct {v1, p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "dl":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v0, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v2}, Lcom/eventgenie/android/utils/Sorters;->sortPairs(Ljava/util/List;)V

    .line 73
    return-object v2

    .line 66
    .end local v0    # "dataVersion":Ljava/lang/String;
    .end local v1    # "dl":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "dataVersion":Ljava/lang/String;
    goto :goto_0
.end method

.method private populate()V
    .locals 5

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getHeaderList()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v3, "Network Headers"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendSectionLine()V

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 125
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendNewLine()V

    .line 129
    const-string v3, "User Agents"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendSectionLine()V

    .line 131
    const-string v3, "Default"

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "Genie"

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getGmUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "Desktop"

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getChromeBrowserUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->writeToTextView()V

    .line 136
    return-void
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected getMinimumLabelCharCount()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0xf

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Network Header Check"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->populate()V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$menu;->menu_share:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    sget v1, Lcom/eventgenie/android/R$id;->menu_share:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    .local v0, "shareItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->mActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    .line 96
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->mActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    new-instance v2, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v2, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    const-string v3, "Application headers"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Lcom/eventgenie/android/utils/intents/ShareManager;->getShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 103
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
