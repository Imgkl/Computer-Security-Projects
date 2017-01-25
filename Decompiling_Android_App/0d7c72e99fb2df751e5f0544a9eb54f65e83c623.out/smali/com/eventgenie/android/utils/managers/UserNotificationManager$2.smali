.class final Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;
.super Ljava/lang/Object;
.source "UserNotificationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 192
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    .line 193
    .local v1, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 194
    return-void
.end method
