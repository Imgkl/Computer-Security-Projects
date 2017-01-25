.class public Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;
.super Ljava/lang/Object;
.source "GenieIntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static displayMessage(Landroid/content/Context;Ljava/lang/String;ZZLcom/eventgenie/android/utils/genieintent/GenieIntentResult;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "silent"    # Z
    .param p3, "error"    # Z
    .param p4, "result"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    .prologue
    .line 98
    if-eqz p2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v1

    if-nez v1, :cond_3

    .line 104
    :cond_2
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 110
    .local v0, "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    :goto_1
    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils$1;->$SwitchMap$com$eventgenie$android$utils$genieintent$GenieIntentAction:[I

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    if-eqz p3, :cond_5

    .line 130
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    .end local v0    # "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    :cond_3
    invoke-virtual {p4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v0

    .restart local v0    # "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    goto :goto_1

    .line 114
    :pswitch_0
    if-eqz p3, :cond_4

    .line 115
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, p1, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 120
    :cond_4
    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, p1, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isThisValidGenieIntentUrl(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "lcase":Ljava/lang/String;
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/genieintents;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .param p2, "silent"    # Z

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    .line 60
    .local v1, "gIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    const/4 v2, 0x0

    .line 63
    .local v2, "message":Ljava/lang/String;
    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils$1;->$SwitchMap$com$eventgenie$android$utils$genieintent$GenieIntentResult$GenieIntentResultStatus:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "error":Z
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_0
    invoke-static {p0, v2, p2, v0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->displayMessage(Landroid/content/Context;Ljava/lang/String;ZZLcom/eventgenie/android/utils/genieintent/GenieIntentResult;)V

    .line 89
    :goto_1
    return-void

    .line 65
    .end local v0    # "error":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 66
    .restart local v0    # "error":Z
    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils$1;->$SwitchMap$com$eventgenie$android$utils$genieintent$GenieIntentAction:[I

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 71
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 72
    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_1

    .line 83
    :cond_0
    const-string v2, "There was an error reading the Intent"

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
