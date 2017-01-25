.class Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;
.super Ljava/lang/Object;
.source "EmspBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;->this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;->this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    iget-object v1, v1, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/SetupConfig;->getWifiInstructionsInfopage()J

    move-result-wide v2

    .line 89
    .local v2, "wifiInfoPageId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;->this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    iget-object v1, v1, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 95
    .local v0, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;->this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    iget-object v1, v1, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 101
    .end local v0    # "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;->this$1:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    iget-object v1, v1, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
