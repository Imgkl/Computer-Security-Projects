.class public Lcom/eventgenie/android/activities/developer/WifiTestActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "WifiTestActivity.java"


# instance fields
.field private mEditPassword:Landroid/widget/EditText;

.field private mEditSsid:Landroid/widget/EditText;

.field private mSpinnerSecurity:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public collectSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mSpinnerSecurity:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;)V

    .line 61
    .local v0, "settings":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
    return-object v0
.end method

.method public onAddClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiController;

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/genie_connect/android/utils/helper/WifiController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;J)V

    .line 66
    .local v0, "controller":Lcom/genie_connect/android/utils/helper/WifiController;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->collectSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/helper/WifiController;->upsertNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v6, Lcom/eventgenie/android/R$layout;->activity_wifi_test:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->setContentView(I)V

    .line 33
    sget v6, Lcom/eventgenie/android/R$id;->password:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mEditPassword:Landroid/widget/EditText;

    .line 34
    sget v6, Lcom/eventgenie/android/R$id;->ssid:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mEditSsid:Landroid/widget/EditText;

    .line 35
    sget v6, Lcom/eventgenie/android/R$id;->security:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mSpinnerSecurity:Landroid/widget/Spinner;

    .line 37
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v5, "securityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->values()[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v1

    .local v1, "arr$":[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 41
    .local v4, "sec":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    invoke-virtual {v4}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v4    # "sec":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 47
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mSpinnerSecurity:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 48
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoveClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiController;

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/genie_connect/android/utils/helper/WifiController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;J)V

    .line 71
    .local v0, "controller":Lcom/genie_connect/android/utils/helper/WifiController;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/WifiTestActivity;->collectSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/helper/WifiController;->removeNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    .line 72
    return-void
.end method
