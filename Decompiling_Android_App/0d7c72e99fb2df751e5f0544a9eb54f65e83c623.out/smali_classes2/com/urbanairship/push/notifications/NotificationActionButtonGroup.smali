.class public Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
.super Ljava/lang/Object;
.source "NotificationActionButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$1;,
        Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;
    }
.end annotation


# instance fields
.field private final actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/NotificationActionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/NotificationActionButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "actionButtons":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/push/notifications/NotificationActionButton;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->actionButtons:Ljava/util/List;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method createAndroidActions(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p3, "notificationId"    # I
    .param p4, "actionsPayload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/urbanairship/push/PushMessage;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "androidActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    const/4 v6, 0x0

    .line 75
    .local v6, "notificationActionJSON":Lorg/json/JSONObject;
    invoke-static {p4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 78
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "notificationActionJSON":Lorg/json/JSONObject;
    .local v7, "notificationActionJSON":Lorg/json/JSONObject;
    move-object v6, v7

    .line 84
    .end local v7    # "notificationActionJSON":Lorg/json/JSONObject;
    .restart local v6    # "notificationActionJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->getNotificationActionButtons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/NotificationActionButton;

    .line 85
    .local v0, "action":Lcom/urbanairship/push/notifications/NotificationActionButton;
    if-nez v6, :cond_1

    const/4 v1, 0x0

    .line 86
    .local v1, "actions":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/urbanairship/push/notifications/NotificationActionButton;->createAndroidNotificationAction(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    .line 87
    .local v2, "androidAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "action":Lcom/urbanairship/push/notifications/NotificationActionButton;
    .end local v1    # "actions":Ljava/lang/String;
    .end local v2    # "androidAction":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 80
    .local v4, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse notification actions payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Lcom/urbanairship/push/notifications/NotificationActionButton;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 90
    .end local v0    # "action":Lcom/urbanairship/push/notifications/NotificationActionButton;
    :cond_2
    return-object v3
.end method

.method public getNotificationActionButtons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/NotificationActionButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->actionButtons:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
