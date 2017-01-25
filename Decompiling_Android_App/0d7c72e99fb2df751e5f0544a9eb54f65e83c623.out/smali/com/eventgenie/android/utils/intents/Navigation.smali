.class public Lcom/eventgenie/android/utils/intents/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/intents/Navigation$2;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LAUNCH_COUNT:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final ACTIVMETRICS_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final APEX_PREFIX:Ljava/lang/String; = "http://appx/"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/Navigation;->ACTIVITY_LAUNCH_COUNT:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/Navigation;->ACTIVMETRICS_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method private static getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public static goHome(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 104
    return-void
.end method

.method public static goHome(Landroid/app/Activity;Z)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "openMultiEventWidget"    # Z

    .prologue
    .line 114
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 116
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 119
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getHomeActivityIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isWifiPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    :try_start_0
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 126
    .local v3, "manager":Landroid/net/wifi/WifiManager;
    new-instance v4, Lcom/genie_connect/android/utils/helper/WifiController;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-direct {v4, p0, v3, v6, v7}, Lcom/genie_connect/android/utils/helper/WifiController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;J)V

    .line 127
    .local v4, "wifiController":Lcom/genie_connect/android/utils/helper/WifiController;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/utils/helper/WifiController;->action(Lcom/genie_connect/android/db/config/SetupConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v3    # "manager":Landroid/net/wifi/WifiManager;
    .end local v4    # "wifiController":Lcom/genie_connect/android/utils/helper/WifiController;
    :cond_0
    :goto_0
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    const/high16 v5, 0x10a0000

    const v6, 0x10a0001

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 136
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NAVIGATION: Error actioning wifi information "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static goHomeFromBackground(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 145
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 147
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 150
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5, p0, v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getHomeActivityIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    .line 154
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isWifiPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    :try_start_0
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 157
    .local v3, "manager":Landroid/net/wifi/WifiManager;
    new-instance v4, Lcom/genie_connect/android/utils/helper/WifiController;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-direct {v4, p0, v3, v6, v7}, Lcom/genie_connect/android/utils/helper/WifiController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;J)V

    .line 158
    .local v4, "wifiController":Lcom/genie_connect/android/utils/helper/WifiController;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/utils/helper/WifiController;->action(Lcom/genie_connect/android/db/config/SetupConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v3    # "manager":Landroid/net/wifi/WifiManager;
    .end local v4    # "wifiController":Lcom/genie_connect/android/utils/helper/WifiController;
    :cond_0
    :goto_0
    const/high16 v5, 0x30000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NAVIGATION: Error actioning wifi information "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static goToLockout(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/dashboard/ApplicationLockoutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "is_home"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 178
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 179
    return-void
.end method

.method public static navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "navigation"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    if-ne v1, v2, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/eventgenie/android/utils/intents/Navigation$2;->$SwitchMap$com$eventgenie$android$utils$intents$NavigationIntent$NotificationStyle:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 218
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 206
    :pswitch_3
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 212
    :pswitch_4
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    .line 244
    .local v4, "rowId":I
    sget v5, Lcom/eventgenie/android/R$id;->speaker_row:I

    if-ne v4, v5, :cond_0

    .line 246
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 247
    .local v3, "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 323
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-void

    .line 249
    :cond_0
    sget v5, Lcom/eventgenie/android/R$id;->exhibitor_row:I

    if-ne v4, v5, :cond_1

    .line 251
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 252
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 254
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    sget v5, Lcom/eventgenie/android/R$id;->session_row:I

    if-ne v4, v5, :cond_2

    .line 256
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 257
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 259
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    sget v5, Lcom/eventgenie/android/R$id;->product_row:I

    if-ne v4, v5, :cond_3

    .line 261
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 262
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 264
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_3
    sget v5, Lcom/eventgenie/android/R$id;->poi_row:I

    if-ne v4, v5, :cond_4

    .line 266
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 267
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 269
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_4
    sget v5, Lcom/eventgenie/android/R$id;->subsession_row:I

    if-ne v4, v5, :cond_5

    .line 271
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 272
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 274
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_5
    sget v5, Lcom/eventgenie/android/R$id;->note_row:I

    if-ne v4, v5, :cond_6

    .line 276
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 277
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 279
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_6
    sget v5, Lcom/eventgenie/android/R$id;->game_row:I

    if-ne v4, v5, :cond_7

    .line 281
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 282
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 284
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_7
    sget v5, Lcom/eventgenie/android/R$id;->trophy_row:I

    if-ne v4, v5, :cond_8

    .line 286
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 287
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 289
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_8
    sget v5, Lcom/eventgenie/android/R$id;->downloadable_row:I

    if-ne v4, v5, :cond_9

    .line 290
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 291
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 293
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_9
    sget v5, Lcom/eventgenie/android/R$id;->mapzone_row:I

    if-ne v4, v5, :cond_a

    .line 294
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 295
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 297
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_a
    sget v5, Lcom/eventgenie/android/R$id;->mapfacility_row:I

    if-ne v4, v5, :cond_b

    .line 298
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 299
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 301
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_b
    sget v5, Lcom/eventgenie/android/R$id;->favourite_session_row:I

    if-ne v4, v5, :cond_d

    .line 304
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    .line 305
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    const-string v5, "itemTypes"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "itemType":Ljava/lang/String;
    const-string v5, "session"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 307
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .line 312
    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_1
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 309
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_c
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v5, p4, p5, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .restart local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_1

    .line 315
    .end local v0    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "itemType":Ljava/lang/String;
    .end local v3    # "result":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_d
    sget v5, Lcom/eventgenie/android/R$id;->app_row:I

    if-ne v4, v5, :cond_e

    .line 316
    new-instance v1, Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;-><init>(Landroid/app/Activity;)V

    .line 317
    .local v1, "helper":Lcom/eventgenie/android/utils/help/MultiEventHelper;
    invoke-virtual {v1, p4, p5}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->tryToChangeEvent(J)V

    goto/16 :goto_0

    .line 320
    .end local v1    # "helper":Lcom/eventgenie/android/utils/help/MultiEventHelper;
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ Unknown row id clicked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static onMenuItemClick(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 334
    .local v0, "id":I
    sget v2, Lcom/eventgenie/android/R$id;->menu_settings:I

    if-ne v0, v2, :cond_0

    .line 335
    const-class v2, Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    :goto_0
    return v1

    .line 337
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->menu_search:I

    if-ne v0, v2, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_0

    .line 340
    :cond_1
    sget v2, Lcom/eventgenie/android/R$id;->menu_proofer:I

    if-ne v0, v2, :cond_2

    .line 341
    const-class v2, Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 343
    :cond_2
    sget v2, Lcom/eventgenie/android/R$id;->menu_debug:I

    if-ne v0, v2, :cond_3

    .line 344
    const-class v2, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 347
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V
    .locals 22
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v11

    .line 361
    .local v11, "navigationIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 362
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v17

    .line 365
    .local v17, "widget":Lcom/genie_connect/android/db/config/GenieWidget;
    if-eqz v9, :cond_2

    .line 366
    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 367
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 368
    const-string v18, "open_widget_allowed_extra"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 369
    .local v14, "openWidget":Z
    const-string v18, "open_widget_allowed_permission_message_extra"

    sget v19, Lcom/eventgenie/android/R$string;->open_widget_permissions_failure:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "failureOpenWidgetMessage":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 372
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "^ NAVIGATION: User ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] Don\'t have permission to open the widget ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/GenieWidget;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 380
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "failureOpenWidgetMessage":Ljava/lang/String;
    .end local v14    # "openWidget":Z
    :cond_2
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/db/config/GenieWidget;->isOnlineOnly()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 381
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 385
    :cond_3
    if-nez v9, :cond_5

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 388
    .local v10, "intentMessage":Ljava/lang/String;
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 389
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 391
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/intents/Navigation;->showUnimplementedWidgetDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 395
    .end local v10    # "intentMessage":Ljava/lang/String;
    :cond_5
    :try_start_0
    sget-object v18, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 396
    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "entity_id"

    const-wide/16 v20, -0x1

    invoke-virtual/range {v18 .. v21}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 398
    .local v6, "id":J
    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "infopage_type"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "infopageType":Ljava/lang/String;
    const-string v18, "list"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v6    # "id":J
    .end local v8    # "infopageType":Ljava/lang/String;
    :cond_6
    :goto_1
    sget-object v18, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 425
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/intents/Navigation;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppLaunch()Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->openAppLaunchWidget(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieMobileModule;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)V

    goto/16 :goto_0

    .line 403
    .restart local v6    # "id":J
    .restart local v8    # "infopageType":Ljava/lang/String;
    :cond_7
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_8

    .line 404
    :try_start_1
    sget-object v18, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v7}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 407
    :cond_8
    const-string/jumbo v18, "web"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 408
    invoke-virtual {v11}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "remote_html"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 409
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 410
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "http://appx/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 411
    const-string v18, "http://appx/"

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 412
    .local v15, "tag":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/intents/Navigation;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    .line 413
    .local v12, "namespace":J
    move-object/from16 v0, p0

    invoke-static {v0, v15, v12, v13}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->loadAppXFullPage(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 422
    .end local v6    # "id":J
    .end local v8    # "infopageType":Ljava/lang/String;
    .end local v12    # "namespace":J
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 420
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 430
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static setActivMetricsReportingEnabled(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 436
    sget-object v0, Lcom/eventgenie/android/utils/intents/Navigation;->ACTIVMETRICS_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 437
    return-void
.end method

.method private static showUnimplementedWidgetDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Not Implemented"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This feature has not been implemented"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v2, Lcom/eventgenie/android/utils/intents/Navigation$1;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/intents/Navigation$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 449
    return-void
.end method

.method public static startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    .line 481
    if-nez p1, :cond_0

    .line 482
    const-string v6, "^ NAVIGATION: The requested intent is null!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 486
    :cond_0
    sget-object v6, Lcom/eventgenie/android/utils/intents/Navigation;->ACTIVMETRICS_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 487
    sget-object v6, Lcom/eventgenie/android/utils/intents/Navigation;->ACTIVITY_LAUNCH_COUNT:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 488
    .local v2, "res":J
    const-wide/16 v6, 0x5

    rem-long v6, v2, v6

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 489
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    .line 490
    .local v1, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v4

    .line 492
    .local v4, "visitorId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    .line 493
    new-instance v6, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;-><init>(Ljava/lang/String;I)V

    invoke-static {v6}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 500
    .end local v1    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .end local v2    # "res":J
    .end local v4    # "visitorId":J
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NAVIGATION: Could not start intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NAVIGATION: Could not start intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivityCarefully(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 469
    :cond_0
    return-void
.end method

.method public static startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 462
    return-void
.end method
